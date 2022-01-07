; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/csv/extr_enc_csv.c_csv_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/csv/extr_enc_csv.c_csv_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@CF_HAS_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"leafs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"leaf\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"leaves\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no-keys\00", align 1
@CF_NO_KEYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"no-header\00", align 1
@CF_NO_HEADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"value-only\00", align 1
@CF_VALUE_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@CF_DOS_NEWLINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"no-quotes\00", align 1
@CF_NO_QUOTES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CF_DEBUG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"unknown encoder option value: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i8*)* @csv_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csv_options(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i8* @alloca(i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %173, %3
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ult i8* %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %175

42:                                               ; preds = %40
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %12, align 8
  store i8 0, i8* %48, align 1
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  store i8 0, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @xo_streq(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i64 @csv_record_path(i32* %66, %struct.TYPE_5__* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %176

72:                                               ; preds = %65, %62
  %73 = load i32, i32* @CF_HAS_PATH, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %172

78:                                               ; preds = %58
  %79 = load i8*, i8** %10, align 8
  %80 = call i64 @xo_streq(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @xo_streq(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @xo_streq(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86, %82, %78
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i64 @csv_record_leafs(i32* %94, %struct.TYPE_5__* %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %176

100:                                              ; preds = %93, %90
  br label %171

101:                                              ; preds = %86
  %102 = load i8*, i8** %10, align 8
  %103 = call i64 @xo_streq(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @CF_NO_KEYS, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %170

111:                                              ; preds = %101
  %112 = load i8*, i8** %10, align 8
  %113 = call i64 @xo_streq(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* @CF_NO_HEADER, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %169

121:                                              ; preds = %111
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 @xo_streq(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @CF_VALUE_ONLY, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %168

131:                                              ; preds = %121
  %132 = load i8*, i8** %10, align 8
  %133 = call i64 @xo_streq(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* @CF_DOS_NEWLINE, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %167

141:                                              ; preds = %131
  %142 = load i8*, i8** %10, align 8
  %143 = call i64 @xo_streq(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @CF_NO_QUOTES, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %166

151:                                              ; preds = %141
  %152 = load i8*, i8** %10, align 8
  %153 = call i64 @xo_streq(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load i32, i32* @CF_DEBUG, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %165

161:                                              ; preds = %151
  %162 = load i32*, i32** %5, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @xo_warn_hc(i32* %162, i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %163)
  store i32 -1, i32* %4, align 4
  br label %176

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %135
  br label %168

168:                                              ; preds = %167, %125
  br label %169

169:                                              ; preds = %168, %115
  br label %170

170:                                              ; preds = %169, %105
  br label %171

171:                                              ; preds = %170, %100
  br label %172

172:                                              ; preds = %171, %72
  br label %173

173:                                              ; preds = %172
  %174 = load i8*, i8** %12, align 8
  store i8* %174, i8** %10, align 8
  br label %33

175:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %161, %99, %71
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i64 @csv_record_path(i32*, %struct.TYPE_5__*, i8*) #1

declare dso_local i64 @csv_record_leafs(i32*, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @xo_warn_hc(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
