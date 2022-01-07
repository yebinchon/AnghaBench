; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_method.c_init_cstream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_method.c_init_cstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@ZSTD_dlm_byRef = common dso_local global i32 0, align 4
@ZSTD_dct_auto = common dso_local global i32 0, align 4
@ZSTD_defaultCMem = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4
@CONFIG_NO_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32, i32**)* @init_cstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cstream(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = call i64 @config_get_zstd_params(%struct.TYPE_12__* %19, i32 0, i32 0)
  %21 = bitcast %struct.TYPE_14__* %13 to i64*
  store i64 %20, i64* %21, align 4
  store i32* null, i32** %14, align 8
  %22 = load i32**, i32*** %11, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %155

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ZSTD_dlm_byRef, align 4
  %40 = load i32, i32* @ZSTD_dct_auto, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ZSTD_defaultCMem, align 4
  %44 = call i32* @ZSTD_createCDict_advanced(i32* %34, i32 %38, i32 %39, i32 %40, i32 %42, i32 %43)
  %45 = load i32**, i32*** %11, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %11, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %155

50:                                               ; preds = %30
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %11, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %57 = call i64 @ZSTD_initCStream_usingCDict_advanced(i32* %51, i32* %53, i32 %55, i32 %56)
  store i64 %57, i64* %12, align 8
  br label %88

58:                                               ; preds = %18
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32* [ %68, %64 ], [ null, %69 ]
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 0, %81 ]
  %84 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  %85 = bitcast %struct.TYPE_14__* %13 to i64*
  %86 = load i64, i64* %85, align 4
  %87 = call i64 @ZSTD_initCStream_advanced(i32* %59, i32* %71, i32 %83, i64 %86, i32 %84)
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %82, %50
  br label %149

89:                                               ; preds = %5
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = call i32 @config_get_level(%struct.TYPE_12__* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @CONFIG_NO_LEVEL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %6, align 4
  br label %155

96:                                               ; preds = %89
  %97 = load i32**, i32*** %11, align 8
  %98 = icmp ne i32** %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %155

105:                                              ; preds = %99
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32* @ZSTD_createCDict(i32* %109, i32 %113, i32 %114)
  %116 = load i32**, i32*** %11, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i32**, i32*** %11, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %105
  store i32 1, i32* %6, align 4
  br label %155

121:                                              ; preds = %105
  %122 = load i32*, i32** %8, align 8
  %123 = load i32**, i32*** %11, align 8
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @ZSTD_initCStream_usingCDict(i32* %122, i32* %124)
  store i64 %125, i64* %12, align 8
  br label %148

126:                                              ; preds = %96
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @ZSTD_initCStream_usingDict(i32* %132, i32* %136, i32 %140, i32 %141)
  store i64 %142, i64* %12, align 8
  br label %147

143:                                              ; preds = %126
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i64 @ZSTD_initCStream(i32* %144, i32 %145)
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %143, %131
  br label %148

148:                                              ; preds = %147, %121
  br label %149

149:                                              ; preds = %148, %88
  %150 = load i64, i64* %12, align 8
  %151 = call i64 @ZSTD_isError(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* %6, align 4
  br label %155

154:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %153, %120, %104, %95, %49, %29
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i64 @config_get_zstd_params(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @ZSTD_createCDict_advanced(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_initCStream_usingCDict_advanced(i32*, i32*, i32, i32) #1

declare dso_local i64 @ZSTD_initCStream_advanced(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @config_get_level(%struct.TYPE_12__*) #1

declare dso_local i32* @ZSTD_createCDict(i32*, i32, i32) #1

declare dso_local i64 @ZSTD_initCStream_usingCDict(i32*, i32*) #1

declare dso_local i64 @ZSTD_initCStream_usingDict(i32*, i32*, i32, i32) #1

declare dso_local i64 @ZSTD_initCStream(i32*, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
