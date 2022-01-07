; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_get_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**)* @resp_get_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_get_length(i32* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %144

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @ND_TCHECK(i8 signext %20)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  store i32 1, i32* %13, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %18
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %87, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %144

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @ND_TCHECK(i8 signext %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %11, align 1
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 48
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 57
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  br label %147

55:                                               ; preds = %49
  br label %92

56:                                               ; preds = %45
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %11, align 1
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = sdiv i32 %62, 10
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  br label %87

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %67, 10
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @INT_MAX, align 4
  %71 = sdiv i32 %70, 10
  %72 = mul nsw i32 %71, 10
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load i8, i8* %11, align 1
  %76 = sext i8 %75 to i32
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = srem i32 %77, 10
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %14, align 4
  br label %86

81:                                               ; preds = %74, %66
  %82 = load i8, i8* %11, align 1
  %83 = sext i8 %82 to i32
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %81, %80
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  store i32 1, i32* %12, align 4
  br label %32

92:                                               ; preds = %55
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 13
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  br label %147

100:                                              ; preds = %92
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %144

108:                                              ; preds = %100
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @ND_TCHECK(i8 signext %110)
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 10
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  br label %147

119:                                              ; preds = %108
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i8**, i8*** %9, align 8
  store i8* %124, i8** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %119
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %131, %128
  store i32 -4, i32* %5, align 4
  br label %150

135:                                              ; preds = %131
  store i32 -1, i32* %10, align 4
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ -3, %139 ], [ %141, %140 ]
  store i32 %143, i32* %5, align 4
  br label %150

144:                                              ; preds = %107, %35, %17
  %145 = load i8*, i8** %7, align 8
  %146 = load i8**, i8*** %9, align 8
  store i8* %145, i8** %146, align 8
  store i32 -2, i32* %5, align 4
  br label %150

147:                                              ; preds = %116, %97, %52
  %148 = load i8*, i8** %7, align 8
  %149 = load i8**, i8*** %9, align 8
  store i8* %148, i8** %149, align 8
  store i32 -5, i32* %5, align 4
  br label %150

150:                                              ; preds = %147, %144, %142, %134
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @ND_TCHECK(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
