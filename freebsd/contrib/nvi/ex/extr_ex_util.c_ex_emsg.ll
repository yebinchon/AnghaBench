; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_util.c_ex_emsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_util.c_ex_emsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"168|Buffer %s is empty\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"144|%s: expanded into too many file names\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"283|The %s command requires the ex terminal interface\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"272|That form of %s requires the ex terminal interface\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"274|Command failed, no file read in yet.\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"173|The %s command requires that a file have already been read in\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"171|No previous buffer to execute\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"172|No previous regular expression\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"230|This screen may not be suspended\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"290|The %s command is not supported when the secure edit option is set\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"284|That form of %s is not supported when the secure edit option is set\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"174|Usage: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_emsg(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %68 [
    i32 138, label %8
    i32 137, label %13
    i32 136, label %18
    i32 135, label %23
    i32 134, label %28
    i32 133, label %41
    i32 132, label %45
    i32 131, label %49
    i32 130, label %53
    i32 129, label %58
    i32 128, label %63
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @M_ERR, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %9, i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %68

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @M_ERR, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @msgq_str(i32* %14, i32 %15, i8* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %68

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @M_ERR, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %19, i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %68

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @M_ERR, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %24, i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %68

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @M_ERR, align 4
  %34 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %40

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @M_ERR, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %36, i32 %37, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %35, %31
  br label %68

41:                                               ; preds = %3
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @M_ERR, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %42, i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %68

45:                                               ; preds = %3
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @M_ERR, align 4
  %48 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %46, i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %68

49:                                               ; preds = %3
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @M_ERR, align 4
  %52 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %50, i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %68

53:                                               ; preds = %3
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @M_ERR, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %54, i32 %55, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0), i8* %56)
  br label %68

58:                                               ; preds = %3
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @M_ERR, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %59, i32 %60, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i8* %61)
  br label %68

63:                                               ; preds = %3
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @M_ERR, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %64, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %3, %63, %58, %53, %49, %45, %41, %40, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i32 @msgq_str(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
