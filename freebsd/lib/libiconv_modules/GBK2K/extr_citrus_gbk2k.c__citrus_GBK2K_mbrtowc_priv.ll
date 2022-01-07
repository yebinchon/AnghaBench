; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8* }

@_PSENC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8**, i64, %struct.TYPE_5__*, i64*)* @_citrus_GBK2K_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_GBK2K_mbrtowc_priv(%struct.TYPE_6__* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_5__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %167

27:                                               ; preds = %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %57 [
    i32 3, label %34
    i32 2, label %40
    i32 1, label %50
    i32 0, label %56
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* @_PSENC, align 4
  %36 = call i32 @_mb_leadbyte(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %162

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %27, %39
  %41 = load i32, i32* @_PSENC, align 4
  %42 = call i32 @_mb_surrogate(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @_PSENC, align 4
  %46 = call i32 @_mb_trailbyte(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %162

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %27, %49
  %51 = load i32, i32* @_PSENC, align 4
  %52 = call i32 @_mb_leadbyte(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %162

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %27, %55
  br label %58

57:                                               ; preds = %27
  br label %162

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %112, %104, %98, %82, %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %11, align 8
  %62 = icmp ult i64 %60, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %158

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @_PUSH_PSENC(i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %112 [
    i32 1, label %73
    i32 2, label %84
    i32 3, label %100
    i32 4, label %106
  ]

73:                                               ; preds = %64
  %74 = load i32, i32* @_PSENC, align 4
  %75 = call i32 @_mb_singlebyte(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %113

78:                                               ; preds = %73
  %79 = load i32, i32* @_PSENC, align 4
  %80 = call i32 @_mb_leadbyte(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %59

83:                                               ; preds = %78
  br label %164

84:                                               ; preds = %64
  %85 = load i32, i32* @_PSENC, align 4
  %86 = call i32 @_mb_trailbyte(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %113

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @_PSENC, align 4
  %96 = call i32 @_mb_surrogate(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %59

99:                                               ; preds = %94, %89
  br label %164

100:                                              ; preds = %64
  %101 = load i32, i32* @_PSENC, align 4
  %102 = call i32 @_mb_leadbyte(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %59

105:                                              ; preds = %100
  br label %164

106:                                              ; preds = %64
  %107 = load i32, i32* @_PSENC, align 4
  %108 = call i32 @_mb_surrogate(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %113

111:                                              ; preds = %106
  br label %164

112:                                              ; preds = %64
  br label %59

113:                                              ; preds = %110, %88, %77
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %18, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8* %120, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %125, %113
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %18, align 4
  %124 = icmp sgt i32 %122, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* %16, align 4
  %127 = shl i32 %126, 8
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %15, align 8
  %130 = load i8, i8* %128, align 1
  %131 = sext i8 %130 to i32
  %132 = and i32 %131, 255
  %133 = or i32 %127, %132
  store i32 %133, i32* %16, align 4
  br label %121

134:                                              ; preds = %121
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %16, align 4
  %139 = load i32*, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i8*, i8** %14, align 8
  %142 = load i8**, i8*** %10, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %16, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  br label %152

152:                                              ; preds = %146, %145
  %153 = phi i32 [ 0, %145 ], [ %151, %146 ]
  %154 = sext i32 %153 to i64
  %155 = load i64*, i64** %13, align 8
  store i64 %154, i64* %155, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  store i32 0, i32* %7, align 4
  br label %167

158:                                              ; preds = %63
  %159 = load i8*, i8** %14, align 8
  %160 = load i8**, i8*** %10, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i64*, i64** %13, align 8
  store i64 -2, i64* %161, align 8
  store i32 0, i32* %7, align 4
  br label %167

162:                                              ; preds = %57, %54, %48, %38
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %7, align 4
  br label %167

164:                                              ; preds = %111, %105, %99, %83
  %165 = load i64*, i64** %13, align 8
  store i64 -1, i64* %165, align 8
  %166 = load i32, i32* @EILSEQ, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %164, %162, %158, %152, %23
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @_mb_leadbyte(i32) #1

declare dso_local i32 @_mb_surrogate(i32) #1

declare dso_local i32 @_mb_trailbyte(i32) #1

declare dso_local i32 @_PUSH_PSENC(i32) #1

declare dso_local i32 @_mb_singlebyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
