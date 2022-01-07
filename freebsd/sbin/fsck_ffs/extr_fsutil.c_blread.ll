; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_blread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_bsize = common dso_local global i32 0, align 4
@bkgrdflag = common dso_local global i64 0, align 8
@totalreads = common dso_local global i32 0, align 4
@diskreads = common dso_local global i32 0, align 4
@surrender = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CANNOT READ_BLK: %ld\00", align 1
@EEXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ABORTING DUE TO READ ERRORS\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"READ BLK\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"THE FOLLOWING DISK SECTORS COULD NOT BE READ:\00", align 1
@secsize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" %jd (%jd),\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %jd,\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@resolved = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blread(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* @dev_bsize, align 4
  %16 = load i32, i32* %13, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* @bkgrdflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 (...) @slowio_start()
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* @totalreads, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @totalreads, align 4
  %25 = load i32, i32* @diskreads, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @diskreads, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @pread(i32 %27, i8* %28, i32 %30, i32 %31)
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load i64, i64* @bkgrdflag, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @slowio_end()
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, i32* %5, align 4
  br label %122

42:                                               ; preds = %22
  %43 = load i64, i64* @surrender, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @pfatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EEXIT, align 4
  %50 = call i32 @errx(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rwerror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %45
  store i32 0, i32* %12, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @memset(i8* %55, i32 0, i64 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %107, %54
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @secsize, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @pread(i32 %66, i8* %67, i32 %68, i32 %71)
  %73 = load i32, i32* @secsize, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %65
  %76 = load i32, i32* @secsize, align 4
  %77 = load i32, i32* @dev_bsize, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, i32* @dev_bsize, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @dev_bsize, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @secsize, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @dev_bsize, align 4
  %93 = sdiv i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %94)
  br label %103

96:                                               ; preds = %79, %75
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @dev_bsize, align 4
  %100 = sdiv i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %82
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103, %65
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @secsize, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @secsize, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %10, align 8
  br label %60

115:                                              ; preds = %60
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i64 0, i64* @resolved, align 8
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %41
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @slowio_start(...) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @slowio_end(...) #1

declare dso_local i32 @pfatal(i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @rwerror(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
