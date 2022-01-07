; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_get_user.c_pam_get_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_get_user.c_pam_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_USER = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"user_prompt\00", align 1
@PAM_USER_PROMPT = common dso_local global i32 0, align 4
@user_prompt = common dso_local global i8* null, align 8
@PAM_PROMPT_ECHO_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_get_user(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i32 (...) @ENTER()
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @PAM_USER, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @pam_get_item(i32* %14, i32 %15, i8** %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @PAM_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @PAM_SUCCESS, align 4
  %27 = call i32 @RETURNC(i32 %26)
  br label %28

28:                                               ; preds = %25, %21, %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @openpam_get_option(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @PAM_USER_PROMPT, align 4
  %40 = call i32 @pam_get_item(i32* %38, i32 %39, i8** %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @PAM_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %47, %44, %37
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** @user_prompt, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %53, %50
  store i64 1024, i64* %9, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @openpam_subst(i32* %56, i8* %57, i64* %9, i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @PAM_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = icmp ule i64 %64, 1024
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %66, %63, %55
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @PAM_PROMPT_ECHO_ON, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @pam_prompt(i32* %69, i32 %70, i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PAM_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @RETURNC(i32 %77)
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @PAM_USER, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @pam_set_item(i32* %80, i32 %81, i8* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @FREE(i8* %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @PAM_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @RETURNC(i32 %90)
  br label %92

92:                                               ; preds = %89, %79
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @PAM_USER, align 4
  %95 = load i8**, i8*** %6, align 8
  %96 = call i32 @pam_get_item(i32* %93, i32 %94, i8** %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @RETURNC(i32 %97)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i8* @openpam_get_option(i32*, i8*) #1

declare dso_local i32 @openpam_subst(i32*, i8*, i64*, i8*) #1

declare dso_local i32 @pam_prompt(i32*, i32, i8**, i8*, i8*) #1

declare dso_local i32 @pam_set_item(i32*, i32, i8*) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
