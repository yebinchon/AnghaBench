; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_mbsnrtowcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_mbsnrtowcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i8**, i64, i64, i32*)* @_UTF8_mbsnrtowcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_UTF8_mbsnrtowcs(i64* noalias %0, i8** noalias %1, i64 %2, i64 %3, i32* noalias %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %12, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %13, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EILSEQ, align 4
  store i32 %37, i32* @errno, align 4
  store i64 -1, i64* %6, align 8
  br label %153

38:                                               ; preds = %31, %26, %23
  br label %39

39:                                               ; preds = %65, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i64 1, i64* %16, align 8
  br label %65

48:                                               ; preds = %42, %39
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i64 @_UTF8_mbrtowc(i64* %15, i8* %49, i64 %50, i32* %51)
  store i64 %52, i64* %16, align 8
  %53 = icmp eq i64 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i64 -1, i64* %6, align 8
  br label %153

55:                                               ; preds = %48
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %16, align 8
  %60 = icmp eq i64 %59, -2
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %6, align 8
  br label %153

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i64, i64* %16, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %13, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %14, align 8
  br label %39

74:                                               ; preds = %5
  %75 = load i64, i64* %9, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* %10, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @EILSEQ, align 4
  store i32 %91, i32* @errno, align 4
  store i64 -1, i64* %6, align 8
  br label %153

92:                                               ; preds = %85, %80, %77, %74
  br label %93

93:                                               ; preds = %138, %92
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %10, align 8
  %96 = icmp ugt i64 %94, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %93
  %98 = load i64, i64* %9, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i8*, i8** %13, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %13, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i64
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  store i64 1, i64* %16, align 8
  br label %138

110:                                              ; preds = %100, %97
  %111 = load i64*, i64** %7, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @_UTF8_mbrtowc(i64* %111, i8* %112, i64 %113, i32* %114)
  store i64 %115, i64* %16, align 8
  %116 = icmp eq i64 %115, -1
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** %13, align 8
  %119 = load i8**, i8*** %8, align 8
  store i8* %118, i8** %119, align 8
  store i64 -1, i64* %6, align 8
  br label %153

120:                                              ; preds = %110
  %121 = load i64, i64* %16, align 8
  %122 = icmp eq i64 %121, -2
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i8*, i8** %13, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8**, i8*** %8, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i64, i64* %14, align 8
  store i64 %128, i64* %6, align 8
  br label %153

129:                                              ; preds = %120
  %130 = load i64, i64* %16, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8**, i8*** %8, align 8
  store i8* null, i8** %133, align 8
  %134 = load i64, i64* %14, align 8
  store i64 %134, i64* %6, align 8
  br label %153

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %105
  %139 = load i64, i64* %16, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 %139
  store i8* %141, i8** %13, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %9, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %14, align 8
  %147 = load i64*, i64** %7, align 8
  %148 = getelementptr inbounds i64, i64* %147, i32 1
  store i64* %148, i64** %7, align 8
  br label %93

149:                                              ; preds = %93
  %150 = load i8*, i8** %13, align 8
  %151 = load i8**, i8*** %8, align 8
  store i8* %150, i8** %151, align 8
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %6, align 8
  br label %153

153:                                              ; preds = %149, %132, %123, %117, %90, %61, %54, %36
  %154 = load i64, i64* %6, align 8
  ret i64 %154
}

declare dso_local i64 @_UTF8_mbrtowc(i64*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
