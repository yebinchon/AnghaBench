; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pv_insert_pte1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pv_insert_pte1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i64 0, align 8
@pv_entry_high_water = common dso_local global i64 0, align 8
@pv_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @pmap_pv_insert_pte1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pv_insert_pte1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.md_page*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @RA_WLOCKED, align 4
  %14 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* @pv_entry_count, align 8
  %24 = load i64, i64* @pv_entry_high_water, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_4__* @get_pv_entry(i32 %27, i32 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %11, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %22
  store i32 0, i32* %5, align 4
  br label %44

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pte1_pa(i32 %36)
  %38 = call %struct.md_page* @pa_to_pvh(i32 %37)
  store %struct.md_page* %38, %struct.md_page** %10, align 8
  %39 = load %struct.md_page*, %struct.md_page** %10, align 8
  %40 = getelementptr inbounds %struct.md_page, %struct.md_page* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = load i32, i32* @pv_next, align 4
  %43 = call i32 @TAILQ_INSERT_TAIL(i32* %40, %struct.TYPE_4__* %41, i32 %42)
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %31
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @get_pv_entry(i32, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @pte1_pa(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
