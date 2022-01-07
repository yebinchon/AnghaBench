; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/EUC/extr_citrus_euc.c__citrus_EUC_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/EUC/extr_citrus_euc.c__citrus_EUC_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }

@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8**, i64, %struct.TYPE_7__*, i64*)* @_citrus_EUC_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_EUC_mbrtowc_priv(%struct.TYPE_8__* %0, i32* %1, i8** %2, i64 %3, %struct.TYPE_7__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* null, i8** %20, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %19, align 8
  %23 = load i8*, i8** %19, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = call i32 @_citrus_EUC_init_state(%struct.TYPE_8__* %26, %struct.TYPE_7__* %27)
  %29 = load i64*, i64** %13, align 8
  store i64 0, i64* %29, align 8
  store i32 0, i32* %7, align 4
  br label %180

30:                                               ; preds = %6
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %55 [
    i32 0, label %37
    i32 1, label %54
    i32 2, label %54
  ]

37:                                               ; preds = %30
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %176

41:                                               ; preds = %37
  %42 = load i8*, i8** %19, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %19, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %11, align 8
  br label %56

54:                                               ; preds = %30, %30
  br label %56

55:                                               ; preds = %30
  br label %171

56:                                               ; preds = %54, %41
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = call i32 @_citrus_EUC_cs(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %59, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %171

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %84, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  %82 = icmp ult i64 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %176

84:                                               ; preds = %80
  %85 = load i8*, i8** %19, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %19, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32 %88, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %11, align 8
  br label %74

103:                                              ; preds = %74
  %104 = load i8*, i8** %19, align 8
  %105 = load i8**, i8*** %10, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %17, align 4
  switch i32 %106, label %122 [
    i32 3, label %107
    i32 2, label %107
    i32 1, label %115
    i32 0, label %115
  ]

107:                                              ; preds = %103, %103
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = bitcast i32* %113 to i8*
  store i8* %114, i8** %20, align 8
  br label %123

115:                                              ; preds = %103, %103
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %18, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = bitcast i32* %120 to i8*
  store i8* %121, i8** %20, align 8
  br label %123

122:                                              ; preds = %103
  br label %171

123:                                              ; preds = %115, %107
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %18, align 4
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  %130 = shl i32 %129, 8
  %131 = load i8*, i8** %20, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %20, align 8
  %133 = load i8, i8* %131, align 1
  %134 = sext i8 %133 to i32
  %135 = and i32 %134, 255
  %136 = or i32 %130, %135
  store i32 %136, i32* %14, align 4
  br label %124

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = xor i32 %141, -1
  %143 = and i32 %138, %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %143, %150
  store i32 %151, i32* %14, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %137
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %137
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  br label %168

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %162
  %169 = phi i64 [ %166, %162 ], [ 0, %167 ]
  %170 = load i64*, i64** %13, align 8
  store i64 %169, i64* %170, align 8
  store i32 0, i32* %7, align 4
  br label %180

171:                                              ; preds = %122, %72, %55
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load i64*, i64** %13, align 8
  store i64 -1, i64* %174, align 8
  %175 = load i32, i32* @EILSEQ, align 4
  store i32 %175, i32* %7, align 4
  br label %180

176:                                              ; preds = %83, %40
  %177 = load i64*, i64** %13, align 8
  store i64 -2, i64* %177, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = load i8**, i8*** %10, align 8
  store i8* %178, i8** %179, align 8
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %176, %171, %168, %25
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @_citrus_EUC_init_state(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @_citrus_EUC_cs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
