; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_failure_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_failure_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"audit_write_failure_self()\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: au_to_me() failed\00", align 1
@kAUMakeSubjectTokErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: au_to_text() failed\00", align 1
@kAUMakeTextTokErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_write_failure_self(i16 signext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %11 = call i32* (...) @au_to_me()
  store i32* %11, i32** %9, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @syslog(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @kAUMakeSubjectTokErr, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @au_to_text(i8* %19)
  store i32* %20, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @au_free_token(i32* %23)
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @syslog(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @kAUMakeTextTokErr, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %18
  %30 = load i16, i16* %5, align 2
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @audit_write(i16 signext %30, i32* %31, i32* %32, i32 -1, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %22, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @au_to_me(...) #1

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
