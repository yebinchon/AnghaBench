; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tw_tok.bf = internal global i8* null, align 8
@INVPTR = common dso_local global i8* null, align 8
@QUOTE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tw_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tw_tok(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** @tw_tok.bf, align 8
  br label %8

8:                                                ; preds = %6, %1
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i8*, i8** @tw_tok.bf, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** @tw_tok.bf, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @Isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** @tw_tok.bf, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @tw_tok.bf, align 8
  br label %9

25:                                               ; preds = %19
  %26 = load i8*, i8** @tw_tok.bf, align 8
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %57, %25
  %28 = load i8*, i8** @tw_tok.bf, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** @tw_tok.bf, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @Isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  br i1 %39, label %40, label %60

40:                                               ; preds = %38
  %41 = load i8*, i8** @tw_tok.bf, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @ismetahash(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** @INVPTR, align 8
  store i8* %46, i8** %2, align 8
  br label %78

47:                                               ; preds = %40
  %48 = load i8*, i8** @tw_tok.bf, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @QUOTE, align 1
  %52 = sext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** @tw_tok.bf, align 8
  store i8 %55, i8* %56, align 1
  br label %57

57:                                               ; preds = %47
  %58 = load i8*, i8** @tw_tok.bf, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** @tw_tok.bf, align 8
  br label %27

60:                                               ; preds = %38
  %61 = load i8*, i8** @tw_tok.bf, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** @tw_tok.bf, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** @tw_tok.bf, align 8
  store i8 0, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ null, %75 ]
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %76, %45
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i64 @Isspace(i8 signext) #1

declare dso_local i64 @ismetahash(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
