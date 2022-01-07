; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_ah = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.ibv_ah_attr = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_context = type { i32, i64*, i32 }
%struct.ibv_port_attr = type { i64 }
%struct.mlx5_ah = type { i32, %struct.ibv_ah, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32, i8* }
%struct.mlx5_create_ah_resp = type { i32, i32 }

@IBV_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IBV_GID_TYPE_ROCE_V2 = common dso_local global i64 0, align 8
@RROCE_UDP_SPORT_MAX = common dso_local global i32 0, align 4
@RROCE_UDP_SPORT_MIN = common dso_local global i32 0, align 4
@MLX5_USER_CMDS_SUPP_UHW_CREATE_AH = common dso_local global i32 0, align 4
@ETHERNET_LL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_ah* @mlx5_create_ah(%struct.ibv_pd* %0, %struct.ibv_ah_attr* %1) #0 {
  %3 = alloca %struct.ibv_ah*, align 8
  %4 = alloca %struct.ibv_pd*, align 8
  %5 = alloca %struct.ibv_ah_attr*, align 8
  %6 = alloca %struct.mlx5_context*, align 8
  %7 = alloca %struct.ibv_port_attr, align 8
  %8 = alloca %struct.mlx5_ah*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_create_ah_resp, align 4
  %14 = alloca i32, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %4, align 8
  store %struct.ibv_ah_attr* %1, %struct.ibv_ah_attr** %5, align 8
  %15 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5_context* @to_mctx(i32 %17)
  store %struct.mlx5_context* %18, %struct.mlx5_context** %6, align 8
  %19 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %25 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %2
  store %struct.ibv_ah* null, %struct.ibv_ah** %3, align 8
  br label %256

32:                                               ; preds = %23
  %33 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %47, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %12, align 4
  br label %74

58:                                               ; preds = %32
  %59 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %60 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ibv_query_port(i32 %61, i32 %64, %struct.ibv_port_attr* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store %struct.ibv_ah* null, %struct.ibv_ah** %3, align 8
  br label %256

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %44
  %75 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %76 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i1 [ false, %74 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* @errno, align 4
  store %struct.ibv_ah* null, %struct.ibv_ah** %3, align 8
  br label %256

89:                                               ; preds = %82
  %90 = call %struct.mlx5_ah* @calloc(i32 1, i32 48)
  store %struct.mlx5_ah* %90, %struct.mlx5_ah** %8, align 8
  %91 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %92 = icmp ne %struct.mlx5_ah* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store %struct.ibv_ah* null, %struct.ibv_ah** %3, align 8
  br label %256

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %99 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %102 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %105 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ibv_query_gid_type(i32 %100, i32 %103, i32 %107, i64* %9)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %253

111:                                              ; preds = %97
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @IBV_GID_TYPE_ROCE_V2, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = call i32 (...) @rand()
  %117 = load i32, i32* @RROCE_UDP_SPORT_MAX, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @RROCE_UDP_SPORT_MIN, align 4
  %120 = sub nsw i32 %118, %119
  %121 = srem i32 %116, %120
  %122 = load i32, i32* @RROCE_UDP_SPORT_MIN, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i8* @htobe16(i32 %123)
  %125 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  store i8* %124, i8** %127, align 8
  br label %128

128:                                              ; preds = %115, %111
  store i32 0, i32* %11, align 4
  br label %144

129:                                              ; preds = %94
  %130 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %131 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 127
  %134 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %135 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %138 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @htobe16(i32 %139)
  %141 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %142 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 7
  store i8* %140, i8** %143, align 8
  store i32 1, i32* %11, align 4
  br label %144

144:                                              ; preds = %129, %128
  %145 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %146 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 4
  %149 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %150 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %148, %151
  %153 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %154 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %157 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %205

160:                                              ; preds = %144
  %161 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %162 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %166 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 6
  store i32 %164, i32* %167, align 4
  %168 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %169 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %173 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = shl i32 %175, 30
  %177 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %178 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 255
  %182 = shl i32 %181, 20
  %183 = or i32 %176, %182
  %184 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %185 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 1048575
  %189 = or i32 %183, %188
  %190 = call i64 @htobe32(i32 %189)
  store i64 %190, i64* %10, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %193 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 4
  store i64 %191, i64* %194, align 8
  %195 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %196 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %200 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @memcpy(i32 %198, i32 %203, i32 16)
  br label %205

205:                                              ; preds = %160, %144
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %250

208:                                              ; preds = %205
  %209 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %210 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @MLX5_USER_CMDS_SUPP_UHW_CREATE_AH, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %208
  %216 = bitcast %struct.mlx5_create_ah_resp* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %216, i8 0, i64 8, i1 false)
  %217 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %218 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %219 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %218, i32 0, i32 1
  %220 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %221 = getelementptr inbounds %struct.mlx5_create_ah_resp, %struct.mlx5_create_ah_resp* %13, i32 0, i32 1
  %222 = call i64 @ibv_cmd_create_ah(%struct.ibv_pd* %217, %struct.ibv_ah* %219, %struct.ibv_ah_attr* %220, i32* %221, i32 8)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %253

225:                                              ; preds = %215
  %226 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %227 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  %228 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %229 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.mlx5_create_ah_resp, %struct.mlx5_create_ah_resp* %13, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @ETHERNET_LL_SIZE, align 4
  %235 = call i32 @memcpy(i32 %231, i32 %233, i32 %234)
  br label %249

236:                                              ; preds = %208
  %237 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %238 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %241 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %242 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @ibv_resolve_eth_l2_from_gid(i32 %239, %struct.ibv_ah_attr* %240, i32 %244, i32* %14)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  br label %253

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %225
  br label %250

250:                                              ; preds = %249, %205
  %251 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %252 = getelementptr inbounds %struct.mlx5_ah, %struct.mlx5_ah* %251, i32 0, i32 1
  store %struct.ibv_ah* %252, %struct.ibv_ah** %3, align 8
  br label %256

253:                                              ; preds = %247, %224, %110
  %254 = load %struct.mlx5_ah*, %struct.mlx5_ah** %8, align 8
  %255 = call i32 @free(%struct.mlx5_ah* %254)
  store %struct.ibv_ah* null, %struct.ibv_ah** %3, align 8
  br label %256

256:                                              ; preds = %253, %250, %93, %87, %67, %31
  %257 = load %struct.ibv_ah*, %struct.ibv_ah** %3, align 8
  ret %struct.ibv_ah* %257
}

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local i64 @ibv_query_port(i32, i32, %struct.ibv_port_attr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx5_ah* @calloc(i32, i32) #1

declare dso_local i64 @ibv_query_gid_type(i32, i32, i32, i64*) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @htobe32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ibv_cmd_create_ah(%struct.ibv_pd*, %struct.ibv_ah*, %struct.ibv_ah_attr*, i32*, i32) #1

declare dso_local i64 @ibv_resolve_eth_l2_from_gid(i32, %struct.ibv_ah_attr*, i32, i32*) #1

declare dso_local i32 @free(%struct.mlx5_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
