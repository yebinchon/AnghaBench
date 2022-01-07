; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_name_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_name_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8*, i32)* @name_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_parse(i32* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %16, align 8
  br label %26

26:                                               ; preds = %115, %89, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %147

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %146

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %130

48:                                               ; preds = %44
  %49 = load i32, i32* %17, align 4
  %50 = and i32 %49, 192
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %146

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, 63
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %70
  store i32 -1, i32* %6, align 4
  br label %147

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 -1, i32* %6, align 4
  br label %147

89:                                               ; preds = %83
  br label %26

90:                                               ; preds = %48
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 63
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 -1, i32* %6, align 4
  br label %147

94:                                               ; preds = %90
  %95 = load i8*, i8** %15, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ne i8* %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8*, i8** %16, align 8
  %102 = icmp uge i8* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 -1, i32* %6, align 4
  br label %147

104:                                              ; preds = %98
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %15, align 8
  store i8 46, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %94
  %108 = load i8*, i8** %15, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8*, i8** %16, align 8
  %113 = icmp uge i8* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -1, i32* %6, align 4
  br label %147

115:                                              ; preds = %107
  %116 = load i8*, i8** %15, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @memcpy(i8* %116, i32* %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load i8*, i8** %15, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %15, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %26

130:                                              ; preds = %47
  %131 = load i8*, i8** %15, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = icmp uge i8* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 -1, i32* %6, align 4
  br label %147

135:                                              ; preds = %130
  %136 = load i8*, i8** %15, align 8
  store i8 0, i8* %136, align 1
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139
  store i32 0, i32* %6, align 4
  br label %147

146:                                              ; preds = %57, %36
  store i32 -1, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %145, %134, %114, %103, %93, %88, %82, %30
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
