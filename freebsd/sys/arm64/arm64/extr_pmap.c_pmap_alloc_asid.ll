; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_asid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@asid_set_mutex = common dso_local global i32 0, align 4
@asid_epoch = common dso_local global i64 0, align 8
@asid_set = common dso_local global i32 0, align 4
@asid_next = common dso_local global i32 0, align 4
@asid_set_size = common dso_local global i32 0, align 4
@ASID_FIRST_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ASID allocation failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @pmap_alloc_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_alloc_asid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 @mtx_lock_spin(i32* @asid_set_mutex)
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @COOKIE_TO_EPOCH(i32 %7)
  %9 = load i64, i64* @asid_epoch, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @asid_set, align 4
  %14 = load i32, i32* @asid_next, align 4
  %15 = load i32, i32* @asid_set_size, align 4
  %16 = call i32 @bit_ffc_at(i32 %13, i32 %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load i32, i32* @asid_set, align 4
  %21 = load i32, i32* @ASID_FIRST_AVAILABLE, align 4
  %22 = load i32, i32* @asid_next, align 4
  %23 = call i32 @bit_ffc_at(i32 %20, i32 %21, i32 %22, i32* %3)
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = call i32 (...) @pmap_reset_asid_set()
  %28 = load i32, i32* @asid_set, align 4
  %29 = load i32, i32* @ASID_FIRST_AVAILABLE, align 4
  %30 = load i32, i32* @asid_set_size, align 4
  %31 = call i32 @bit_ffc_at(i32 %28, i32 %29, i32 %30, i32* %3)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %26, %19
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* @asid_set, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @bit_set(i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @asid_next, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* @asid_epoch, align 8
  %45 = call i32 @COOKIE_FROM(i32 %43, i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %11
  %49 = call i32 @mtx_unlock_spin(i32* @asid_set_mutex)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @COOKIE_TO_EPOCH(i32) #1

declare dso_local i32 @bit_ffc_at(i32, i32, i32, i32*) #1

declare dso_local i32 @pmap_reset_asid_set(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bit_set(i32, i32) #1

declare dso_local i32 @COOKIE_FROM(i32, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
