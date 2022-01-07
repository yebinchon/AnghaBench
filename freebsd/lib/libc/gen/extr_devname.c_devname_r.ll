; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_devname.c_devname_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_devname.c_devname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"#NODEV\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kern.devname\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"#%c:%#jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devname_r(i64 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @NODEV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @S_ISCHR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @S_ISBLK(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @strlcpy(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %5, align 8
  br label %55

28:                                               ; preds = %19, %15
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @S_ISCHR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @sysctlbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %35, i64* %11, i64* %6, i32 8)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %5, align 8
  br label %55

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @S_ISCHR(i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 67, i32 66
  %50 = trunc i32 %49 to i8
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %50, i32 %52)
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %42, %39, %23
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i64*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
