; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_open_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_USB_ADDRESS = common dso_local global i32 0, align 4
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@MAX_USB_ENDPOINT = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_LOW = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_INTERRUPT = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_OUT = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_IN = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_HIGH = common dso_local global i32 0, align 4
@MAX_USB_HUB_PORT = common dso_local global i32 0, align 4
@CVMX_USB_NO_MEMORY = common dso_local global i32 0, align 4
@__CVMX_USB_PIPE_FLAGS_OPEN = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_BULK = common dso_local global i32 0, align 4
@__CVMX_USB_PIPE_FLAGS_NEED_PING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_open_pipe(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %27, align 8
  %30 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %31 = load i32*, i32** %14, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %22, align 4
  %49 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %23, align 4
  %51 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %24, align 4
  %53 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %25, align 4
  %55 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %12
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @MAX_USB_ADDRESS, align 4
  %61 = icmp sgt i32 %59, %60
  br label %62

62:                                               ; preds = %58, %12
  %63 = phi i1 [ true, %12 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @cvmx_unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %69 = call i32 @CVMX_USB_RETURN(i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @MAX_USB_ENDPOINT, align 4
  %76 = icmp sgt i32 %74, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ true, %70 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @cvmx_unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %84 = call i32 @CVMX_USB_RETURN(i32 %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @CVMX_USB_SPEED_LOW, align 4
  %88 = icmp sgt i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @cvmx_unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %94 = call i32 @CVMX_USB_RETURN(i32 %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %19, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = icmp sgt i32 %99, 1024
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i1 [ true, %95 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @cvmx_unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %108 = call i32 @CVMX_USB_RETURN(i32 %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @CVMX_USB_TRANSFER_INTERRUPT, align 4
  %112 = icmp sgt i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @cvmx_unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %118 = call i32 @CVMX_USB_RETURN(i32 %117)
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* @CVMX_USB_DIRECTION_OUT, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* @CVMX_USB_DIRECTION_IN, align 4
  %126 = icmp ne i32 %124, %125
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = call i64 @cvmx_unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %134 = call i32 @CVMX_USB_RETURN(i32 %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* %22, align 4
  %137 = icmp slt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i64 @cvmx_unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %143 = call i32 @CVMX_USB_RETURN(i32 %142)
  br label %144

144:                                              ; preds = %141, %135
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* @CVMX_USB_TRANSFER_CONTROL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i1 [ false, %144 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i64 @cvmx_unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %158 = call i32 @CVMX_USB_RETURN(i32 %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %23, align 4
  %161 = icmp slt i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i64 @cvmx_unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %167 = call i32 @CVMX_USB_RETURN(i32 %166)
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @CVMX_USB_SPEED_HIGH, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %23, align 4
  %174 = icmp ne i32 %173, 0
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi i1 [ false, %168 ], [ %174, %172 ]
  %177 = zext i1 %176 to i32
  %178 = call i64 @cvmx_unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %182 = call i32 @CVMX_USB_RETURN(i32 %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i32, i32* %24, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* @MAX_USB_ADDRESS, align 4
  %189 = icmp sgt i32 %187, %188
  br label %190

190:                                              ; preds = %186, %183
  %191 = phi i1 [ true, %183 ], [ %189, %186 ]
  %192 = zext i1 %191 to i32
  %193 = call i64 @cvmx_unlikely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %197 = call i32 @CVMX_USB_RETURN(i32 %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %25, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* @MAX_USB_HUB_PORT, align 4
  %204 = icmp sgt i32 %202, %203
  br label %205

205:                                              ; preds = %201, %198
  %206 = phi i1 [ true, %198 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  %208 = call i64 @cvmx_unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %212 = call i32 @CVMX_USB_RETURN(i32 %211)
  br label %213

213:                                              ; preds = %210, %205
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  store %struct.TYPE_10__* %217, %struct.TYPE_10__** %26, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %219 = icmp ne %struct.TYPE_10__* %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @CVMX_USB_NO_MEMORY, align 4
  %222 = call i32 @CVMX_USB_RETURN(i32 %221)
  br label %223

223:                                              ; preds = %220, %213
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %227 = call i32 @__cvmx_usb_remove_pipe(%struct.TYPE_12__* %225, %struct.TYPE_10__* %226)
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_OPEN, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @CVMX_USB_SPEED_HIGH, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %223
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* @CVMX_USB_DIRECTION_OUT, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* @CVMX_USB_TRANSFER_BULK, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_NEED_PING, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %240, %236, %223
  %251 = load i32, i32* %16, align 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %18, align 4
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  %263 = load i32, i32* %20, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %21, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 6
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %22, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %250
  store i32 1, i32* %22, align 4
  br label %272

272:                                              ; preds = %271, %250
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %275 = call i64 @__cvmx_usb_pipe_needs_split(%struct.TYPE_11__* %273, %struct.TYPE_10__* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %272
  %278 = load i32, i32* %22, align 4
  %279 = mul nsw i32 %278, 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 7
  store i32 %279, i32* %281, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, 7
  %286 = and i32 %285, -8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %286, %289
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 8
  store i32 %290, i32* %292, align 8
  br label %306

293:                                              ; preds = %272
  %294 = load i32, i32* %22, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 7
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %299, %302
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 8
  store i32 %303, i32* %305, align 8
  br label %306

306:                                              ; preds = %293, %277
  %307 = load i32, i32* %23, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 9
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %24, align 4
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 10
  store i32 %310, i32* %312, align 8
  %313 = load i32, i32* %25, align 4
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 11
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 13
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 12
  store i32 -1, i32* %319, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %323 = call i32 @__cvmx_usb_append_pipe(i32* %321, %struct.TYPE_10__* %322)
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %326 = call i32 @__cvmx_usb_get_pipe_handle(%struct.TYPE_11__* %324, %struct.TYPE_10__* %325)
  %327 = call i32 @CVMX_USB_RETURN(i32 %326)
  %328 = load i32, i32* %13, align 4
  ret i32 %328
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

declare dso_local i32 @__cvmx_usb_remove_pipe(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i64 @__cvmx_usb_pipe_needs_split(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @__cvmx_usb_append_pipe(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @__cvmx_usb_get_pipe_handle(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
