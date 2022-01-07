; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_bsize = common dso_local global i32 0, align 4
@fsmodified = common dso_local global i32 0, align 4
@resolved = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"WRITE BLK\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"THE FOLLOWING SECTORS COULD NOT BE WRITTEN:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %jd,\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blwrite(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %67

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @dev_bsize, align 4
  %18 = load i32, i32* %11, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @pwrite(i32 %20, i8* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* @fsmodified, align 4
  br label %67

28:                                               ; preds = %15
  store i64 0, i64* @resolved, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rwerror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %57, %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @dev_bsize, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @pwrite(i32 %38, i8* %39, i32 %40, i32 %43)
  %45 = load i32, i32* @dev_bsize, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @dev_bsize, align 4
  %52 = sdiv i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %47, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @dev_bsize, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @dev_bsize, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %10, align 8
  br label %33

65:                                               ; preds = %33
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %27, %14
  ret void
}

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @rwerror(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
