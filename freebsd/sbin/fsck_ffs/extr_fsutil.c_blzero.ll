; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blzero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blzero.zero = internal global i8* null, align 8
@ZEROBUFSIZE = common dso_local global i32 0, align 4
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot allocate buffer pool\00", align 1
@dev_bsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"SEEK BLK\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WRITE BLK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blzero(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3
  %13 = load i8*, i8** @blzero.zero, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, i32* @ZEROBUFSIZE, align 4
  %17 = call i8* @calloc(i32 %16, i32 1)
  store i8* %17, i8** @blzero.zero, align 8
  %18 = load i8*, i8** @blzero.zero, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EEXIT, align 4
  %22 = call i32 @errx(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @dev_bsize, align 8
  %27 = mul nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @lseek(i32 %28, i64 %29, i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @rwerror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* @ZEROBUFSIZE, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @MIN(i32 %40, i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** @blzero.zero, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @write(i32 %43, i8* %44, i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @rwerror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @dev_bsize, align 8
  %55 = sdiv i64 %53, %54
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %36

61:                                               ; preds = %11, %36
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @rwerror(i8*, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
