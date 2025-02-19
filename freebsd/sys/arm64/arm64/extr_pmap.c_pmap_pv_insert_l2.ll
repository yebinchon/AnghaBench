; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pv_insert_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pv_insert_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }
%struct.md_page = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.rwlock**)* @pmap_pv_insert_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pv_insert_l2(i32 %0, i32 %1, i32 %2, i32 %3, %struct.rwlock** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rwlock**, align 8
  %12 = alloca %struct.md_page*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.rwlock** %4, %struct.rwlock*** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load %struct.rwlock**, %struct.rwlock*** %11, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi %struct.rwlock** [ null, %23 ], [ %25, %24 ]
  %28 = call %struct.TYPE_4__* @get_pv_entry(i32 %18, %struct.rwlock** %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %13, align 8
  %29 = icmp eq %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %53

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ATTR_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %14, align 4
  %39 = load %struct.rwlock**, %struct.rwlock*** %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.md_page* @pa_to_pvh(i32 %42)
  store %struct.md_page* %43, %struct.md_page** %12, align 8
  %44 = load %struct.md_page*, %struct.md_page** %12, align 8
  %45 = getelementptr inbounds %struct.md_page, %struct.md_page* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = load i32, i32* @pv_next, align 4
  %48 = call i32 @TAILQ_INSERT_TAIL(i32* %45, %struct.TYPE_4__* %46, i32 %47)
  %49 = load %struct.md_page*, %struct.md_page** %12, align 8
  %50 = getelementptr inbounds %struct.md_page, %struct.md_page* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %31, %30
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local %struct.TYPE_4__* @get_pv_entry(i32, %struct.rwlock**) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
