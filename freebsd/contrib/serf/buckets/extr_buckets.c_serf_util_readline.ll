; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_util_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_util_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serf_util_readline(i8** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @find_crlf(i8** %18, i32* %19, i32* %20)
  br label %149

22:                                               ; preds = %4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 132
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 131
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 129
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %22
  %37 = load i8*, i8** %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @memchr(i8* %37, i8 signext 13, i32 %39)
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @memchr(i8* %45, i8 signext 10, i32 %47)
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %11, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 131, i32 132
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %78

66:                                               ; preds = %55
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  store i32 132, i32* %74, align 4
  br label %77

75:                                               ; preds = %69, %66
  %76 = load i32*, i32** %8, align 8
  store i32 129, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77, %60
  br label %103

79:                                               ; preds = %52
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = icmp eq i8* %80, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 130, i32 132
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  br label %102

94:                                               ; preds = %79
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32*, i32** %8, align 8
  store i32 132, i32* %98, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32*, i32** %8, align 8
  store i32 128, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %78
  br label %112

104:                                              ; preds = %49
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  store i32 129, i32* %108, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32*, i32** %8, align 8
  store i32 128, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %103
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %136 [
    i32 129, label %115
    i32 132, label %119
    i32 131, label %119
    i32 130, label %119
    i32 128, label %129
  ]

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8**, i8*** %5, align 8
  store i8* %117, i8** %118, align 8
  br label %137

119:                                              ; preds = %112, %112, %112
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 131
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %121, i64 %126
  %128 = load i8**, i8*** %5, align 8
  store i8* %127, i8** %128, align 8
  br label %137

129:                                              ; preds = %112
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = sext i32 %131 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %132, align 8
  br label %137

136:                                              ; preds = %112
  br label %149

137:                                              ; preds = %129, %119, %115
  %138 = load i8**, i8*** %5, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = sub nsw i64 %146, %143
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %149

149:                                              ; preds = %137, %136, %17
  ret void
}

declare dso_local i32 @find_crlf(i8**, i32*, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
