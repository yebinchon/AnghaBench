; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-rewb-bsd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-rewb-bsd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"[[:<:]]word[[:>:]]\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"the word is here\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"same word\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"word again\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"wordy\00", align 1
@REG_NOMATCH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"sword\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"reworded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @REG_EXTENDED, align 4
  %4 = load i32, i32* @REG_NOSUB, align 4
  %5 = or i32 %3, %4
  %6 = call i64 @regcomp(i32* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %41

9:                                                ; preds = %0
  %10 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 2, i32* %1, align 4
  br label %41

13:                                               ; preds = %9
  %14 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 3, i32* %1, align 4
  br label %41

17:                                               ; preds = %13
  %18 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 4, i32* %1, align 4
  br label %41

21:                                               ; preds = %17
  %22 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 5, i32* %1, align 4
  br label %41

25:                                               ; preds = %21
  %26 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null, i32 0)
  %27 = load i64, i64* @REG_NOMATCH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 6, i32* %1, align 4
  br label %41

30:                                               ; preds = %25
  %31 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32 0)
  %32 = load i64, i64* @REG_NOMATCH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 7, i32* %1, align 4
  br label %41

35:                                               ; preds = %30
  %36 = call i64 @regexec(i32* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32 0)
  %37 = load i64, i64* @REG_NOMATCH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 8, i32* %1, align 4
  br label %41

40:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %40, %39, %34, %29, %24, %20, %16, %12, %8
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
