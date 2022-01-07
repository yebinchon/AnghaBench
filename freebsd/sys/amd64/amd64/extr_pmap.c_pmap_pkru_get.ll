; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.pmap_pkru_range = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PT_X86 = common dso_local global i64 0, align 8
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @pmap_pkru_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pkru_get(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pmap_pkru_range*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_4__* %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PT_X86, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @cpu_stdext_feature2, align 4
  %17 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.pmap_pkru_range* @rangeset_lookup(i32* %27, i64 %28)
  store %struct.pmap_pkru_range* %29, %struct.pmap_pkru_range** %6, align 8
  %30 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %6, align 8
  %31 = icmp ne %struct.pmap_pkru_range* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %6, align 8
  %34 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @X86_PG_PKU(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.pmap_pkru_range* @rangeset_lookup(i32*, i64) #1

declare dso_local i32 @X86_PG_PKU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
