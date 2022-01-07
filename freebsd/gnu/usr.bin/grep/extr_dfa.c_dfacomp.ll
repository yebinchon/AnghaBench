; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_dfacomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_dfacomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i64, i64, i64, i64, i64 }

@case_fold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfacomp(i8* %0, i64 %1, %struct.dfa* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dfa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dfa* %2, %struct.dfa** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @case_fold, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %88

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @dfaerror(i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  store i32 0, i32* @case_fold, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @ISUPPER(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call signext i8 @tolower(i8 zeroext %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 %41, i8* %45, align 1
  br label %56

46:                                               ; preds = %27
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  br label %56

56:                                               ; preds = %46, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load %struct.dfa*, %struct.dfa** %7, align 8
  %62 = call i32 @dfainit(%struct.dfa* %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.dfa*, %struct.dfa** %7, align 8
  %66 = call i32 @dfaparse(i8* %63, i64 %64, %struct.dfa* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load %struct.dfa*, %struct.dfa** %7, align 8
  %70 = call i32 @dfamust(%struct.dfa* %69)
  %71 = load %struct.dfa*, %struct.dfa** %7, align 8
  %72 = getelementptr inbounds %struct.dfa, %struct.dfa* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.dfa*, %struct.dfa** %7, align 8
  %74 = getelementptr inbounds %struct.dfa, %struct.dfa* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.dfa*, %struct.dfa** %7, align 8
  %76 = getelementptr inbounds %struct.dfa, %struct.dfa* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.dfa*, %struct.dfa** %7, align 8
  %78 = getelementptr inbounds %struct.dfa, %struct.dfa* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.dfa*, %struct.dfa** %7, align 8
  %80 = getelementptr inbounds %struct.dfa, %struct.dfa* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  store i32 1, i32* @case_fold, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.dfa*, %struct.dfa** %7, align 8
  %84 = call i32 @dfaparse(i8* %81, i64 %82, %struct.dfa* %83)
  %85 = load %struct.dfa*, %struct.dfa** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dfaanalyze(%struct.dfa* %85, i32 %86)
  br label %100

88:                                               ; preds = %4
  %89 = load %struct.dfa*, %struct.dfa** %7, align 8
  %90 = call i32 @dfainit(%struct.dfa* %89)
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.dfa*, %struct.dfa** %7, align 8
  %94 = call i32 @dfaparse(i8* %91, i64 %92, %struct.dfa* %93)
  %95 = load %struct.dfa*, %struct.dfa** %7, align 8
  %96 = call i32 @dfamust(%struct.dfa* %95)
  %97 = load %struct.dfa*, %struct.dfa** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dfaanalyze(%struct.dfa* %97, i32 %98)
  br label %100

100:                                              ; preds = %88, %60
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @dfaerror(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @ISUPPER(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @dfainit(%struct.dfa*) #1

declare dso_local i32 @dfaparse(i8*, i64, %struct.dfa*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dfamust(%struct.dfa*) #1

declare dso_local i32 @dfaanalyze(%struct.dfa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
