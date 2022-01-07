; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i8*, i32)* @parse_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_quote(i8** %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8 0, i8* %12, align 1
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %167

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %145, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %151

26:                                               ; preds = %23
  %27 = load i8*, i8** %13, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %13, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %12, align 1
  %30 = load i8, i8* %12, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %151

34:                                               ; preds = %26
  %35 = load i8, i8* %12, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %125

38:                                               ; preds = %34
  %39 = load i8*, i8** %13, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %125

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %13, align 8
  %46 = load i8, i8* %44, align 1
  store i8 %46, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 110
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8 10, i8* %12, align 1
  br label %124

50:                                               ; preds = %43
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 114
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8 13, i8* %12, align 1
  br label %123

55:                                               ; preds = %50
  %56 = load i8, i8* %12, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 116
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i8 9, i8* %12, align 1
  br label %122

60:                                               ; preds = %55
  %61 = load i8, i8* %12, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 98
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8 8, i8* %12, align 1
  br label %121

65:                                               ; preds = %60
  %66 = load i8, i8* %12, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 48
  br i1 %68, label %69, label %120

69:                                               ; preds = %65
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %71, 55
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %12, align 1
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 48
  br i1 %81, label %82, label %119

82:                                               ; preds = %73
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %85, 55
  br i1 %86, label %87, label %119

87:                                               ; preds = %82
  %88 = load i8, i8* %12, align 1
  %89 = sext i8 %88 to i32
  %90 = shl i32 %89, 3
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %13, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  %96 = add nsw i32 %90, %95
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %12, align 1
  %98 = load i8*, i8** %13, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 48
  br i1 %101, label %102, label %118

102:                                              ; preds = %87
  %103 = load i8*, i8** %13, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 55
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i8, i8* %12, align 1
  %109 = sext i8 %108 to i32
  %110 = shl i32 %109, 3
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %13, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  %116 = add nsw i32 %110, %115
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %12, align 1
  br label %118

118:                                              ; preds = %107, %102, %87
  br label %119

119:                                              ; preds = %118, %82, %73
  br label %120

120:                                              ; preds = %119, %69, %65
  br label %121

121:                                              ; preds = %120, %64
  br label %122

122:                                              ; preds = %121, %59
  br label %123

123:                                              ; preds = %122, %54
  br label %124

124:                                              ; preds = %123, %49
  br label %145

125:                                              ; preds = %38, %34
  %126 = load i8*, i8** %8, align 8
  store i8* %126, i8** %14, align 8
  br label %127

127:                                              ; preds = %141, %125
  %128 = load i8*, i8** %14, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i8*, i8** %14, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* %12, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %152

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %14, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %14, align 8
  br label %127

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i8, i8* %12, align 1
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %11, align 4
  br label %23

151:                                              ; preds = %33, %23
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 -1, i32* %6, align 4
  br label %167

156:                                              ; preds = %152
  %157 = load i8*, i8** %10, align 8
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i8, i8* %12, align 1
  %162 = load i8*, i8** %9, align 8
  store i8 %161, i8* %162, align 1
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 -1
  %166 = load i8**, i8*** %7, align 8
  store i8* %165, i8** %166, align 8
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %155, %21
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
