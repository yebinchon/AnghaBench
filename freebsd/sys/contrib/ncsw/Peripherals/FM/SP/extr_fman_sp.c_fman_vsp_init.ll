; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fman_sp.c_fman_vsp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fman_sp.c_fman_vsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm_pcd_storage_profile_regs = type { i32, i32, i32, i32, i32, i32* }
%struct.fm_storage_profile_params = type { i32, i64, i64, i64, i64, i64, i64, %struct.fman_sp_buf_margins*, %struct.fman_sp_int_context_data_copy*, %struct.fman_backup_bm_pools, %struct.fman_buf_pool_depletion, %struct.fman_ext_pools }
%struct.fman_sp_buf_margins = type { i64, i64 }
%struct.fman_sp_int_context_data_copy = type { i64, i64, i64 }
%struct.fman_backup_bm_pools = type { i32, i64* }
%struct.fman_buf_pool_depletion = type { i64*, i64, i32, i64, i64, i32, i64 }
%struct.fman_ext_pools = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@FMAN_SP_EXT_BUF_POOL_VALID = common dso_local global i32 0, align 4
@FMAN_SP_EXT_BUF_POOL_EN_COUNTER = common dso_local global i32 0, align 4
@FMAN_SP_EXT_BUF_POOL_ID_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_EXT_BUF_POOL_BACKUP = common dso_local global i32 0, align 4
@FMAN_SP_POOL_DEP_NUM_OF_POOLS_SHIFT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FMAN_SP_DMA_ATTR_SWP_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_DMA_ATTR_IC_CACHE_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_DMA_ATTR_HDR_CACHE_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_DMA_ATTR_SG_CACHE_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_DMA_ATTR_WRITE_OPTIMIZE = common dso_local global i32 0, align 4
@OFFSET_UNITS = common dso_local global i32 0, align 4
@FMAN_SP_IC_TO_EXT_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_IC_FROM_INT_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_IC_SIZE_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_EXT_BUF_MARG_START_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_EXT_BUF_MARG_END_SHIFT = common dso_local global i32 0, align 4
@FMAN_SP_SG_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_vsp_init(%struct.fm_pcd_storage_profile_regs* %0, i64 %1, %struct.fm_storage_profile_params* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fm_pcd_storage_profile_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fm_storage_profile_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fm_pcd_storage_profile_regs*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fman_ext_pools*, align 8
  %19 = alloca %struct.fman_buf_pool_depletion*, align 8
  %20 = alloca %struct.fman_backup_bm_pools*, align 8
  %21 = alloca %struct.fman_sp_int_context_data_copy*, align 8
  %22 = alloca %struct.fman_sp_buf_margins*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.fm_pcd_storage_profile_regs* %0, %struct.fm_pcd_storage_profile_regs** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.fm_storage_profile_params* %2, %struct.fm_storage_profile_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %26 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %25, i32 0, i32 11
  store %struct.fman_ext_pools* %26, %struct.fman_ext_pools** %18, align 8
  %27 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %28 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %27, i32 0, i32 10
  store %struct.fman_buf_pool_depletion* %28, %struct.fman_buf_pool_depletion** %19, align 8
  %29 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %30 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %29, i32 0, i32 9
  store %struct.fman_backup_bm_pools* %30, %struct.fman_backup_bm_pools** %20, align 8
  %31 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %32 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %31, i32 0, i32 8
  %33 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %32, align 8
  store %struct.fman_sp_int_context_data_copy* %33, %struct.fman_sp_int_context_data_copy** %21, align 8
  %34 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %35 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %34, i32 0, i32 7
  %36 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %35, align 8
  store %struct.fman_sp_buf_margins* %36, %struct.fman_sp_buf_margins** %22, align 8
  %37 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %38 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %23, align 4
  %40 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %41 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %24, align 8
  %43 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %43, i64 %44
  store %struct.fm_pcd_storage_profile_regs* %45, %struct.fm_pcd_storage_profile_regs** %15, align 8
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %120, %6
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %49 = getelementptr inbounds %struct.fman_ext_pools, %struct.fman_ext_pools* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %123

52:                                               ; preds = %46
  %53 = load i32, i32* @FMAN_SP_EXT_BUF_POOL_VALID, align 4
  %54 = load i32, i32* @FMAN_SP_EXT_BUF_POOL_EN_COUNTER, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %16, align 4
  %56 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %57 = getelementptr inbounds %struct.fman_ext_pools, %struct.fman_ext_pools* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @FMAN_SP_EXT_BUF_POOL_ID_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  %69 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %70 = getelementptr inbounds %struct.fman_ext_pools, %struct.fman_ext_pools* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %107, %52
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.fman_backup_bm_pools*, %struct.fman_backup_bm_pools** %20, align 8
  %82 = getelementptr inbounds %struct.fman_backup_bm_pools, %struct.fman_backup_bm_pools* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %87 = getelementptr inbounds %struct.fman_ext_pools, %struct.fman_ext_pools* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.fman_backup_bm_pools*, %struct.fman_backup_bm_pools** %20, align 8
  %95 = getelementptr inbounds %struct.fman_backup_bm_pools, %struct.fman_backup_bm_pools* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %93, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load i32, i32* @FMAN_SP_EXT_BUF_POOL_BACKUP, align 4
  %104 = load i32, i32* %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %110

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %79

110:                                              ; preds = %102, %79
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %114 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @iowrite32be(i64 %112, i32* %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %46

123:                                              ; preds = %46
  %124 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %125 = getelementptr inbounds %struct.fman_ext_pools, %struct.fman_ext_pools* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %139, %123
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %133 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @iowrite32be(i64 0, i32* %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %127

142:                                              ; preds = %127
  store i32 0, i32* %16, align 4
  %143 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %144 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  %148 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %149 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %155 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %158 = call i32 @calc_vec_dep(i32 %153, i32 %156, %struct.fman_ext_pools* %157, i32 -2147483648)
  store i32 %158, i32* %17, align 4
  %159 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %160 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* @FMAN_SP_POOL_DEP_NUM_OF_POOLS_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load i32, i32* %16, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %16, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %152, %147, %142
  %172 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %173 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %178 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %184 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.fman_ext_pools*, %struct.fman_ext_pools** %18, align 8
  %187 = call i32 @calc_vec_dep(i32 %182, i32 %185, %struct.fman_ext_pools* %186, i32 128)
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %16, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %16, align 4
  br label %191

191:                                              ; preds = %181, %176, %171
  %192 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %193 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %191
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %197

197:                                              ; preds = %217, %196
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %197
  %202 = load %struct.fman_buf_pool_depletion*, %struct.fman_buf_pool_depletion** %19, align 8
  %203 = getelementptr inbounds %struct.fman_buf_pool_depletion, %struct.fman_buf_pool_depletion* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @TRUE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %201
  %212 = load i32, i32* %13, align 4
  %213 = shl i32 256, %212
  %214 = load i32, i32* %17, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %211, %201
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %197

220:                                              ; preds = %197
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %16, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %220, %191
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %228 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %227, i32 0, i32 4
  %229 = call i32 @iowrite32be(i64 %226, i32* %228)
  store i32 0, i32* %16, align 4
  %230 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %231 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* @FMAN_SP_DMA_ATTR_SWP_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load i32, i32* %16, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %16, align 4
  %238 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %239 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* @FMAN_SP_DMA_ATTR_IC_CACHE_SHIFT, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* %16, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %16, align 4
  %246 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %247 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i32, i32* @FMAN_SP_DMA_ATTR_HDR_CACHE_SHIFT, align 4
  %251 = shl i32 %249, %250
  %252 = load i32, i32* %16, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %16, align 4
  %254 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %255 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = load i32, i32* @FMAN_SP_DMA_ATTR_SG_CACHE_SHIFT, align 4
  %259 = shl i32 %257, %258
  %260 = load i32, i32* %16, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %16, align 4
  %262 = load %struct.fm_storage_profile_params*, %struct.fm_storage_profile_params** %9, align 8
  %263 = getelementptr inbounds %struct.fm_storage_profile_params, %struct.fm_storage_profile_params* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %224
  %267 = load i32, i32* @FMAN_SP_DMA_ATTR_WRITE_OPTIMIZE, align 4
  %268 = load i32, i32* %16, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %16, align 4
  br label %270

270:                                              ; preds = %266, %224
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %274 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %273, i32 0, i32 3
  %275 = call i32 @iowrite32be(i64 %272, i32* %274)
  store i32 0, i32* %16, align 4
  %276 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %21, align 8
  %277 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* @OFFSET_UNITS, align 4
  %281 = sdiv i32 %279, %280
  %282 = load i32, i32* @FMAN_SP_IC_TO_EXT_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = load i32, i32* %16, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %16, align 4
  %286 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %21, align 8
  %287 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load i32, i32* @OFFSET_UNITS, align 4
  %291 = sdiv i32 %289, %290
  %292 = load i32, i32* @FMAN_SP_IC_FROM_INT_SHIFT, align 4
  %293 = shl i32 %291, %292
  %294 = load i32, i32* %16, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %16, align 4
  %296 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %21, align 8
  %297 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = load i32, i32* @OFFSET_UNITS, align 4
  %301 = sdiv i32 %299, %300
  %302 = load i32, i32* @FMAN_SP_IC_SIZE_SHIFT, align 4
  %303 = shl i32 %301, %302
  %304 = load i32, i32* %16, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %309 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %308, i32 0, i32 2
  %310 = call i32 @iowrite32be(i64 %307, i32* %309)
  store i32 0, i32* %16, align 4
  %311 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %22, align 8
  %312 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = load i32, i32* @FMAN_SP_EXT_BUF_MARG_START_SHIFT, align 4
  %316 = shl i32 %314, %315
  %317 = load i32, i32* %16, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %16, align 4
  %319 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %22, align 8
  %320 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = load i32, i32* @FMAN_SP_EXT_BUF_MARG_END_SHIFT, align 4
  %324 = shl i32 %322, %323
  %325 = load i32, i32* %16, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* %23, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %270
  %330 = load i32, i32* @FMAN_SP_SG_DISABLE, align 4
  %331 = load i32, i32* %16, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %16, align 4
  br label %333

333:                                              ; preds = %329, %270
  %334 = load i32, i32* %16, align 4
  %335 = sext i32 %334 to i64
  %336 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %337 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %336, i32 0, i32 1
  %338 = call i32 @iowrite32be(i64 %335, i32* %337)
  %339 = load i64, i64* %24, align 8
  %340 = load %struct.fm_pcd_storage_profile_regs*, %struct.fm_pcd_storage_profile_regs** %15, align 8
  %341 = getelementptr inbounds %struct.fm_pcd_storage_profile_regs, %struct.fm_pcd_storage_profile_regs* %340, i32 0, i32 0
  %342 = call i32 @iowrite32be(i64 %339, i32* %341)
  ret void
}

declare dso_local i32 @iowrite32be(i64, i32*) #1

declare dso_local i32 @calc_vec_dep(i32, i32, %struct.fman_ext_pools*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
