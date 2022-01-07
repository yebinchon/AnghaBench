; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"pmap_release: pmap resident count %ld != 0\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"pmap_release: pmap has reserved page table page(s)\00", align 1
@asid_set_mutex = common dso_local global i32 0, align 4
@asid_epoch = common dso_local global i64 0, align 8
@ASID_FIRST_AVAILABLE = common dso_local global i32 0, align 4
@asid_set_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"pmap_release: pmap cookie has out-of-range asid\00", align 1
@asid_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_release(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %10, i8* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = call i32 @vm_radix_is_empty(i32* %18)
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @mtx_lock_spin(i32* @asid_set_mutex)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @COOKIE_TO_EPOCH(i32 %24)
  %26 = load i64, i64* @asid_epoch, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @COOKIE_TO_ASID(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ASID_FIRST_AVAILABLE, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @asid_set_size, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i1 [ false, %28 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @asid_set, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @bit_clear(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %1
  %48 = call i32 @mtx_unlock_spin(i32* @asid_set_mutex)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PHYS_TO_VM_PAGE(i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @vm_page_unwire_noq(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @vm_page_free_zero(i32 %55)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_radix_is_empty(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @COOKIE_TO_EPOCH(i32) #1

declare dso_local i32 @COOKIE_TO_ASID(i32) #1

declare dso_local i32 @bit_clear(i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
