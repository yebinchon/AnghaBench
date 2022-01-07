; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_printprompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_printprompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@printprompt.ocp = internal global i8* null, align 8
@printprompt.ostr = internal global i8* null, align 8
@STRprompt = common dso_local global i32 0, align 4
@STRprompt2 = common dso_local global i32 0, align 4
@STRprompt3 = common dso_local global i32 0, align 4
@Prompt = common dso_local global i8* null, align 8
@FMT_PROMPT = common dso_local global i32 0, align 4
@editing = common dso_local global i32 0, align 4
@RPrompt = common dso_local global i8* null, align 8
@STRrprompt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printprompt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %9 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %2, %9
  %11 = load i32, i32* @STRprompt, align 4
  %12 = call i8* @varval(i32 %11)
  store i8* %12, i8** %6, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @STRprompt2, align 4
  %15 = call i8* @varval(i32 %14)
  store i8* %15, i8** %6, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* @STRprompt3, align 4
  %18 = call i8* @varval(i32 %17)
  store i8* %18, i8** %6, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load i8*, i8** @printprompt.ocp, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** @printprompt.ocp, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** @printprompt.ostr, align 8
  store i8* %24, i8** %4, align 8
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @STRprompt, align 4
  %27 = call i8* @varval(i32 %26)
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %16, %13, %10
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** @printprompt.ocp, align 8
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** @printprompt.ostr, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i8*, i8** @Prompt, align 8
  %37 = call i32 @xfree(i8* %36)
  store i8* null, i8** @Prompt, align 8
  %38 = load i32, i32* @FMT_PROMPT, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @tprintf(i32 %38, i8* %39, i8* %40, i32 %41, i32* null)
  store i8* %42, i8** @Prompt, align 8
  %43 = load i32, i32* @editing, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** @Prompt, align 8
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %51, %45
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @putwraw(i32 %55)
  br label %47

57:                                               ; preds = %47
  %58 = call i32 @SetAttributes(i32 0)
  %59 = call i32 (...) @flush()
  br label %60

60:                                               ; preds = %57, %35
  %61 = load i8*, i8** @RPrompt, align 8
  %62 = call i32 @xfree(i8* %61)
  store i8* null, i8** @RPrompt, align 8
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %60
  %66 = load i32, i32* @STRrprompt, align 4
  %67 = call i8* @varval(i32 %66)
  store i8* %67, i8** %6, align 8
  %68 = load i32, i32* @FMT_PROMPT, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i8* @tprintf(i32 %68, i8* %69, i8* null, i32 %70, i32* null)
  store i8* %71, i8** @RPrompt, align 8
  %72 = load i32, i32* @editing, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %65
  %75 = load i8*, i8** @RPrompt, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i8*, i8** @RPrompt, align 8
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %86, %80
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  %91 = call i32 @putwraw(i32 %90)
  br label %82

92:                                               ; preds = %82
  %93 = call i32 @SetAttributes(i32 0)
  %94 = call i32 @putraw(i8 signext 32)
  %95 = call i32 (...) @flush()
  br label %96

96:                                               ; preds = %92, %74, %65
  br label %97

97:                                               ; preds = %96, %60
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @varval(i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @tprintf(i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @putwraw(i32) #1

declare dso_local i32 @SetAttributes(i32) #1

declare dso_local i32 @flush(...) #1

declare dso_local i32 @putraw(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
