; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c__utf8_to_unicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c__utf8_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_utf8_to_unicode.utf8_count = internal constant <{ [245 x i8], [11 x i8] }> <{ [245 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04", [11 x i8] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @_utf8_to_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_utf8_to_unicode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %162

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %162

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [245 x i8], [11 x i8] }>* @_utf8_to_unicode.utf8_count to [256 x i8]*), i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %162

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %153 [
    i32 1, label %35
    i32 2, label %40
    i32 3, label %60
    i32 4, label %97
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 127
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %162

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 192
  %46 = icmp ne i32 %45, 128
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %162

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 31
  %51 = shl i32 %50, 6
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 63
  %57 = or i32 %51, %56
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %162

60:                                               ; preds = %33
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 192
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %162

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = and i32 %72, 192
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %162

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 12
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, 63
  %85 = shl i32 %84, 6
  %86 = or i32 %79, %85
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 63
  %92 = or i32 %86, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 2048
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %162

96:                                               ; preds = %76
  br label %154

97:                                               ; preds = %33
  %98 = load i64, i64* %7, align 8
  %99 = icmp ult i64 %98, 4
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %162

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 192
  %107 = icmp ne i32 %106, 128
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  br label %162

109:                                              ; preds = %101
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 192
  %115 = icmp ne i32 %114, 128
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  br label %162

117:                                              ; preds = %109
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %121, 192
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %162

125:                                              ; preds = %117
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 7
  %128 = shl i32 %127, 18
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 63
  %134 = shl i32 %133, 12
  %135 = or i32 %128, %134
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = and i32 %139, 63
  %141 = shl i32 %140, 6
  %142 = or i32 %135, %141
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = and i32 %146, 63
  %148 = or i32 %142, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 65536
  br i1 %150, label %151, label %152

151:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %162

152:                                              ; preds = %125
  br label %154

153:                                              ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %162

154:                                              ; preds = %152, %96
  %155 = load i32, i32* %10, align 4
  %156 = icmp sgt i32 %155, 1114111
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = load i32*, i32** %5, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %157, %153, %151, %124, %116, %108, %100, %95, %75, %67, %48, %47, %35, %32, %21, %14
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
