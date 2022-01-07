; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr___vdso_gettc.c___vdso_gettc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr___vdso_gettc.c___vdso_gettc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_timehands = type { i32, i64, i32 }

@HPET_DEV_MAP_MAX = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@hpet_dev_map = common dso_local global i32* null, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@hyperv_ref_tsc = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vdso_gettc(%struct.vdso_timehands* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdso_timehands*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.vdso_timehands* %0, %struct.vdso_timehands** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %9 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %65 [
    i32 128, label %11
    i32 130, label %24
  ]

11:                                               ; preds = %2
  %12 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %13 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %18 = call i64 @__vdso_gettc_rdtsc_low(%struct.vdso_timehands* %17)
  br label %21

19:                                               ; preds = %11
  %20 = call i64 (...) @__vdso_rdtsc32()
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i64 [ %18, %16 ], [ %20, %19 ]
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %26 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @HPET_DEV_MAP_MAX, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOSYS, align 4
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %24
  %34 = load i32*, i32** @hpet_dev_map, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = bitcast i32* %36 to i64*
  %38 = call i64 @atomic_load_acq_ptr(i64* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @__vdso_init_hpet(i64 %43)
  %45 = load i32*, i32** @hpet_dev_map, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = call i64 @atomic_load_acq_ptr(i64* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** @MAP_FAILED, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @ENOSYS, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to i64*
  %63 = load volatile i64, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %67

65:                                               ; preds = %2
  %66 = load i32, i32* @ENOSYS, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %57, %55, %31, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @__vdso_gettc_rdtsc_low(%struct.vdso_timehands*) #1

declare dso_local i64 @__vdso_rdtsc32(...) #1

declare dso_local i64 @atomic_load_acq_ptr(i64*) #1

declare dso_local i32 @__vdso_init_hpet(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
