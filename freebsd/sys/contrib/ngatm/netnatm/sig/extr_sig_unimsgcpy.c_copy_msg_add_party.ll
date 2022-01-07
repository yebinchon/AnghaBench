; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_add_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_add_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32 }

@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_add_party(%struct.uni_add_party* %0, %struct.uni_add_party* %1) #0 {
  %3 = alloca %struct.uni_add_party*, align 8
  %4 = alloca %struct.uni_add_party*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_add_party* %0, %struct.uni_add_party** %3, align 8
  store %struct.uni_add_party* %1, %struct.uni_add_party** %4, align 8
  %7 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %8 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %7, i32 0, i32 19
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %14 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %13, i32 0, i32 19
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %17 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %16, i32 0, i32 19
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %20 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %19, i32 0, i32 18
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %26 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %25, i32 0, i32 18
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %29 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %32 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %38 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %37, i32 0, i32 17
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %41 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %40, i32 0, i32 17
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %44 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IE_ISGOOD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %50 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %49, i32 0, i32 16
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %53 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %61 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %60, i32 0, i32 15
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IE_ISGOOD(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %70 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %69, i32 0, i32 15
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %76 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %75, i32 0, i32 15
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %68, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %55

85:                                               ; preds = %55
  %86 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %87 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IE_ISGOOD(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %93 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %96 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %95, i32 0, i32 14
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %104 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %103, i32 0, i32 13
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @IE_ISGOOD(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %102
  %112 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %113 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %112, i32 0, i32 13
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %119 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %118, i32 0, i32 13
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %6, align 8
  %123 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %111, %102
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %98

128:                                              ; preds = %98
  %129 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %130 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @IE_ISGOOD(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %136 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %139 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %138, i32 0, i32 12
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %128
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %141

141:                                              ; preds = %168, %140
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %147 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %146, i32 0, i32 11
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IE_ISGOOD(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %145
  %155 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %156 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %155, i32 0, i32 11
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %162 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %161, i32 0, i32 11
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %6, align 8
  %166 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %160, i32* %166, align 4
  br label %167

167:                                              ; preds = %154, %145
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %5, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %5, align 8
  br label %141

171:                                              ; preds = %141
  %172 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %173 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @IE_ISGOOD(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %179 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %182 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %171
  %184 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %185 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @IE_ISGOOD(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %191 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %194 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189, %183
  %196 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %197 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @IE_ISGOOD(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %203 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %206 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %195
  %208 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %209 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @IE_ISGOOD(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %215 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %218 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %213, %207
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %220

220:                                              ; preds = %247, %219
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %223 = icmp ult i64 %221, %222
  br i1 %223, label %224, label %250

224:                                              ; preds = %220
  %225 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %226 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* %5, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @IE_ISGOOD(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %224
  %234 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %235 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %234, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %5, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %241 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %6, align 8
  %245 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32 %239, i32* %245, align 4
  br label %246

246:                                              ; preds = %233, %224
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %5, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %5, align 8
  br label %220

250:                                              ; preds = %220
  %251 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %252 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @IE_ISGOOD(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %258 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %261 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %256, %250
  %263 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %264 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @IE_ISGOOD(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %270 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %273 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %268, %262
  %275 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %276 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @IE_ISGOOD(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %282 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %285 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %280, %274
  %287 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %288 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @IE_ISGOOD(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %294 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %297 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %292, %286
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %299

299:                                              ; preds = %326, %298
  %300 = load i64, i64* %5, align 8
  %301 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %329

303:                                              ; preds = %299
  %304 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %305 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* %5, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @IE_ISGOOD(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %303
  %313 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %314 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %5, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %320 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i64, i64* %6, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %6, align 8
  %324 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32 %318, i32* %324, align 4
  br label %325

325:                                              ; preds = %312, %303
  br label %326

326:                                              ; preds = %325
  %327 = load i64, i64* %5, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %5, align 8
  br label %299

329:                                              ; preds = %299
  %330 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %331 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i64 @IE_ISGOOD(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %329
  %336 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %337 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.uni_add_party*, %struct.uni_add_party** %4, align 8
  %340 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %335, %329
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
