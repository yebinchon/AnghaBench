; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsendv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsendv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }
%struct.rsocket = type { i32, i64, i64, i64, i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@RS_OLAP_START_SIZE = common dso_local global i64 0, align 8
@idm = common dso_local global i32 0, align 4
@rs_opening = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@rs_conn_can_send = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@RS_MAX_TRANSFER = common dso_local global i64 0, align 8
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iovec*, i32, i32)* @rsendv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsendv(i32 %0, %struct.iovec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsocket*, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %19 = load i64, i64* @RS_OLAP_START_SIZE, align 8
  store i64 %19, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.rsocket* @idm_at(i32* @idm, i32 %20)
  store %struct.rsocket* %21, %struct.rsocket** %10, align 8
  %22 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @rs_opening, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %30 = call i32 @rs_do_connect(%struct.rsocket* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EINPROGRESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @EAGAIN, align 8
  store i64 %38, i64* @errno, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %5, align 4
  br label %325

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.iovec*, %struct.iovec** %7, align 8
  store %struct.iovec* %43, %struct.iovec** %11, align 8
  %44 = load %struct.iovec*, %struct.iovec** %7, align 8
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i64 0
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  store i32 1, i32* %17, align 4
  br label %48

48:                                               ; preds = %61, %42
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.iovec*, %struct.iovec** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i64 %55
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %12, align 8
  %66 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %67 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %66, i32 0, i32 5
  %68 = call i32 @fastlock_acquire(i32* %67)
  %69 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %70 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @rs_send_iomaps(%struct.rsocket* %74, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %305

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %64
  br label %82

82:                                               ; preds = %300, %81
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %304

85:                                               ; preds = %82
  %86 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %87 = call i32 @rs_can_send(%struct.rsocket* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %91 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @rs_nonblocking(%struct.rsocket* %91, i32 %92)
  %94 = load i32, i32* @rs_conn_can_send, align 4
  %95 = call i32 @rs_get_comp(%struct.rsocket* %90, i32 %93, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %304

99:                                               ; preds = %89
  %100 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %101 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @rs_writable, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @ECONNRESET, align 4
  %108 = call i32 @ERR(i32 %107)
  store i32 %108, i32* %18, align 4
  br label %304

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i64, i64* %16, align 8
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* @RS_MAX_TRANSFER, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %16, align 8
  %121 = shl i64 %120, 1
  store i64 %121, i64* %16, align 8
  br label %122

122:                                              ; preds = %119, %114
  br label %125

123:                                              ; preds = %110
  %124 = load i64, i64* %12, align 8
  store i64 %124, i64* %15, align 8
  br label %125

125:                                              ; preds = %123, %122
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %128 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ugt i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %133 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %15, align 8
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i64, i64* %15, align 8
  %137 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %138 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %137, i32 0, i32 7
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %141 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %136, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %135
  %148 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %149 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %148, i32 0, i32 7
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %152 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %15, align 8
  br label %157

157:                                              ; preds = %147, %135
  %158 = load i64, i64* %15, align 8
  %159 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %160 = call i64 @rs_sbuf_left(%struct.rsocket* %159)
  %161 = icmp ule i64 %158, %160
  br i1 %161, label %162, label %218

162:                                              ; preds = %157
  %163 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %164 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %163, i32 0, i32 6
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @rs_copy_iov(i8* %169, %struct.iovec** %11, i64* %14, i64 %170)
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %174 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %173, i32 0, i32 6
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i64 %172, i64* %177, align 8
  %178 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %179 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %180 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %179, i32 0, i32 6
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %185 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ule i64 %183, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %162
  %189 = load i32, i32* @IBV_SEND_INLINE, align 4
  br label %191

190:                                              ; preds = %162
  br label %191

191:                                              ; preds = %190, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ]
  %193 = call i32 @rs_write_data(%struct.rsocket* %178, %struct.TYPE_4__* %181, i32 1, i64 %182, i32 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i64, i64* %15, align 8
  %195 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %196 = call i64 @rs_sbuf_left(%struct.rsocket* %195)
  %197 = icmp ult i64 %194, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %201 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %200, i32 0, i32 6
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, %199
  store i64 %206, i64* %204, align 8
  br label %217

207:                                              ; preds = %191
  %208 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %209 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %213 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %212, i32 0, i32 6
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i64 %211, i64* %216, align 8
  br label %217

217:                                              ; preds = %207, %198
  br label %295

218:                                              ; preds = %157
  %219 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %220 = call i64 @rs_sbuf_left(%struct.rsocket* %219)
  %221 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %222 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %221, i32 0, i32 6
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  store i64 %220, i64* %225, align 8
  %226 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %227 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %226, i32 0, i32 6
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i8*
  %233 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %234 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %233, i32 0, i32 6
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @rs_copy_iov(i8* %232, %struct.iovec** %11, i64* %14, i64 %238)
  %240 = load i64, i64* %15, align 8
  %241 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %242 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %241, i32 0, i32 6
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %240, %246
  %248 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %249 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %248, i32 0, i32 6
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i64 %247, i64* %252, align 8
  %253 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %254 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %257 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %256, i32 0, i32 6
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @rs_copy_iov(i8* %255, %struct.iovec** %11, i64* %14, i64 %261)
  %263 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %264 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %265 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %264, i32 0, i32 6
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = load i64, i64* %15, align 8
  %269 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %270 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ule i64 %268, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %218
  %274 = load i32, i32* @IBV_SEND_INLINE, align 4
  br label %276

275:                                              ; preds = %218
  br label %276

276:                                              ; preds = %275, %273
  %277 = phi i32 [ %274, %273 ], [ 0, %275 ]
  %278 = call i32 @rs_write_data(%struct.rsocket* %263, %struct.TYPE_4__* %266, i32 2, i64 %267, i32 %277)
  store i32 %278, i32* %18, align 4
  %279 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %280 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %279, i32 0, i32 4
  %281 = load i8*, i8** %280, align 8
  %282 = ptrtoint i8* %281 to i64
  %283 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %284 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %283, i32 0, i32 6
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 1
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %282, %288
  %290 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %291 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %290, i32 0, i32 6
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  store i64 %289, i64* %294, align 8
  br label %295

295:                                              ; preds = %276, %217
  %296 = load i32, i32* %18, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  br label %304

299:                                              ; preds = %295
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %15, align 8
  %302 = load i64, i64* %12, align 8
  %303 = sub i64 %302, %301
  store i64 %303, i64* %12, align 8
  br label %82

304:                                              ; preds = %298, %106, %98, %82
  br label %305

305:                                              ; preds = %304, %79
  %306 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %307 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %306, i32 0, i32 5
  %308 = call i32 @fastlock_release(i32* %307)
  %309 = load i32, i32* %18, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = load i64, i64* %12, align 8
  %313 = load i64, i64* %13, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = load i32, i32* %18, align 4
  %317 = sext i32 %316 to i64
  br label %322

318:                                              ; preds = %311, %305
  %319 = load i64, i64* %13, align 8
  %320 = load i64, i64* %12, align 8
  %321 = sub i64 %319, %320
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i64 [ %317, %315 ], [ %321, %318 ]
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %5, align 4
  br label %325

325:                                              ; preds = %322, %39
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @rs_do_connect(%struct.rsocket*) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @rs_send_iomaps(%struct.rsocket*, i32) #1

declare dso_local i32 @rs_can_send(%struct.rsocket*) #1

declare dso_local i32 @rs_get_comp(%struct.rsocket*, i32, i32) #1

declare dso_local i32 @rs_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i64 @rs_sbuf_left(%struct.rsocket*) #1

declare dso_local i32 @rs_copy_iov(i8*, %struct.iovec**, i64*, i64) #1

declare dso_local i32 @rs_write_data(%struct.rsocket*, %struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
