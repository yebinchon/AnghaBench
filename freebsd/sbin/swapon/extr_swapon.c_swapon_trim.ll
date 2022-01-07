; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swapon_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swapon_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Cannot stat %s\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ioctl(DIOCGMEDIASIZE)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s has an invalid file type\00", align 1
@BBSIZE = common dso_local global i64 0, align 8
@DIOCGDELETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ioctl(DIOCGDELETE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @swapon_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swapon_trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [2 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @fstat(i32 %17, %struct.stat* %3)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %48

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @S_ISCHR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %39 = call i64 @ioctl(i32 %37, i32 %38, i64* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  br label %47

44:                                               ; preds = %31
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i64, i64* @BBSIZE, align 8
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %49, i64* %50, align 16
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @BBSIZE, align 8
  %53 = sub nsw i64 %51, %52
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DIOCGDELETE, align 4
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %58 = call i64 @ioctl(i32 %55, i32 %56, i64* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @swapon(i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @swapon(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
