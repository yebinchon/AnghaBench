; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_check_owner_perms.c_openpam_check_path_owner_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_check_owner_perms.c_openpam_check_path_owner_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: not a regular file\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: insecure ownership or permissions\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_check_path_owner_perms(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 1, i32* %11, align 4
  store i64 0, i64* %4, align 8
  %17 = call i64 (...) @geteuid()
  store i64 %17, i64* %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @realpath(i8* %18, i8* %16)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %94

22:                                               ; preds = %1
  %23 = call i32 @strlen(i8* %16)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %92, %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %24
  %28 = call i64 @stat(i8* %16, %struct.stat* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* @errno, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @PAM_LOG_ERROR, align 4
  %37 = call i32 @openpam_log(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* @errno, align 4
  br label %39

39:                                               ; preds = %34, %30
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %94

40:                                               ; preds = %27
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @PAM_LOG_ERROR, align 4
  %50 = call i32 @openpam_log(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %94

52:                                               ; preds = %43, %40
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %57, %52
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @S_IWGRP, align 4
  %66 = load i32, i32* @S_IWOTH, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62, %57
  %71 = load i32, i32* @PAM_LOG_ERROR, align 4
  %72 = call i32 @openpam_log(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %73 = load i32, i32* @EPERM, align 4
  store i32 %73, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %94

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %16, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 47
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i1 [ false, %75 ], [ %85, %79 ]
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %16, i64 %90
  store i8 0, i8* %91, align 1
  br label %75

92:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %24

93:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %70, %48, %39, %21
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @geteuid(...) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @openpam_log(i32, i8*, i8*) #2

declare dso_local i32 @S_ISREG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
