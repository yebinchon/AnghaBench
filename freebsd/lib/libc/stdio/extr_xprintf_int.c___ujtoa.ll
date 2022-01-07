; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___ujtoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___ujtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTMAX_MAX = common dso_local global i32 0, align 4
@CHAR_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i8*, i32, i8, i8*)* @__ujtoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ujtoa(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8 signext %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8 %5, i8* %14, align 1
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %123 [
    i32 10, label %21
    i32 8, label %94
    i32 16, label %107
  ]

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = srem i32 %25, 10
  %27 = call signext i8 @to_char(i32 %26)
  %28 = load i8*, i8** %16, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %16, align 8
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %16, align 8
  store i8* %30, i8** %8, align 8
  br label %127

31:                                               ; preds = %21
  store i32 0, i32* %18, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @INTMAX_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %36, 10
  %38 = call signext i8 @to_char(i32 %37)
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %16, align 8
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %17, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i32, i32* %17, align 4
  %50 = srem i32 %49, 10
  %51 = call signext i8 @to_char(i32 %50)
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %16, align 8
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %48
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @CHAR_MAX, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = load i32, i32* %18, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i32, i32* %17, align 4
  %73 = icmp sgt i32 %72, 9
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8, i8* %14, align 1
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %16, align 8
  store i8 %75, i8* %77, align 1
  store i32 0, i32* %18, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %15, align 8
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %71, %65, %58, %48
  %88 = load i32, i32* %17, align 4
  %89 = sdiv i32 %88, 10
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %48, label %93

93:                                               ; preds = %90
  br label %125

94:                                               ; preds = %7
  br label %95

95:                                               ; preds = %103, %94
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 7
  %98 = call signext i8 @to_char(i32 %97)
  %99 = load i8*, i8** %16, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %16, align 8
  store i8 %98, i8* %100, align 1
  %101 = load i32, i32* %9, align 4
  %102 = ashr i32 %101, 3
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %95, label %106

106:                                              ; preds = %103
  br label %125

107:                                              ; preds = %7
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 15
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %16, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %116, i8** %16, align 8
  store i8 %114, i8* %116, align 1
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %108, label %122

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %7
  %124 = call i32 (...) @abort() #3
  unreachable

125:                                              ; preds = %122, %106, %93
  %126 = load i8*, i8** %16, align 8
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %125, %24
  %128 = load i8*, i8** %8, align 8
  ret i8* %128
}

declare dso_local signext i8 @to_char(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
