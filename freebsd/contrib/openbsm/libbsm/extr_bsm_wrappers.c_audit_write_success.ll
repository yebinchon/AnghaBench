; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"audit_write_success()\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: au_to_subject32() failed\00", align 1
@kAUMakeSubjectTokErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_write_success(i16 signext %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i16 %0, i16* %12, align 2
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i32*, i32** %21, align 8
  %32 = call i32* @au_to_subject32(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %31)
  store i32* %32, i32** %23, align 8
  %33 = load i32*, i32** %23, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %10
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = load i8*, i8** %22, align 8
  %38 = call i32 @syslog(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @kAUMakeSubjectTokErr, align 4
  store i32 %39, i32* %11, align 4
  br label %45

40:                                               ; preds = %10
  %41 = load i16, i16* %12, align 2
  %42 = load i32*, i32** %23, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @audit_write(i16 signext %41, i32* %42, i32* %43, i32 0, i32 0)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32* @au_to_subject32(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @audit_write(i16 signext, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
