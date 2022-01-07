; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_network_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_network_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v4prefix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8*, i32, i8*)* @network_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_prefix(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 7
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %16, align 4
  br label %31

25:                                               ; preds = %7
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, i32* %16, align 4
  br label %30

29:                                               ; preds = %25
  store i32 16, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %16, align 4
  %33 = icmp ugt i32 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %166

35:                                               ; preds = %31
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i32 0, i32 16)
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %160 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %92
    i32 3, label %136
  ]

39:                                               ; preds = %35
  br label %161

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 4
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %16, align 4
  %45 = icmp ugt i32 %44, 4
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %52, %53
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %43, %40
  store i32 -1, i32* %8, align 4
  br label %166

57:                                               ; preds = %50, %46
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %59 = load i8*, i8** @v4prefix, align 8
  %60 = call i32 @memcpy(i8* %58, i8* %59, i32 12)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %8, align 4
  br label %166

67:                                               ; preds = %63
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add i32 12, %70
  %72 = call i32 @memcpy(i8* %68, i8* %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %57
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %78, i64 12
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub i32 %84, %85
  %87 = call i32 @memcpy(i8* %82, i8* %83, i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %77, %73
  br label %161

92:                                               ; preds = %35
  %93 = load i32, i32* %11, align 4
  %94 = icmp ugt i32 %93, 16
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub i32 %101, %102
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %92
  store i32 -1, i32* %8, align 4
  br label %166

106:                                              ; preds = %99, %95
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i8*, i8** %13, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -1, i32* %8, align 4
  br label %166

113:                                              ; preds = %109
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @memcpy(i8* %114, i8* %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub i32 %128, %129
  %131 = call i32 @memcpy(i8* %126, i8* %127, i32 %130)
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %11, align 4
  %134 = sub i32 %132, %133
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %122, %118
  br label %161

136:                                              ; preds = %35
  %137 = load i32, i32* %16, align 4
  %138 = icmp ugt i32 %137, 8
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %16, align 4
  %142 = sub i32 %141, 8
  %143 = icmp ult i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 -1, i32* %8, align 4
  br label %166

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  store i8 -2, i8* %146, align 16
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 1
  store i8 -128, i8* %147, align 1
  %148 = load i32, i32* %16, align 4
  %149 = icmp ugt i32 %148, 8
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %152 = getelementptr inbounds i8, i8* %151, i64 8
  %153 = load i8*, i8** %12, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sub i32 %154, 8
  %156 = call i32 @memcpy(i8* %152, i8* %153, i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = sub i32 %157, 8
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %150, %145
  br label %161

160:                                              ; preds = %35
  store i32 -1, i32* %8, align 4
  br label %166

161:                                              ; preds = %159, %135, %91, %39
  %162 = load i8*, i8** %15, align 8
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %164 = call i32 @memcpy(i8* %162, i8* %163, i32 16)
  %165 = load i32, i32* %18, align 4
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %160, %144, %112, %105, %66, %56, %34
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
