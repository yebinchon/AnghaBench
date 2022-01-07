; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_pv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_entry = type { i64, i64 }
%struct.vm_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@pv_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pv_entry* (%struct.vm_page*, i64, i64)* @pmap_remove_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pv_entry* @pmap_remove_pv(%struct.vm_page* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pv_entry*, align 8
  store %struct.vm_page* %0, %struct.vm_page** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @RA_WLOCKED, align 4
  %9 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %8)
  %10 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %11 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call %struct.pv_entry* @TAILQ_FIRST(i32* %12)
  store %struct.pv_entry* %13, %struct.pv_entry** %7, align 8
  br label %14

14:                                               ; preds = %34, %3
  %15 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %16 = icmp ne %struct.pv_entry* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %19 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %25 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %33 = call i32 @pmap_nuke_pv(%struct.vm_page* %30, i64 %31, %struct.pv_entry* %32)
  br label %38

34:                                               ; preds = %23, %17
  %35 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %36 = load i32, i32* @pv_list, align 4
  %37 = call %struct.pv_entry* @TAILQ_NEXT(%struct.pv_entry* %35, i32 %36)
  store %struct.pv_entry* %37, %struct.pv_entry** %7, align 8
  br label %14

38:                                               ; preds = %29, %14
  %39 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  %40 = icmp eq %struct.pv_entry* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %43 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %50 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %41, %38
  %53 = load %struct.pv_entry*, %struct.pv_entry** %7, align 8
  ret %struct.pv_entry* %53
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local %struct.pv_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @pmap_nuke_pv(%struct.vm_page*, i64, %struct.pv_entry*) #1

declare dso_local %struct.pv_entry* @TAILQ_NEXT(%struct.pv_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
