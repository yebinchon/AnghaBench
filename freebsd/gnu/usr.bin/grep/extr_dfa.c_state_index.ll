; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_state_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_state_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32, i64*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@dfa_state = common dso_local global i32 0, align 4
@position = common dso_local global i32 0, align 4
@BACKREF = common dso_local global i64 0, align 8
@NO_CONSTRAINT = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfa*, %struct.TYPE_11__*, i32, i32)* @state_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_index(%struct.dfa* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dfa*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %48, %4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %36, %44
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %22

51:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %175, %51
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.dfa*, %struct.dfa** %6, align 8
  %55 = getelementptr inbounds %struct.dfa, %struct.dfa* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %178

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.dfa*, %struct.dfa** %6, align 8
  %61 = getelementptr inbounds %struct.dfa, %struct.dfa* %60, i32 0, i32 2
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %59, %67
  br i1 %68, label %105, label %69

69:                                               ; preds = %58
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dfa*, %struct.dfa** %6, align 8
  %74 = getelementptr inbounds %struct.dfa, %struct.dfa* %73, i32 0, i32 2
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %72, %81
  br i1 %82, label %105, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.dfa*, %struct.dfa** %6, align 8
  %86 = getelementptr inbounds %struct.dfa, %struct.dfa* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %84, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.dfa*, %struct.dfa** %6, align 8
  %97 = getelementptr inbounds %struct.dfa, %struct.dfa* %96, i32 0, i32 2
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %95, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %94, %83, %69, %58
  br label %175

106:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %163, %106
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %166

113:                                              ; preds = %107
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dfa*, %struct.dfa** %6, align 8
  %123 = getelementptr inbounds %struct.dfa, %struct.dfa* %122, i32 0, i32 2
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %121, %135
  br i1 %136, label %161, label %137

137:                                              ; preds = %113
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dfa*, %struct.dfa** %6, align 8
  %147 = getelementptr inbounds %struct.dfa, %struct.dfa* %146, i32 0, i32 2
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %145, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %137, %113
  br label %166

162:                                              ; preds = %137
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %107

166:                                              ; preds = %161, %107
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %5, align 4
  br label %400

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %105
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %52

178:                                              ; preds = %52
  %179 = load %struct.dfa*, %struct.dfa** %6, align 8
  %180 = getelementptr inbounds %struct.dfa, %struct.dfa* %179, i32 0, i32 2
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* @dfa_state, align 4
  %183 = load %struct.dfa*, %struct.dfa** %6, align 8
  %184 = getelementptr inbounds %struct.dfa, %struct.dfa* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.dfa*, %struct.dfa** %6, align 8
  %187 = getelementptr inbounds %struct.dfa, %struct.dfa* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @REALLOC_IF_NECESSARY(%struct.TYPE_13__* %181, i32 %182, i32 %185, i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.dfa*, %struct.dfa** %6, align 8
  %192 = getelementptr inbounds %struct.dfa, %struct.dfa* %191, i32 0, i32 2
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  store i32 %190, i32* %197, align 8
  %198 = load %struct.dfa*, %struct.dfa** %6, align 8
  %199 = getelementptr inbounds %struct.dfa, %struct.dfa* %198, i32 0, i32 2
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = load i32, i32* @position, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @MALLOC(%struct.TYPE_14__* %206, i32 %207, i32 %210)
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %213 = load %struct.dfa*, %struct.dfa** %6, align 8
  %214 = getelementptr inbounds %struct.dfa, %struct.dfa* %213, i32 0, i32 2
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 7
  %220 = call i32 @copy(%struct.TYPE_11__* %212, %struct.TYPE_12__* %219)
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.dfa*, %struct.dfa** %6, align 8
  %223 = getelementptr inbounds %struct.dfa, %struct.dfa* %222, i32 0, i32 2
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  store i32 %221, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.dfa*, %struct.dfa** %6, align 8
  %231 = getelementptr inbounds %struct.dfa, %struct.dfa* %230, i32 0, i32 2
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  store i32 %229, i32* %236, align 8
  %237 = load %struct.dfa*, %struct.dfa** %6, align 8
  %238 = getelementptr inbounds %struct.dfa, %struct.dfa* %237, i32 0, i32 2
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  store i32 0, i32* %243, align 4
  %244 = load %struct.dfa*, %struct.dfa** %6, align 8
  %245 = getelementptr inbounds %struct.dfa, %struct.dfa* %244, i32 0, i32 2
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 4
  store i32 0, i32* %250, align 8
  %251 = load %struct.dfa*, %struct.dfa** %6, align 8
  %252 = getelementptr inbounds %struct.dfa, %struct.dfa* %251, i32 0, i32 2
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 5
  store i64 0, i64* %257, align 8
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %391, %178
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %394

264:                                              ; preds = %258
  %265 = load %struct.dfa*, %struct.dfa** %6, align 8
  %266 = getelementptr inbounds %struct.dfa, %struct.dfa* %265, i32 0, i32 1
  %267 = load i64*, i64** %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %267, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %356

280:                                              ; preds = %264
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %11, align 4
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i64 @SUCCEEDS_IN_CONTEXT(i32 %289, i32 %290, i32 0, i32 %291, i32 0)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %312, label %294

294:                                              ; preds = %280
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %9, align 4
  %298 = call i64 @SUCCEEDS_IN_CONTEXT(i32 %295, i32 %296, i32 0, i32 %297, i32 1)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %294
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i64 @SUCCEEDS_IN_CONTEXT(i32 %301, i32 %302, i32 1, i32 %303, i32 0)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %300
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %9, align 4
  %310 = call i64 @SUCCEEDS_IN_CONTEXT(i32 %307, i32 %308, i32 1, i32 %309, i32 1)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %306, %300, %294, %280
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.dfa*, %struct.dfa** %6, align 8
  %315 = getelementptr inbounds %struct.dfa, %struct.dfa* %314, i32 0, i32 2
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %315, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %313
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %312, %306
  %324 = load %struct.dfa*, %struct.dfa** %6, align 8
  %325 = getelementptr inbounds %struct.dfa, %struct.dfa* %324, i32 0, i32 2
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %325, align 8
  %327 = load i32, i32* %12, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %355, label %333

333:                                              ; preds = %323
  %334 = load %struct.dfa*, %struct.dfa** %6, align 8
  %335 = getelementptr inbounds %struct.dfa, %struct.dfa* %334, i32 0, i32 1
  %336 = load i64*, i64** %335, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %338, align 8
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %336, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.dfa*, %struct.dfa** %6, align 8
  %349 = getelementptr inbounds %struct.dfa, %struct.dfa* %348, i32 0, i32 2
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 5
  store i64 %347, i64* %354, align 8
  br label %355

355:                                              ; preds = %333, %323
  br label %390

356:                                              ; preds = %264
  %357 = load %struct.dfa*, %struct.dfa** %6, align 8
  %358 = getelementptr inbounds %struct.dfa, %struct.dfa* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %361, align 8
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %359, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @BACKREF, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %389

373:                                              ; preds = %356
  %374 = load i32, i32* @NO_CONSTRAINT, align 4
  %375 = load %struct.dfa*, %struct.dfa** %6, align 8
  %376 = getelementptr inbounds %struct.dfa, %struct.dfa* %375, i32 0, i32 2
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %376, align 8
  %378 = load i32, i32* %12, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 4
  store i32 %374, i32* %381, align 8
  %382 = load %struct.dfa*, %struct.dfa** %6, align 8
  %383 = getelementptr inbounds %struct.dfa, %struct.dfa* %382, i32 0, i32 2
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %383, align 8
  %385 = load i32, i32* %12, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 3
  store i32 1, i32* %388, align 4
  br label %389

389:                                              ; preds = %373, %356
  br label %390

390:                                              ; preds = %389, %355
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %13, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %13, align 4
  br label %258

394:                                              ; preds = %258
  %395 = load %struct.dfa*, %struct.dfa** %6, align 8
  %396 = getelementptr inbounds %struct.dfa, %struct.dfa* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* %12, align 4
  store i32 %399, i32* %5, align 4
  br label %400

400:                                              ; preds = %394, %172
  %401 = load i32, i32* %5, align 4
  ret i32 %401
}

declare dso_local i32 @REALLOC_IF_NECESSARY(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @MALLOC(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @copy(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @SUCCEEDS_IN_CONTEXT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
