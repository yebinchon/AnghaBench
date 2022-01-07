; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fetch_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fetch_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i8*, i64)* @fetch_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_token(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %67, %6
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @ND_TTEST(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %135

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isascii(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %135

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %70

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @isprint(i8 signext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %135

51:                                               ; preds = %43
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 2
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %135

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %61, i8* %64, align 1
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %15

70:                                               ; preds = %42, %15
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %135

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %129, %74
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @ND_TTEST(i8 signext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %132

90:                                               ; preds = %82
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load i8*, i8** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %90
  br label %132

105:                                              ; preds = %97
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @isascii(i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i8*, i8** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @isprint(i8 signext %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112, %105
  br label %132

120:                                              ; preds = %112
  %121 = load i8*, i8** %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @isspace(i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %132

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %10, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %78

132:                                              ; preds = %127, %119, %104, %89, %78
  %133 = load i64, i64* %10, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %73, %56, %50, %34, %26
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @ND_TTEST(i8 signext) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
