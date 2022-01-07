; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_riowrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_riowrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, i64, i8*, i32, %struct.ibv_sge*, i64 }
%struct.ibv_sge = type { i64, i64, i64 }
%struct.rs_iomap = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RS_OLAP_START_SIZE = common dso_local global i64 0, align 8
@idm = common dso_local global i32 0, align 4
@rs_conn_can_send = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@RS_MAX_TRANSFER = common dso_local global i64 0, align 8
@IBV_SEND_INLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @riowrite(i32 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rsocket*, align 8
  %12 = alloca %struct.rs_iomap*, align 8
  %13 = alloca %struct.ibv_sge, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.rs_iomap* null, %struct.rs_iomap** %12, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* @RS_OLAP_START_SIZE, align 8
  store i64 %19, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.rsocket* @idm_at(i32* @idm, i32 %20)
  store %struct.rsocket* %21, %struct.rsocket** %11, align 8
  %22 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 4
  %24 = call i32 @fastlock_acquire(i32* %23)
  %25 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %5
  %30 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @rs_send_iomaps(%struct.rsocket* %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %305

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %5
  br label %38

38:                                               ; preds = %294, %37
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %304

41:                                               ; preds = %38
  %42 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %43 = icmp ne %struct.rs_iomap* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %47 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %50 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = icmp sgt i64 %45, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44, %41
  %56 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call %struct.rs_iomap* @rs_find_iomap(%struct.rsocket* %56, i64 %57)
  store %struct.rs_iomap* %58, %struct.rs_iomap** %12, align 8
  %59 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %60 = icmp ne %struct.rs_iomap* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %304

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %65 = call i32 @rs_can_send(%struct.rsocket* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %69 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @rs_nonblocking(%struct.rsocket* %69, i32 %70)
  %72 = load i32, i32* @rs_conn_can_send, align 4
  %73 = call i32 @rs_get_comp(%struct.rsocket* %68, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %304

77:                                               ; preds = %67
  %78 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %79 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @rs_writable, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ECONNRESET, align 4
  %86 = call i32 @ERR(i32 %85)
  store i32 %86, i32* %17, align 4
  br label %304

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i64, i64* %16, align 8
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @RS_MAX_TRANSFER, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i64, i64* %16, align 8
  %99 = shl i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %97, %92
  br label %103

101:                                              ; preds = %88
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %15, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %106 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %111 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %116 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %119 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %117, %121
  %123 = load i64, i64* %9, align 8
  %124 = sub nsw i64 %122, %123
  %125 = icmp ugt i64 %114, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %113
  %127 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %128 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %131 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %129, %133
  %135 = load i64, i64* %9, align 8
  %136 = sub nsw i64 %134, %135
  store i64 %136, i64* %15, align 8
  br label %137

137:                                              ; preds = %126, %113
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %140 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ule i64 %138, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %137
  %144 = load i8*, i8** %7, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %13, i32 0, i32 0
  store i64 %145, i64* %146, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %13, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %13, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %151 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i32, i32* @IBV_SEND_INLINE, align 4
  %155 = call i32 @rs_write_direct(%struct.rsocket* %150, %struct.rs_iomap* %151, i64 %152, %struct.ibv_sge* %13, i32 1, i64 %153, i32 %154)
  store i32 %155, i32* %17, align 4
  br label %289

156:                                              ; preds = %137
  %157 = load i64, i64* %15, align 8
  %158 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %159 = call i64 @rs_sbuf_left(%struct.rsocket* %158)
  %160 = icmp ule i64 %157, %159
  br i1 %160, label %161, label %210

161:                                              ; preds = %156
  %162 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %163 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %162, i32 0, i32 5
  %164 = load %struct.ibv_sge*, %struct.ibv_sge** %163, align 8
  %165 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %164, i64 0
  %166 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = load i8*, i8** %7, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @memcpy(i8* %168, i8* %169, i64 %170)
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %174 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %173, i32 0, i32 5
  %175 = load %struct.ibv_sge*, %struct.ibv_sge** %174, align 8
  %176 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %175, i64 0
  %177 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %176, i32 0, i32 1
  store i64 %172, i64* %177, align 8
  %178 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %179 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %182 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %181, i32 0, i32 5
  %183 = load %struct.ibv_sge*, %struct.ibv_sge** %182, align 8
  %184 = load i64, i64* %15, align 8
  %185 = call i32 @rs_write_direct(%struct.rsocket* %178, %struct.rs_iomap* %179, i64 %180, %struct.ibv_sge* %183, i32 1, i64 %184, i32 0)
  store i32 %185, i32* %17, align 4
  %186 = load i64, i64* %15, align 8
  %187 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %188 = call i64 @rs_sbuf_left(%struct.rsocket* %187)
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %161
  %191 = load i64, i64* %15, align 8
  %192 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %193 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %192, i32 0, i32 5
  %194 = load %struct.ibv_sge*, %struct.ibv_sge** %193, align 8
  %195 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %194, i64 0
  %196 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %191
  store i64 %198, i64* %196, align 8
  br label %209

199:                                              ; preds = %161
  %200 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %201 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %205 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %204, i32 0, i32 5
  %206 = load %struct.ibv_sge*, %struct.ibv_sge** %205, align 8
  %207 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %206, i64 0
  %208 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %207, i32 0, i32 0
  store i64 %203, i64* %208, align 8
  br label %209

209:                                              ; preds = %199, %190
  br label %288

210:                                              ; preds = %156
  %211 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %212 = call i64 @rs_sbuf_left(%struct.rsocket* %211)
  %213 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %214 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %213, i32 0, i32 5
  %215 = load %struct.ibv_sge*, %struct.ibv_sge** %214, align 8
  %216 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %215, i64 0
  %217 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %216, i32 0, i32 1
  store i64 %212, i64* %217, align 8
  %218 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %219 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %218, i32 0, i32 5
  %220 = load %struct.ibv_sge*, %struct.ibv_sge** %219, align 8
  %221 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %220, i64 0
  %222 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load i8*, i8** %7, align 8
  %226 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %227 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %226, i32 0, i32 5
  %228 = load %struct.ibv_sge*, %struct.ibv_sge** %227, align 8
  %229 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %228, i64 0
  %230 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @memcpy(i8* %224, i8* %225, i64 %231)
  %233 = load i64, i64* %15, align 8
  %234 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %235 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %234, i32 0, i32 5
  %236 = load %struct.ibv_sge*, %struct.ibv_sge** %235, align 8
  %237 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %236, i64 0
  %238 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = sub i64 %233, %239
  %241 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %242 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %241, i32 0, i32 5
  %243 = load %struct.ibv_sge*, %struct.ibv_sge** %242, align 8
  %244 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %243, i64 1
  %245 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %244, i32 0, i32 1
  store i64 %240, i64* %245, align 8
  %246 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %247 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %251 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %250, i32 0, i32 5
  %252 = load %struct.ibv_sge*, %struct.ibv_sge** %251, align 8
  %253 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %252, i64 0
  %254 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr i8, i8* %249, i64 %255
  %257 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %258 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %257, i32 0, i32 5
  %259 = load %struct.ibv_sge*, %struct.ibv_sge** %258, align 8
  %260 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %259, i64 1
  %261 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @memcpy(i8* %248, i8* %256, i64 %262)
  %264 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %265 = load %struct.rs_iomap*, %struct.rs_iomap** %12, align 8
  %266 = load i64, i64* %9, align 8
  %267 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %268 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %267, i32 0, i32 5
  %269 = load %struct.ibv_sge*, %struct.ibv_sge** %268, align 8
  %270 = load i64, i64* %15, align 8
  %271 = call i32 @rs_write_direct(%struct.rsocket* %264, %struct.rs_iomap* %265, i64 %266, %struct.ibv_sge* %269, i32 2, i64 %270, i32 0)
  store i32 %271, i32* %17, align 4
  %272 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %273 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %272, i32 0, i32 3
  %274 = load i8*, i8** %273, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %277 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %276, i32 0, i32 5
  %278 = load %struct.ibv_sge*, %struct.ibv_sge** %277, align 8
  %279 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %278, i64 1
  %280 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %275, %281
  %283 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %284 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %283, i32 0, i32 5
  %285 = load %struct.ibv_sge*, %struct.ibv_sge** %284, align 8
  %286 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %285, i64 0
  %287 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %286, i32 0, i32 0
  store i64 %282, i64* %287, align 8
  br label %288

288:                                              ; preds = %210, %209
  br label %289

289:                                              ; preds = %288, %143
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %304

293:                                              ; preds = %289
  br label %294

294:                                              ; preds = %293
  %295 = load i64, i64* %15, align 8
  %296 = load i64, i64* %14, align 8
  %297 = sub i64 %296, %295
  store i64 %297, i64* %14, align 8
  %298 = load i64, i64* %15, align 8
  %299 = load i8*, i8** %7, align 8
  %300 = getelementptr i8, i8* %299, i64 %298
  store i8* %300, i8** %7, align 8
  %301 = load i64, i64* %15, align 8
  %302 = load i64, i64* %9, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %9, align 8
  br label %38

304:                                              ; preds = %292, %84, %76, %61, %38
  br label %305

305:                                              ; preds = %304, %35
  %306 = load %struct.rsocket*, %struct.rsocket** %11, align 8
  %307 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %306, i32 0, i32 4
  %308 = call i32 @fastlock_release(i32* %307)
  %309 = load i32, i32* %17, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = load i64, i64* %14, align 8
  %313 = load i64, i64* %8, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  br label %322

318:                                              ; preds = %311, %305
  %319 = load i64, i64* %8, align 8
  %320 = load i64, i64* %14, align 8
  %321 = sub i64 %319, %320
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i64 [ %317, %315 ], [ %321, %318 ]
  ret i64 %323
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @rs_send_iomaps(%struct.rsocket*, i32) #1

declare dso_local %struct.rs_iomap* @rs_find_iomap(%struct.rsocket*, i64) #1

declare dso_local i32 @rs_can_send(%struct.rsocket*) #1

declare dso_local i32 @rs_get_comp(%struct.rsocket*, i32, i32) #1

declare dso_local i32 @rs_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_write_direct(%struct.rsocket*, %struct.rs_iomap*, i64, %struct.ibv_sge*, i32, i64, i32) #1

declare dso_local i64 @rs_sbuf_left(%struct.rsocket*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
