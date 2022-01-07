; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.pmap_pkru_range = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PT_X86 = common dso_local global i64 0, align 8
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@AMD64_PKRU_EXCL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pmap_pkru_ranges_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMD64_PKRU_PERSIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* @pmap_pkru_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pkru_assign(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pmap_pkru_range*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PT_X86, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load i32, i32* @cpu_stdext_feature2, align 4
  %25 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @AMD64_PKRU_EXCL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rangeset_check_empty(i32* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EBUSY, align 4
  store i32 %42, i32* %6, align 4
  br label %74

43:                                               ; preds = %34, %5
  %44 = load i32, i32* @pmap_pkru_ranges_zone, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = call %struct.pmap_pkru_range* @uma_zalloc(i32 %44, i32 %45)
  store %struct.pmap_pkru_range* %46, %struct.pmap_pkru_range** %12, align 8
  %47 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %12, align 8
  %48 = icmp eq %struct.pmap_pkru_range* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %74

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %12, align 8
  %54 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @AMD64_PKRU_PERSIST, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %12, align 8
  %59 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %12, align 8
  %65 = call i32 @rangeset_insert(i32* %61, i32 %62, i32 %63, %struct.pmap_pkru_range* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load i32, i32* @pmap_pkru_ranges_zone, align 4
  %70 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %12, align 8
  %71 = call i32 @uma_zfree(i32 %69, %struct.pmap_pkru_range* %70)
  br label %72

72:                                               ; preds = %68, %51
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %49, %41
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @rangeset_check_empty(i32*, i32, i32) #1

declare dso_local %struct.pmap_pkru_range* @uma_zalloc(i32, i32) #1

declare dso_local i32 @rangeset_insert(i32*, i32, i32, %struct.pmap_pkru_range*) #1

declare dso_local i32 @uma_zfree(i32, %struct.pmap_pkru_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
