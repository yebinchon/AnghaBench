; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_2mpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_2mpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ATTR_DEFAULT = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@DEVICE_MEMORY = common dso_local global i64 0, align 8
@ATTR_XN = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@ATTR_AP_USER = common dso_local global i32 0, align 4
@ATTR_PXN = common dso_local global i32 0, align 4
@ATTR_UXN = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@ATTR_nG = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_6__*, i32, %struct.rwlock**)* @pmap_enter_2mpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_2mpage(i64 %0, i64 %1, %struct.TYPE_6__* %2, i32 %3, %struct.rwlock** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rwlock**, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rwlock** %4, %struct.rwlock*** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @PMAP_LOCK_ASSERT(i64 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %15)
  %17 = load i32, i32* @ATTR_DEFAULT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ATTR_IDX(i64 %22)
  %24 = or i32 %18, %23
  %25 = load i32, i32* @ATTR_AP_RO, align 4
  %26 = call i32 @ATTR_AP(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @L2_BLOCK, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VPO_UNMANAGED, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @ATTR_AF, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %36, %5
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DEVICE_MEMORY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %44
  %57 = load i32, i32* @ATTR_XN, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @ATTR_AP_USER, align 4
  %66 = call i32 @ATTR_AP(i32 %65)
  %67 = load i32, i32* @ATTR_PXN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @ATTR_UXN, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @kernel_pmap, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @ATTR_nG, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %88 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.rwlock**, %struct.rwlock*** %10, align 8
  %93 = call i64 @pmap_enter_l2(i64 %84, i64 %85, i32 %86, i32 %91, i32* null, %struct.rwlock** %92)
  %94 = load i64, i64* @KERN_SUCCESS, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  ret i32 %96
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @ATTR_IDX(i64) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i64 @pmap_enter_l2(i64, i64, i32, i32, i32*, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
