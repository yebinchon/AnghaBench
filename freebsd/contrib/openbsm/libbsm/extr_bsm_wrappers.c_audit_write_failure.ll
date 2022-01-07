; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"audit_write_failure()\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: au_to_subject32() failed\00", align 1
@kAUMakeSubjectTokErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: au_to_text() failed\00", align 1
@kAUMakeTextTokErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_write_failure(i16 signext %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i16 %0, i16* %13, align 2
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %22, align 4
  %34 = load i32*, i32** %23, align 8
  %35 = call i32* @au_to_subject32(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32* %34)
  store i32* %35, i32** %25, align 8
  %36 = load i32*, i32** %25, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i8*, i8** %24, align 8
  %41 = call i32 @syslog(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @kAUMakeSubjectTokErr, align 4
  store i32 %42, i32* %12, align 4
  br label %60

43:                                               ; preds = %11
  %44 = load i8*, i8** %14, align 8
  %45 = call i32* @au_to_text(i8* %44)
  store i32* %45, i32** %26, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %25, align 8
  %49 = call i32 @au_free_token(i32* %48)
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i8*, i8** %24, align 8
  %52 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @kAUMakeTextTokErr, align 4
  store i32 %53, i32* %12, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i16, i16* %13, align 2
  %56 = load i32*, i32** %25, align 8
  %57 = load i32*, i32** %26, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @audit_write(i16 signext %55, i32* %56, i32* %57, i32 -1, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %47, %38
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32* @au_to_subject32(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32* @au_to_text(i8*) #1

declare dso_local i32 @au_free_token(i32*) #1

declare dso_local i32 @audit_write(i16 signext, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
