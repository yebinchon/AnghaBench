; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_setenv.c_pam_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_setenv.c_pam_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@PAM_BUF_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_setenv(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 (...) @ENTER()
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32* @strchr(i8* %18, i8 signext 61)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %24 = call i32 @RETURNC(i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i64 @openpam_findenv(i32* %29, i8* %30, i32 %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @PAM_SUCCESS, align 4
  %37 = call i32 @RETURNC(i32 %36)
  br label %38

38:                                               ; preds = %35, %28, %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @PAM_BUF_ERR, align 4
  %45 = call i32 @RETURNC(i32 %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @pam_putenv(i32* %47, i8* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @FREE(i8* %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @RETURNC(i32 %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i64 @openpam_findenv(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @pam_putenv(i32*, i8*) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
