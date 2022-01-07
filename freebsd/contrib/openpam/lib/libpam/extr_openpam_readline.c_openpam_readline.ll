; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_readline.c_openpam_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_readline.c_openpam_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @openpam_readline(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = call i64 @openpam_straddch(i8** %8, i64* %10, i64* %9, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %89

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %73, %62, %53, %15
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @fgetc(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fgetc(i32* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 10
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %22, label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EOF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %74

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %16

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  br label %16

67:                                               ; preds = %54
  br label %74

68:                                               ; preds = %40
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @openpam_straddch(i8** %8, i64* %10, i64* %9, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %86

73:                                               ; preds = %68
  br label %16

74:                                               ; preds = %67, %39
  %75 = load i64, i64* %9, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %86

78:                                               ; preds = %74
  %79 = load i64*, i64** %7, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %9, align 8
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %89

86:                                               ; preds = %77, %72
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @FREE(i8* %87)
  store i8* null, i8** %4, align 8
  br label %89

89:                                               ; preds = %86, %84, %14
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

declare dso_local i64 @openpam_straddch(i8**, i64*, i64*, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
