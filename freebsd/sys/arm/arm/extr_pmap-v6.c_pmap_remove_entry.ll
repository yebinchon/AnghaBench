; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.md_page = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32)* @pmap_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_entry(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_page*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @RA_WLOCKED, align 4
  %9 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pmap_pvh_free(%struct.TYPE_7__* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i64 @TAILQ_EMPTY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PG_FICTITIOUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %28)
  %30 = call %struct.md_page* @pa_to_pvh(i32 %29)
  store %struct.md_page* %30, %struct.md_page** %7, align 8
  %31 = load %struct.md_page*, %struct.md_page** %7, align 8
  %32 = getelementptr inbounds %struct.md_page, %struct.md_page* %31, i32 0, i32 0
  %33 = call i64 @TAILQ_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* @PGA_WRITEABLE, align 4
  %38 = call i32 @vm_page_aflag_clear(%struct.TYPE_6__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %20, %3
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @pmap_pvh_free(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
