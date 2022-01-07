; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"\0AEOF received\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Error encountered\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Input line is too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_line(i32* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @fgets(i8* %13, i64 %14, i32* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @feof(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  store i32 -2, i32* %10, align 4
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  br label %34

28:                                               ; preds = %18
  store i32 -1, i32* %10, align 4
  %29 = load i8**, i8*** %9, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @clearerr(i32* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %86

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %12, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  br label %78

53:                                               ; preds = %38
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, 1
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %68, %58
  %60 = call i32 (...) @getchar()
  store i32 %60, i32* %11, align 4
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @EOF, align 4
  %65 = icmp ne i32 %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  br label %59

69:                                               ; preds = %66
  %70 = load i8**, i8*** %9, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @clearerr(i32* %75)
  store i32 -3, i32* %5, align 4
  br label %86

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i8**, i8*** %9, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8**, i8*** %9, align 8
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %74, %34
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
