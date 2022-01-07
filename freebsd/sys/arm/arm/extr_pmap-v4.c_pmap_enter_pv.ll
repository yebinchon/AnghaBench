; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_enter_pv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_enter_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.vm_page = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.pv_entry = type { i64, i32, %struct.TYPE_11__* }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_11__* null, align 8
@PVF_WRITE = common dso_local global i32 0, align 4
@PVF_UNMAN = common dso_local global i32 0, align 4
@pv_list = common dso_local global i32 0, align 4
@pv_plist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pmap_kenter_pv: no pv entries\00", align 1
@PVF_REF = common dso_local global i32 0, align 4
@PVF_MOD = common dso_local global i32 0, align 4
@PVF_WIRED = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_page*, %struct.pv_entry*, %struct.TYPE_11__*, i64, i32)* @pmap_enter_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_enter_pv(%struct.vm_page* %0, %struct.pv_entry* %1, %struct.TYPE_11__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_page*, align 8
  %7 = alloca %struct.pv_entry*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vm_page* %0, %struct.vm_page** %6, align 8
  store %struct.pv_entry* %1, %struct.pv_entry** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_11__* %13)
  %15 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %16 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %5
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %22 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %23 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %22, i32 0, i32 2
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %25 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %29 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @PVF_WRITE, align 4
  %31 = load i32, i32* @PVF_UNMAN, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %34 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %37 = icmp ne %struct.TYPE_11__* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %40 = call i32 @PMAP_LOCK(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %38, %20
  %42 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %43 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %46 = load i32, i32* @pv_list, align 4
  %47 = call i32 @TAILQ_INSERT_HEAD(i32* %44, %struct.pv_entry* %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %51 = load i32, i32* @pv_plist, align 4
  %52 = call i32 @TAILQ_INSERT_HEAD(i32* %49, %struct.pv_entry* %50, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %55 = icmp ne %struct.TYPE_11__* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %58 = call i32 @PMAP_UNLOCK(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %61 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = call %struct.pv_entry* (...) @pmap_get_pv_entry()
  store %struct.pv_entry* %63, %struct.pv_entry** %7, align 8
  %64 = icmp eq %struct.pv_entry* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %5
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %71 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %70, i32 0, i32 2
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %74 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %77 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %79 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %82 = load i32, i32* @pv_list, align 4
  %83 = call i32 @TAILQ_INSERT_HEAD(i32* %80, %struct.pv_entry* %81, i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %87 = load i32, i32* @pv_plist, align 4
  %88 = call i32 @TAILQ_INSERT_HEAD(i32* %85, %struct.pv_entry* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @PVF_REF, align 4
  %91 = load i32, i32* @PVF_MOD, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %95 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %100 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PVF_WIRED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %68
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %68
  %112 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %113 = load i32, i32* @PGA_REFERENCED, align 4
  %114 = call i32 @vm_page_aflag_set(%struct.vm_page* %112, i32 %113)
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_11__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local %struct.pv_entry* @pmap_get_pv_entry(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.vm_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
