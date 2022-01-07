; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_check_owner_perms.c_openpam_check_desc_owner_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_check_owner_perms.c_openpam_check_desc_owner_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@errno = common dso_local global i32 0, align 4
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: not a regular file\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: insecure ownership or permissions\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_check_desc_owner_perms(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = call i64 (...) @geteuid()
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @fstat(i32 %11, %struct.stat* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @PAM_LOG_ERROR, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @openpam_log(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @S_ISREG(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @PAM_LOG_ERROR, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @openpam_log(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %54

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @S_IWGRP, align 4
  %44 = load i32, i32* @S_IWOTH, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40, %35
  %49 = load i32, i32* @PAM_LOG_ERROR, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @openpam_log(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EPERM, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %25, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @openpam_log(i32, i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
