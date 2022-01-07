; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"bytes \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"content range: [*/%lld]\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"content range: [%lld-%lld/%lld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @http_parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_range(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strncasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %159

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  br label %84

27:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isdigit(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, 10
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %42, %45
  %47 = sub nsw i32 %46, 48
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %28

51:                                               ; preds = %38
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 45
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %159

57:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %80, %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @isdigit(i8 zeroext %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ false, %60 ], [ %69, %65 ]
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 10
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 48
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  br label %60

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %24
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 47
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %84
  store i32 -1, i32* %5, align 4
  br label %159

94:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  br label %97

97:                                               ; preds = %117, %94
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @isdigit(i8 zeroext %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ false, %97 ], [ %106, %102 ]
  br i1 %108, label %109, label %120

109:                                              ; preds = %107
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %110, 10
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = add nsw i32 %111, %114
  %116 = sub nsw i32 %115, 48
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %109
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  br label %97

120:                                              ; preds = %107
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125, %120
  store i32 -1, i32* %5, align 4
  br label %159

133:                                              ; preds = %125
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 (i8*, i64, ...) @DEBUGF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %138)
  %140 = load i32*, i32** %8, align 8
  store i32 0, i32* %140, align 4
  br label %154

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = call i32 (i8*, i64, ...) @DEBUGF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %143, i64 %145, i64 %147)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 %149, %150
  %152 = add nsw i32 %151, 1
  %153 = load i32*, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %141, %136
  %155 = load i32, i32* %10, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %132, %93, %56, %16
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @DEBUGF(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
