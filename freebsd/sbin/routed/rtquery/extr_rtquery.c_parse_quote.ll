; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_parse_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_parse_quote.c"
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
  br label %168

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %146, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %168

27:                                               ; preds = %23
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %13, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %12, align 1
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %152

35:                                               ; preds = %27
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %39, label %126

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %126

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %13, align 8
  %47 = load i8, i8* %45, align 1
  store i8 %47, i8* %12, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 110
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8 10, i8* %12, align 1
  br label %125

51:                                               ; preds = %44
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 114
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8 13, i8* %12, align 1
  br label %124

56:                                               ; preds = %51
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 116
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8 9, i8* %12, align 1
  br label %123

61:                                               ; preds = %56
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 98
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8 8, i8* %12, align 1
  br label %122

66:                                               ; preds = %61
  %67 = load i8, i8* %12, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %121

70:                                               ; preds = %66
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 55
  br i1 %73, label %74, label %121

74:                                               ; preds = %70
  %75 = load i8, i8* %12, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %12, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 48
  br i1 %82, label %83, label %120

83:                                               ; preds = %74
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 55
  br i1 %87, label %88, label %120

88:                                               ; preds = %83
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = shl i32 %90, 3
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %13, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = add nsw i32 %91, %96
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %12, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sge i32 %101, 48
  br i1 %102, label %103, label %119

103:                                              ; preds = %88
  %104 = load i8*, i8** %13, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sle i32 %106, 55
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i8, i8* %12, align 1
  %110 = sext i8 %109 to i32
  %111 = shl i32 %110, 3
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %13, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  %117 = add nsw i32 %111, %116
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %12, align 1
  br label %119

119:                                              ; preds = %108, %103, %88
  br label %120

120:                                              ; preds = %119, %83, %74
  br label %121

121:                                              ; preds = %120, %70, %66
  br label %122

122:                                              ; preds = %121, %65
  br label %123

123:                                              ; preds = %122, %60
  br label %124

124:                                              ; preds = %123, %55
  br label %125

125:                                              ; preds = %124, %50
  br label %146

126:                                              ; preds = %39, %35
  %127 = load i8*, i8** %8, align 8
  store i8* %127, i8** %14, align 8
  br label %128

128:                                              ; preds = %142, %126
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i8*, i8** %14, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* %12, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %153

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %14, align 8
  br label %128

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i8, i8* %12, align 1
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %10, align 8
  store i8 %147, i8* %148, align 1
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %11, align 4
  br label %23

152:                                              ; preds = %34
  br label %153

153:                                              ; preds = %152, %140
  %154 = load i8*, i8** %9, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8, i8* %12, align 1
  %158 = load i8*, i8** %9, align 8
  store i8 %157, i8* %158, align 1
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 -1
  %162 = load i8**, i8*** %7, align 8
  store i8* %161, i8** %162, align 8
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i8*, i8** %10, align 8
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %165, %159
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %26, %21
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
