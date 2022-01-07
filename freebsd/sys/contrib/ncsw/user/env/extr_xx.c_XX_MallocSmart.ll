; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_MallocSmart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_MallocSmart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XX_MallocSmartLock = common dso_local global i32 0, align 4
@MALLOCSMART_SLICES = common dso_local global i64 0, align 8
@XX_MallocSmartPool = common dso_local global i64 0, align 8
@MALLOCSMART_SLICE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @XX_MallocSmart(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @MALLOCSMART_SIZE_TO_SLICE(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @MALLOCSMART_SIZE_TO_SLICE(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = call i32 @mtx_lock(i32* @XX_MallocSmartLock)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @MALLOCSMART_SLICES, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @XX_MallocSmartMapCheck(i32 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @XX_MallocSmartMapSet(i32 %27, i64 %28)
  %30 = load i64, i64* @XX_MallocSmartPool, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MALLOCSMART_SLICE_SIZE, align 4
  %33 = mul i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %8, align 8
  br label %43

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %14

43:                                               ; preds = %26, %14
  %44 = call i32 @mtx_unlock(i32* @XX_MallocSmartLock)
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i8*
  ret i8* %46
}

declare dso_local i64 @MALLOCSMART_SIZE_TO_SLICE(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @XX_MallocSmartMapCheck(i32, i64) #1

declare dso_local i32 @XX_MallocSmartMapSet(i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
