; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_mbrtowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_mbrtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32*)* @_UTF8_mbrtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_UTF8_mbrtowc(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %10, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 6
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %189

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32* null, i32** %6, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 -2, i64* %5, align 8
  br label %189

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  br label %189

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 224
  %65 = icmp eq i32 %64, 192
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 31, i32* %13, align 4
  store i32 2, i32* %14, align 4
  store i32 128, i32* %15, align 4
  br label %81

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 224
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 15, i32* %13, align 4
  store i32 3, i32* %14, align 4
  store i32 2048, i32* %15, align 4
  br label %80

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 248
  %75 = icmp eq i32 %74, 240
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 7, i32* %13, align 4
  store i32 4, i32* %14, align 4
  store i32 65536, i32* %15, align 4
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @EILSEQ, align 4
  store i32 %78, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %189

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %66
  br label %89

82:                                               ; preds = %38
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %82, %81
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %16, align 4
  br label %105

101:                                              ; preds = %89
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %136, %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @MIN(i32 %114, i64 %115)
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %112
  %119 = load i8*, i8** %7, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %121, 192
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @EILSEQ, align 4
  store i32 %125, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %189

126:                                              ; preds = %118
  %127 = load i32, i32* %16, align 4
  %128 = shl i32 %127, 6
  store i32 %128, i32* %16, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %7, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 63
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %112

139:                                              ; preds = %112
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  store i64 -2, i64* %5, align 8
  br label %189

155:                                              ; preds = %139
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @EILSEQ, align 4
  store i32 %160, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %189

161:                                              ; preds = %155
  %162 = load i32, i32* %16, align 4
  %163 = icmp sge i32 %162, 55296
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %16, align 4
  %166 = icmp sle i32 %165, 57343
  br i1 %166, label %170, label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %16, align 4
  %169 = icmp sgt i32 %168, 1114111
  br i1 %169, label %170, label %172

170:                                              ; preds = %167, %164
  %171 = load i32, i32* @EILSEQ, align 4
  store i32 %171, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %189

172:                                              ; preds = %167
  %173 = load i32*, i32** %6, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %16, align 4
  %177 = load i32*, i32** %6, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %186

184:                                              ; preds = %178
  %185 = load i32, i32* %14, align 4
  br label %186

186:                                              ; preds = %184, %183
  %187 = phi i32 [ 0, %183 ], [ %185, %184 ]
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %186, %170, %159, %143, %124, %77, %56, %37, %28
  %190 = load i64, i64* %5, align 8
  ret i64 %190
}

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
