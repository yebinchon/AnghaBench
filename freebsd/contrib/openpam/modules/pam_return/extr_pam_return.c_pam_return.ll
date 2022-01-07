; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/modules/pam_return/extr_pam_return.c_pam_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/modules/pam_return/extr_pam_return.c_pam_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"missing error parameter\00", align 1
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@PAM_NUM_ERRORS = common dso_local global i64 0, align 8
@pam_err_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid error code '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8**)* @pam_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pam_return(i32* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i8**, i8*** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @openpam_get_option(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %4
  %26 = load i32, i32* @PAM_LOG_ERROR, align 4
  %27 = call i32 (i32, i8*, ...) @openpam_log(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  store i32 %28, i32* %5, align 4
  br label %77

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strtol(i8* %30, i8** %11, i32 10)
  store i64 %31, i64* %12, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @INT_MIN, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @INT_MAX, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %77

50:                                               ; preds = %43, %39
  br label %72

51:                                               ; preds = %34, %29
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @PAM_NUM_ERRORS, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** @pam_err_name, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @strcmp(i8* %57, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %77

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %52

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* @PAM_LOG_ERROR, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (i32, i8*, ...) @openpam_log(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %64, %47, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i8* @openpam_get_option(i32*, i8*) #1

declare dso_local i32 @openpam_log(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
