; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_setup = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32 }

@UNI_NUM_IE_BLLI = common dso_local global i64 0, align 8
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_setup(%struct.uni_setup* %0, %struct.uni_setup* %1) #0 {
  %3 = alloca %struct.uni_setup*, align 8
  %4 = alloca %struct.uni_setup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_setup* %0, %struct.uni_setup** %3, align 8
  store %struct.uni_setup* %1, %struct.uni_setup** %4, align 8
  %7 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %8 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %7, i32 0, i32 34
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %14 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %13, i32 0, i32 34
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %17 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %16, i32 0, i32 34
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %20 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %19, i32 0, i32 33
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %26 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %25, i32 0, i32 33
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %29 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %28, i32 0, i32 33
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %32 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %31, i32 0, i32 32
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %38 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %37, i32 0, i32 32
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %41 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %40, i32 0, i32 32
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %44 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %43, i32 0, i32 31
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IE_ISGOOD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %50 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %49, i32 0, i32 31
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %53 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %52, i32 0, i32 31
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %56 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %55, i32 0, i32 30
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IE_ISGOOD(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %62 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %61, i32 0, i32 30
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %65 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %64, i32 0, i32 30
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @UNI_NUM_IE_BLLI, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %73 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %72, i32 0, i32 29
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IE_ISGOOD(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %82 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %81, i32 0, i32 29
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %88 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %87, i32 0, i32 29
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %6, align 8
  %92 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %71
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %67

97:                                               ; preds = %67
  %98 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %99 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %98, i32 0, i32 28
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IE_ISGOOD(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %105 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %104, i32 0, i32 28
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %108 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %107, i32 0, i32 28
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %97
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %110

110:                                              ; preds = %137, %109
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %116 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %115, i32 0, i32 27
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @IE_ISGOOD(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %114
  %124 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %125 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %124, i32 0, i32 27
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %131 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %130, i32 0, i32 27
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %6, align 8
  %135 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %123, %114
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %5, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %5, align 8
  br label %110

140:                                              ; preds = %110
  %141 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %142 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %141, i32 0, i32 26
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @IE_ISGOOD(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %148 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %147, i32 0, i32 26
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %151 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %150, i32 0, i32 26
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %146, %140
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %153

153:                                              ; preds = %180, %152
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %183

157:                                              ; preds = %153
  %158 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %159 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %158, i32 0, i32 25
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @IE_ISGOOD(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %157
  %167 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %168 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %167, i32 0, i32 25
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %174 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %173, i32 0, i32 25
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %6, align 8
  %178 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %178, align 4
  br label %179

179:                                              ; preds = %166, %157
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %5, align 8
  br label %153

183:                                              ; preds = %153
  %184 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %185 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %184, i32 0, i32 24
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @IE_ISGOOD(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %191 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %190, i32 0, i32 24
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %194 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %193, i32 0, i32 24
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189, %183
  %196 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %197 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %196, i32 0, i32 23
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @IE_ISGOOD(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %203 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %202, i32 0, i32 23
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %206 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %205, i32 0, i32 23
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %195
  %208 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %209 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %208, i32 0, i32 22
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @IE_ISGOOD(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %215 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %214, i32 0, i32 22
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %218 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %217, i32 0, i32 22
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %213, %207
  %220 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %221 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %220, i32 0, i32 21
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @IE_ISGOOD(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %227 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %226, i32 0, i32 21
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %230 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %229, i32 0, i32 21
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %225, %219
  %232 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %233 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %232, i32 0, i32 20
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @IE_ISGOOD(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %239 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %238, i32 0, i32 20
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %242 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %241, i32 0, i32 20
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %237, %231
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %244

244:                                              ; preds = %271, %243
  %245 = load i64, i64* %5, align 8
  %246 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %274

248:                                              ; preds = %244
  %249 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %250 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %249, i32 0, i32 19
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %5, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @IE_ISGOOD(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %248
  %258 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %259 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %258, i32 0, i32 19
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* %5, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %265 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %264, i32 0, i32 19
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %6, align 8
  %269 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32 %263, i32* %269, align 4
  br label %270

270:                                              ; preds = %257, %248
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %5, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %5, align 8
  br label %244

274:                                              ; preds = %244
  %275 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %276 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %275, i32 0, i32 18
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @IE_ISGOOD(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %282 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %281, i32 0, i32 18
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %285 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %284, i32 0, i32 18
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %280, %274
  %287 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %288 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %287, i32 0, i32 17
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @IE_ISGOOD(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %294 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %293, i32 0, i32 17
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %297 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %296, i32 0, i32 17
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %292, %286
  %299 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %300 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %299, i32 0, i32 16
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @IE_ISGOOD(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %306 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %305, i32 0, i32 16
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %309 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %308, i32 0, i32 16
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %304, %298
  %311 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %312 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %311, i32 0, i32 15
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @IE_ISGOOD(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %318 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %317, i32 0, i32 15
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %321 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %320, i32 0, i32 15
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %316, %310
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %323

323:                                              ; preds = %350, %322
  %324 = load i64, i64* %5, align 8
  %325 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %326 = icmp ult i64 %324, %325
  br i1 %326, label %327, label %353

327:                                              ; preds = %323
  %328 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %329 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %328, i32 0, i32 14
  %330 = load i32*, i32** %329, align 8
  %331 = load i64, i64* %5, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @IE_ISGOOD(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %327
  %337 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %338 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %337, i32 0, i32 14
  %339 = load i32*, i32** %338, align 8
  %340 = load i64, i64* %5, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %344 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %343, i32 0, i32 14
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, 1
  store i64 %347, i64* %6, align 8
  %348 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32 %342, i32* %348, align 4
  br label %349

349:                                              ; preds = %336, %327
  br label %350

350:                                              ; preds = %349
  %351 = load i64, i64* %5, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %5, align 8
  br label %323

353:                                              ; preds = %323
  %354 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %355 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @IE_ISGOOD(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %353
  %360 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %361 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %360, i32 0, i32 13
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %364 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %363, i32 0, i32 13
  store i32 %362, i32* %364, align 4
  br label %365

365:                                              ; preds = %359, %353
  %366 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %367 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %366, i32 0, i32 12
  %368 = load i32, i32* %367, align 8
  %369 = call i64 @IE_ISGOOD(i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %365
  %372 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %373 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %372, i32 0, i32 12
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %376 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %375, i32 0, i32 12
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %371, %365
  %378 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %379 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %378, i32 0, i32 11
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @IE_ISGOOD(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %377
  %384 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %385 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %384, i32 0, i32 11
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %388 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %387, i32 0, i32 11
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %383, %377
  %390 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %391 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %390, i32 0, i32 10
  %392 = load i32, i32* %391, align 8
  %393 = call i64 @IE_ISGOOD(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %389
  %396 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %397 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %396, i32 0, i32 10
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %400 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %399, i32 0, i32 10
  store i32 %398, i32* %400, align 8
  br label %401

401:                                              ; preds = %395, %389
  %402 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %403 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %402, i32 0, i32 9
  %404 = load i32, i32* %403, align 4
  %405 = call i64 @IE_ISGOOD(i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %401
  %408 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %409 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %408, i32 0, i32 9
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %412 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %411, i32 0, i32 9
  store i32 %410, i32* %412, align 4
  br label %413

413:                                              ; preds = %407, %401
  %414 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %415 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 8
  %417 = call i64 @IE_ISGOOD(i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %413
  %420 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %421 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %420, i32 0, i32 8
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %424 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %423, i32 0, i32 8
  store i32 %422, i32* %424, align 8
  br label %425

425:                                              ; preds = %419, %413
  %426 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %427 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %426, i32 0, i32 7
  %428 = load i32, i32* %427, align 4
  %429 = call i64 @IE_ISGOOD(i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %425
  %432 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %433 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %436 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %435, i32 0, i32 7
  store i32 %434, i32* %436, align 4
  br label %437

437:                                              ; preds = %431, %425
  %438 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %439 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = call i64 @IE_ISGOOD(i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %437
  %444 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %445 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %444, i32 0, i32 6
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %448 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %447, i32 0, i32 6
  store i32 %446, i32* %448, align 8
  br label %449

449:                                              ; preds = %443, %437
  %450 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %451 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %450, i32 0, i32 5
  %452 = load i32, i32* %451, align 4
  %453 = call i64 @IE_ISGOOD(i32 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %449
  %456 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %457 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %460 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %459, i32 0, i32 5
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %455, %449
  %462 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %463 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 8
  %465 = call i64 @IE_ISGOOD(i32 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %461
  %468 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %469 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %472 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %471, i32 0, i32 4
  store i32 %470, i32* %472, align 8
  br label %473

473:                                              ; preds = %467, %461
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %474

474:                                              ; preds = %501, %473
  %475 = load i64, i64* %5, align 8
  %476 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %477 = icmp ult i64 %475, %476
  br i1 %477, label %478, label %504

478:                                              ; preds = %474
  %479 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %480 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %479, i32 0, i32 3
  %481 = load i32*, i32** %480, align 8
  %482 = load i64, i64* %5, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @IE_ISGOOD(i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %500

487:                                              ; preds = %478
  %488 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %489 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %488, i32 0, i32 3
  %490 = load i32*, i32** %489, align 8
  %491 = load i64, i64* %5, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %495 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %494, i32 0, i32 3
  %496 = load i32*, i32** %495, align 8
  %497 = load i64, i64* %6, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %6, align 8
  %499 = getelementptr inbounds i32, i32* %496, i64 %497
  store i32 %493, i32* %499, align 4
  br label %500

500:                                              ; preds = %487, %478
  br label %501

501:                                              ; preds = %500
  %502 = load i64, i64* %5, align 8
  %503 = add i64 %502, 1
  store i64 %503, i64* %5, align 8
  br label %474

504:                                              ; preds = %474
  %505 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %506 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = call i64 @IE_ISGOOD(i32 %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %504
  %511 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %512 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %515 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %514, i32 0, i32 2
  store i32 %513, i32* %515, align 8
  br label %516

516:                                              ; preds = %510, %504
  %517 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %518 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = call i64 @IE_ISGOOD(i32 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %516
  %523 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %524 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %527 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %526, i32 0, i32 1
  store i32 %525, i32* %527, align 4
  br label %528

528:                                              ; preds = %522, %516
  %529 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %530 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = call i64 @IE_ISGOOD(i32 %531)
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %540

534:                                              ; preds = %528
  %535 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %536 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.uni_setup*, %struct.uni_setup** %4, align 8
  %539 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %538, i32 0, i32 0
  store i32 %537, i32* %539, align 8
  br label %540

540:                                              ; preds = %534, %528
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
