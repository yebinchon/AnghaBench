; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-beep.c_beep_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-beep.c_beep_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"MSG\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" BEEP MSG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RPY \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" BEEP RPY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" BEEP ERR\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ANS \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" BEEP ANS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NUL \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" BEEP NUL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SEQ \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" BEEP SEQ\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" BEEP END\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c" BEEP (payload or undecoded)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beep_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @l_strnstart(i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4, i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.1 to i32*))
  br label %85

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @l_strnstart(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.3 to i32*))
  br label %84

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @l_strnstart(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.5 to i32*))
  br label %83

36:                                               ; preds = %26
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @l_strnstart(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4, i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.7 to i32*))
  br label %82

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @l_strnstart(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.9 to i32*))
  br label %81

56:                                               ; preds = %46
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @l_strnstart(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4, i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.11 to i32*))
  br label %80

66:                                               ; preds = %56
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @l_strnstart(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 4, i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.13 to i32*))
  br label %79

76:                                               ; preds = %66
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ND_PRINT(i32* bitcast ([29 x i8]* @.str.14 to i32*))
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %33
  br label %84

84:                                               ; preds = %83, %23
  br label %85

85:                                               ; preds = %84, %13
  ret void
}

declare dso_local i64 @l_strnstart(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
