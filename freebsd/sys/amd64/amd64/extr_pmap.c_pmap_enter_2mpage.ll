; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_2mpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_2mpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PG_U = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_6__*, i32, %struct.rwlock**)* @pmap_enter_2mpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_2mpage(i32 %0, i64 %1, %struct.TYPE_6__* %2, i32 %3, %struct.rwlock** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rwlock**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rwlock** %4, %struct.rwlock*** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PMAP_LOCK_ASSERT(i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pmap_valid_bit(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pmap_cache_bits(i32 %20, i32 %24, i32 1)
  %26 = or i32 %19, %25
  %27 = load i32, i32* @PG_PS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VPO_UNMANAGED, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load i32, i32* @PG_MANAGED, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @pg_nx, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @PG_U, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %63 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.rwlock**, %struct.rwlock*** %10, align 8
  %68 = call i64 @pmap_enter_pde(i32 %59, i64 %60, i32 %61, i32 %66, i32* null, %struct.rwlock** %67)
  %69 = load i64, i64* @KERN_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i64 @pmap_enter_pde(i32, i64, i32, i32, i32*, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
