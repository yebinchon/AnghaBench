; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_txt.c_ex_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_txt.c_ex_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_30__*, i32)* }
%struct.TYPE_32__ = type { i32, i32, i8, %struct.TYPE_31__ }
%struct.TYPE_29__ = type { i32, i64, i8*, i64, i64 }

@q = common dso_local global i32 0, align 4
@G_SCRIPTED = common dso_local global i32 0, align 4
@TXT_AUTOINDENT = common dso_local global i32 0, align 4
@TXT_EOFCHAR = common dso_local global i32 0, align 4
@CH_MAPPED = common dso_local global i32 0, align 4
@TXT_BACKSLASH = common dso_local global i32 0, align 4
@TXT_CR = common dso_local global i32 0, align 4
@TXT_DOTTERM = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@TXT_CNTRLD = common dso_local global i32 0, align 4
@EX_TERM_CE = common dso_local global i32 0, align 4
@TXT_BEAUTIFY = common dso_local global i32 0, align 4
@K_FORMFEED = common dso_local global i32 0, align 4
@K_TAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_txt(%struct.TYPE_30__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @TAILQ_EMPTY(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_29__* @TAILQ_FIRST(i32* %23)
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %14, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %26 = load i32, i32* @q, align 4
  %27 = call i32* @TAILQ_NEXT(%struct.TYPE_29__* %25, i32 %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %22
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @text_lfree(i32* %35)
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %51

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %43 = call %struct.TYPE_29__* @text_init(%struct.TYPE_30__* %42, i32* null, i32 0, i32 32)
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %14, align 8
  %44 = icmp eq %struct.TYPE_29__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %460

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %49 = load i32, i32* @q, align 4
  %50 = call i32 @TAILQ_INSERT_HEAD(i32* %47, %struct.TYPE_29__* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %37
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %59, align 8
  store %struct.TYPE_31__* %60, %struct.TYPE_31__** %11, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %62 = load i32, i32* @G_SCRIPTED, align 4
  %63 = call i64 @F_ISSET(%struct.TYPE_31__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* @TXT_AUTOINDENT, align 4
  %67 = call i32 @LF_CLR(i32 %66)
  br label %90

68:                                               ; preds = %51
  %69 = load i32, i32* @TXT_AUTOINDENT, align 4
  %70 = call i64 @LF_ISSET(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* @TXT_EOFCHAR, align 4
  %74 = call i32 @LF_SET(i32 %73)
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %80 = call i64 @v_txt_auto(%struct.TYPE_30__* %75, i64 %78, %struct.TYPE_29__* null, i64 0, %struct.TYPE_29__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %460

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @txt_prompt(%struct.TYPE_30__* %85, %struct.TYPE_29__* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %65
  store i32 140, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %457, %403, %382, %346, %334, %101, %90
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %93 = call i64 @v_event_get(%struct.TYPE_30__* %92, %struct.TYPE_32__* %10, i32 0, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %460

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %104 [
    i32 138, label %99
    i32 136, label %100
    i32 134, label %101
    i32 133, label %101
    i32 137, label %102
    i32 135, label %103
  ]

99:                                               ; preds = %96
  br label %107

100:                                              ; preds = %96
  br label %460

101:                                              ; preds = %96, %96
  br label %91

102:                                              ; preds = %96
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %96, %102
  br label %189

104:                                              ; preds = %96
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %106 = call i32 @v_event_err(%struct.TYPE_30__* %105, %struct.TYPE_32__* %10)
  br label %189

107:                                              ; preds = %99
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 @BINC_GOTOW(%struct.TYPE_30__* %108, i8* %111, i32 %114, i64 %118)
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %425 [
    i32 130, label %122
    i32 129, label %129
    i32 132, label %251
    i32 128, label %265
    i32 131, label %279
  ]

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 3
  %124 = load i32, i32* @CH_MAPPED, align 4
  %125 = call i64 @F_ISSET(%struct.TYPE_31__* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  br label %426

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %107, %128
  %130 = load i32, i32* @TXT_BACKSLASH, align 4
  %131 = call i64 @LF_ISSET(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 1
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 92
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %426

151:                                              ; preds = %138, %133, %129
  %152 = load i32, i32* @TXT_CR, align 4
  %153 = call i64 @LF_ISSET(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 0, i8* %162, align 1
  br label %458

163:                                              ; preds = %151
  %164 = load i32, i32* @TXT_DOTTERM, align 4
  %165 = call i64 @LF_ISSET(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %163
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  %175 = icmp eq i64 %170, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %167
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, 1
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 46
  br i1 %187, label %188, label %196

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %104, %103
  %190 = load i32*, i32** %7, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %192 = load i32, i32* @q, align 4
  %193 = call i32 @TAILQ_REMOVE(i32* %190, %struct.TYPE_29__* %191, i32 %192)
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %195 = call i32 @text_free(%struct.TYPE_29__* %194)
  br label %458

196:                                              ; preds = %176, %167, %163
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %198 = call %struct.TYPE_29__* @text_init(%struct.TYPE_30__* %197, i32* null, i32 0, i32 32)
  store %struct.TYPE_29__* %198, %struct.TYPE_29__** %13, align 8
  %199 = icmp eq %struct.TYPE_29__* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %460

201:                                              ; preds = %196
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* @TXT_AUTOINDENT, align 4
  %209 = call i64 @LF_ISSET(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %201
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  store i32 0, i32* %18, align 4
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %216 = load i64, i64* @OOBLNO, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %220 = call i64 @v_txt_auto(%struct.TYPE_30__* %215, i64 %216, %struct.TYPE_29__* %12, i64 %218, %struct.TYPE_29__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %460

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @free(i8* %225)
  br label %239

227:                                              ; preds = %211
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %229 = load i64, i64* @OOBLNO, align 8
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %235 = call i64 @v_txt_auto(%struct.TYPE_30__* %228, i64 %229, %struct.TYPE_29__* %230, i64 %233, %struct.TYPE_29__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %460

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %223
  store i32 140, i32* %15, align 4
  br label %240

240:                                              ; preds = %239, %201
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @txt_prompt(%struct.TYPE_30__* %241, %struct.TYPE_29__* %242, i32 %243, i32 %244)
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %246, %struct.TYPE_29__** %14, align 8
  %247 = load i32*, i32** %7, align 8
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %249 = load i32, i32* @q, align 4
  %250 = call i32 @TAILQ_INSERT_TAIL(i32* %247, %struct.TYPE_29__* %248, i32 %249)
  br label %457

251:                                              ; preds = %107
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp sle i64 %254, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load i32, i32* @TXT_AUTOINDENT, align 4
  %261 = call i64 @LF_ISSET(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  store i32 141, i32* %15, align 4
  br label %264

264:                                              ; preds = %263, %259, %251
  br label %426

265:                                              ; preds = %107
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp sle i64 %268, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %265
  %274 = load i32, i32* @TXT_AUTOINDENT, align 4
  %275 = call i64 @LF_ISSET(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 139, i32* %15, align 4
  br label %278

278:                                              ; preds = %277, %273, %265
  br label %426

279:                                              ; preds = %107
  %280 = load i32, i32* @TXT_CNTRLD, align 4
  %281 = call i64 @LF_ISSET(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %325

283:                                              ; preds = %279
  store i64 0, i64* %16, align 8
  br label %284

284:                                              ; preds = %301, %283
  %285 = load i64, i64* %16, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp ult i64 %285, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %284
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = load i64, i64* %16, align 8
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = call i32 @isblank(i8 signext %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %290
  br label %304

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %16, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %16, align 8
  br label %284

304:                                              ; preds = %299, %284
  %305 = load i64, i64* %16, align 8
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %305, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %304
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 1
  store i64 1, i64* %312, align 8
  %313 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  %314 = load i8, i8* %313, align 8
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  store i8 %314, i8* %318, align 1
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 1
  store i8 0, i8* %322, align 1
  %323 = call i32 @putchar(i8 signext 10)
  br label %458

324:                                              ; preds = %304
  br label %325

325:                                              ; preds = %324, %279
  %326 = load i32, i32* @TXT_AUTOINDENT, align 4
  %327 = call i64 @LF_ISSET(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329, %325
  br label %91

335:                                              ; preds = %329
  %336 = load i32, i32* %15, align 4
  switch i32 %336, label %411 [
    i32 141, label %337
    i32 139, label %373
    i32 140, label %395
  ]

337:                                              ; preds = %335
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 1
  %345 = icmp sgt i64 %340, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  br label %91

347:                                              ; preds = %337
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  store i8* null, i8** %348, align 8
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  store i32 0, i32* %349, align 8
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @BINC_GOTOW(%struct.TYPE_30__* %350, i8* %352, i32 %354, i64 %357)
  %359 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @MEMCPY(i8* %360, i8* %363, i64 %366)
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 1
  store i64 %370, i64* %371, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 3
  store i64 %370, i64* %372, align 8
  store i32 140, i32* %15, align 4
  store i32 1, i32* %18, align 4
  br label %384

373:                                              ; preds = %335
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = add nsw i64 %379, 1
  %381 = icmp sgt i64 %376, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %91

383:                                              ; preds = %373
  store i32 140, i32* %15, align 4
  br label %384

384:                                              ; preds = %383, %347
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 0
  %387 = load i32 (%struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_30__*, i32)** %386, align 8
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %389 = load i32, i32* @EX_TERM_CE, align 4
  %390 = call i32 %387(%struct.TYPE_30__* %388, i32 %389)
  %391 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %392 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %391, i32 0, i32 1
  store i64 0, i64* %392, align 8
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i32 0, i32 3
  store i64 0, i64* %394, align 8
  br label %413

395:                                              ; preds = %335
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %397 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %400 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = icmp sgt i64 %398, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %395
  br label %91

404:                                              ; preds = %395
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %406 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %407 = call i32 @txt_dent(%struct.TYPE_30__* %405, %struct.TYPE_29__* %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  br label %460

410:                                              ; preds = %404
  br label %413

411:                                              ; preds = %335
  %412 = call i32 (...) @abort() #3
  unreachable

413:                                              ; preds = %410, %384
  %414 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %414, i32 0, i32 0
  %416 = load i32 (%struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_30__*, i32)** %415, align 8
  %417 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %418 = load i32, i32* @EX_TERM_CE, align 4
  %419 = call i32 %416(%struct.TYPE_30__* %417, i32 %418)
  %420 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %421 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %422 = load i32, i32* %8, align 4
  %423 = load i32, i32* %9, align 4
  %424 = call i32 @txt_prompt(%struct.TYPE_30__* %420, %struct.TYPE_29__* %421, i32 %422, i32 %423)
  br label %457

425:                                              ; preds = %107
  br label %426

426:                                              ; preds = %425, %278, %264, %150, %127
  %427 = load i32, i32* @TXT_BEAUTIFY, align 4
  %428 = call i64 @LF_ISSET(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  %432 = load i8, i8* %431, align 8
  %433 = call i32 @ISCNTRL(i8 signext %432)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @K_FORMFEED, align 4
  %439 = icmp ne i32 %437, %438
  br i1 %439, label %440, label %446

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @K_TAB, align 4
  %444 = icmp ne i32 %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  br label %457

446:                                              ; preds = %440, %435, %430, %426
  %447 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  %448 = load i8, i8* %447, align 8
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 2
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %453 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, 1
  store i64 %455, i64* %453, align 8
  %456 = getelementptr inbounds i8, i8* %451, i64 %454
  store i8 %448, i8* %456, align 1
  br label %457

457:                                              ; preds = %446, %445, %413, %240
  br label %91

458:                                              ; preds = %310, %189, %155
  %459 = load i32, i32* %17, align 4
  store i32 %459, i32* %5, align 4
  br label %462

460:                                              ; preds = %409, %237, %222, %200, %100, %95, %82, %45
  br label %461

461:                                              ; preds = %460
  store i32 1, i32* %5, align 4
  br label %462

462:                                              ; preds = %461, %458
  %463 = load i32, i32* %5, align 4
  ret i32 %463
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_29__* @TAILQ_FIRST(i32*) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @text_lfree(i32*) #1

declare dso_local %struct.TYPE_29__* @text_init(%struct.TYPE_30__*, i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @LF_CLR(i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @v_txt_auto(%struct.TYPE_30__*, i64, %struct.TYPE_29__*, i64, %struct.TYPE_29__*) #1

declare dso_local i32 @txt_prompt(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @v_event_get(%struct.TYPE_30__*, %struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @v_event_err(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @BINC_GOTOW(%struct.TYPE_30__*, i8*, i32, i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @text_free(%struct.TYPE_29__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @isblank(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @MEMCPY(i8*, i8*, i64) #1

declare dso_local i32 @txt_dent(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ISCNTRL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
