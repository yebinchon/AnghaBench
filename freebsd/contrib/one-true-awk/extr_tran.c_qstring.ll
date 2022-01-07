; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_qstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_qstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"out of space in qstring(%s)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"newline in string %.20s...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qstring(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 3
  %17 = call i64 @malloc(i64 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @FATAL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32*, i32** %9, align 8
  store i32* %24, i32** %10, align 8
  br label %25

25:                                               ; preds = %117, %23
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %120

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @SYNTAX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %116

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 92
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %115

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  store i32 92, i32* %50, align 4
  br label %120

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %72 [
    i32 92, label %54
    i32 110, label %57
    i32 116, label %60
    i32 98, label %63
    i32 102, label %66
    i32 114, label %69
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %10, align 8
  store i32 92, i32* %55, align 4
  br label %114

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %10, align 8
  store i32 10, i32* %58, align 4
  br label %114

60:                                               ; preds = %52
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  store i32 9, i32* %61, align 4
  br label %114

63:                                               ; preds = %52
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %10, align 8
  store i32 8, i32* %64, align 4
  br label %114

66:                                               ; preds = %52
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  store i32 12, i32* %67, align 4
  br label %114

69:                                               ; preds = %52
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %10, align 8
  store i32 13, i32* %70, align 4
  br label %114

72:                                               ; preds = %52
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @isdigit(i32 %73) #3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %114

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 48
  store i32 %82, i32* %7, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @isdigit(i32 %85) #3
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 8, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = sub nsw i32 %94, 48
  store i32 %95, i32* %7, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @isdigit(i32 %98) #3
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 8, %102
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = sub nsw i32 %107, 48
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %101, %88
  br label %110

110:                                              ; preds = %109, %80
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  br label %114

114:                                              ; preds = %110, %76, %69, %66, %63, %60, %57, %54
  br label %115

115:                                              ; preds = %114, %39
  br label %116

116:                                              ; preds = %115, %33
  br label %117

117:                                              ; preds = %116
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  br label %25

120:                                              ; preds = %49, %25
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %10, align 8
  store i32 0, i32* %121, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = bitcast i32* %123 to i8*
  ret i8* %124
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FATAL(i8*, i32*) #1

declare dso_local i32 @SYNTAX(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
