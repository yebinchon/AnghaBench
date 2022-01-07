; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, %struct.TYPE_31__, i32 }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_31__ = type { i64 }

@VM_RCM_MASK = common dso_local global i32 0, align 4
@VM_RCM_SET = common dso_local global i32 0, align 4
@SM_CHANGE = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@CUT_LINEMODE = common dso_local global i32 0, align 4
@O_AUTOINDENT = common dso_local global i32 0, align 4
@TXT_AICHARS = common dso_local global i32 0, align 4
@LOG_CORRECT = common dso_local global i32 0, align 4
@VC_BUFFER = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@TXT_EMARK = common dso_local global i32 0, align 4
@TXT_OVERWRITE = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_change(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %15 = load i32, i32* @VM_RCM_MASK, align 4
  %16 = call i32 @F_CLR(%struct.TYPE_29__* %14, i32 %15)
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %18 = load i32, i32* @VM_RCM_SET, align 4
  %19 = call i32 @F_SET(%struct.TYPE_29__* %17, i32 %18)
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @db_eget(%struct.TYPE_30__* %30, i64 %34, i32** %13, i64* %7, i32* %9)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %311

41:                                               ; preds = %37
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %44 = call i32 @v_ia(%struct.TYPE_30__* %42, %struct.TYPE_29__* %43)
  store i32 %44, i32* %3, align 4
  br label %311

45:                                               ; preds = %29, %2
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %48 = call i32 @set_txt_std(%struct.TYPE_30__* %46, %struct.TYPE_29__* %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SM_CHANGE, align 4
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %53 = load i32, i32* @VM_LMODE, align 4
  %54 = call i64 @F_ISSET(%struct.TYPE_29__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @CUT_LINEMODE, align 4
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %68 = load i32, i32* @O_AUTOINDENT, align 4
  %69 = call i64 @O_ISSET(%struct.TYPE_30__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  %80 = call i64 @nonblank(%struct.TYPE_30__* %72, i64 %76, i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %311

83:                                               ; preds = %71
  %84 = load i32, i32* @TXT_AICHARS, align 4
  %85 = call i32 @LF_SET(i32 %84)
  br label %86

86:                                               ; preds = %83, %63
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @LOG_CORRECT, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %164, label %103

103:                                              ; preds = %87
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %107, %111
  br i1 %112, label %113, label %164

113:                                              ; preds = %103
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %116 = load i32, i32* @VC_BUFFER, align 4
  %117 = call i64 @F_ISSET(%struct.TYPE_29__* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 3
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %119
  %124 = phi i32* [ %121, %119 ], [ null, %122 ]
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 2
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @cut(%struct.TYPE_30__* %114, i32* %124, %struct.TYPE_28__* %126, %struct.TYPE_31__* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 1, i32* %3, align 4
  br label %311

133:                                              ; preds = %123
  %134 = load i64, i64* %7, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @TXT_APPENDEOL, align 4
  %138 = call i32 @LF_SET(i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* @TXT_EMARK, align 4
  %141 = load i32, i32* @TXT_OVERWRITE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @LF_SET(i32 %142)
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 2
  %148 = load i32*, i32** %13, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* @OOBLNO, align 4
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %152 = load i32, i32* @VC_C1SET, align 4
  %153 = call i64 @F_ISSET(%struct.TYPE_29__* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %139
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  br label %160

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i32 [ %158, %155 ], [ 1, %159 ]
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @v_txt(%struct.TYPE_30__* %144, %struct.TYPE_29__* %145, %struct.TYPE_31__* %147, i32* %148, i64 %149, i32 0, i32 %150, i32 %161, i32 %162)
  store i32 %163, i32* %3, align 4
  br label %311

164:                                              ; preds = %103, %87
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = load i32, i32* @VC_BUFFER, align 4
  %168 = call i64 @F_ISSET(%struct.TYPE_29__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 3
  br label %174

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i32* [ %172, %170 ], [ null, %173 ]
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 2
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @cut(%struct.TYPE_30__* %165, i32* %175, %struct.TYPE_28__* %177, %struct.TYPE_31__* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i32 1, i32* %3, align 4
  br label %311

184:                                              ; preds = %174
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %219

187:                                              ; preds = %184
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %187
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @DBG_FATAL, align 4
  %200 = call i64 @db_get(%struct.TYPE_30__* %194, i64 %198, i32 %199, i32** %13, i64* %7)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  store i32 1, i32* %3, align 4
  br label %311

203:                                              ; preds = %193
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = load i64, i64* %6, align 8
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @GET_SPACE_RETW(%struct.TYPE_30__* %204, i32* %205, i64 %206, i64 %210)
  %212 = load i32*, i32** %12, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @MEMMOVE(i32* %212, i32* %213, i64 %217)
  br label %220

219:                                              ; preds = %187, %184
  store i32* null, i32** %12, align 8
  br label %220

220:                                              ; preds = %219, %203
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 2
  %226 = load i32, i32* %10, align 4
  %227 = call i64 @del(%struct.TYPE_30__* %221, %struct.TYPE_28__* %223, %struct.TYPE_31__* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %220
  store i32 1, i32* %3, align 4
  br label %311

230:                                              ; preds = %220
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %260

233:                                              ; preds = %230
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = call i64 @db_insert(%struct.TYPE_30__* %234, i64 %238, i32* %239, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  store i32 1, i32* %3, align 4
  br label %311

247:                                              ; preds = %233
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 1
  store i64 %257, i64* %259, align 8
  store i64 %257, i64* %7, align 8
  br label %260

260:                                              ; preds = %247, %230
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @db_eget(%struct.TYPE_30__* %261, i64 %265, i32** %13, i64* %7, i32* %9)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %260
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  store i32 1, i32* %3, align 4
  br label %311

272:                                              ; preds = %268
  store i64 0, i64* %7, align 8
  br label %273

273:                                              ; preds = %272, %260
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %7, align 8
  %279 = icmp uge i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load i32, i32* @TXT_APPENDEOL, align 4
  %282 = call i32 @LF_SET(i32 %281)
  br label %283

283:                                              ; preds = %280, %273
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %286 = load i32*, i32** %13, align 8
  %287 = load i64, i64* %7, align 8
  %288 = load i32, i32* @OOBLNO, align 4
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %290 = load i32, i32* @VC_C1SET, align 4
  %291 = call i64 @F_ISSET(%struct.TYPE_29__* %289, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %283
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  br label %298

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i32 [ %296, %293 ], [ 1, %297 ]
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @v_txt(%struct.TYPE_30__* %284, %struct.TYPE_29__* %285, %struct.TYPE_31__* null, i32* %286, i64 %287, i32 0, i32 %288, i32 %299, i32 %300)
  store i32 %301, i32* %11, align 4
  %302 = load i32*, i32** %12, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %298
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %306 = load i32*, i32** %12, align 8
  %307 = load i64, i64* %6, align 8
  %308 = call i32 @FREE_SPACEW(%struct.TYPE_30__* %305, i32* %306, i64 %307)
  br label %309

309:                                              ; preds = %304, %298
  %310 = load i32, i32* %11, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %271, %246, %229, %202, %183, %160, %132, %82, %41, %40
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @F_CLR(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @db_eget(%struct.TYPE_30__*, i64, i32**, i64*, i32*) #1

declare dso_local i32 @v_ia(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @set_txt_std(%struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @nonblank(%struct.TYPE_30__*, i64, i64*) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @cut(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @v_txt(%struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_31__*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_30__*, i64, i32, i32**, i64*) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_30__*, i32*, i64, i64) #1

declare dso_local i32 @MEMMOVE(i32*, i32*, i64) #1

declare dso_local i64 @del(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_31__*, i32) #1

declare dso_local i64 @db_insert(%struct.TYPE_30__*, i64, i32*, i64) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_30__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
