; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_atu_region_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_atu_region_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32*, i32* }
%struct.al_pcie_atu_region = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@AL_PCIE_ATU_DIR_OUTBOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PCIe %d: setting OB iATU after link is started is not allowed\0A\00", align 1
@AL_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"PCIe %d: setting OB iATU even after link is started\0A\00", align 1
@PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_MASK = common dso_local global i32 0, align 4
@PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_MASK = common dso_local global i32 0, align 4
@PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_SHIFT = common dso_local global i32 0, align 4
@PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_SHIFT = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@AL_PCIE_REV_ID_2 = common dso_local global i64 0, align 8
@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@AL_PCIE_OPERATING_MODE_EP = common dso_local global i32 0, align 4
@PCIE_IATU_CR1_FUNC_NUM_MASK = common dso_local global i32 0, align 4
@PCIE_IATU_CR1_FUNC_NUM_SHIFT = common dso_local global i32 0, align 4
@AL_PCIE_TLP_TYPE_MEM = common dso_local global i32 0, align 4
@AL_PCIE_TLP_TYPE_IO = common dso_local global i32 0, align 4
@PCIE_IATU_CR2_FUNC_NUM_TRANS_BYPASS_FUNC_MATCH_ENABLE_MASK = common dso_local global i32 0, align 4
@PCIE_IATU_CR2_FUNC_NUM_TRANS_BYPASS_FUNC_MATCH_ENABLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_atu_region_set(%struct.al_pcie_port* %0, %struct.al_pcie_atu_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca %struct.al_pcie_atu_region*, align 8
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store %struct.al_pcie_atu_region* %1, %struct.al_pcie_atu_region** %5, align 8
  %18 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %19 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %18, i32 0, i32 2
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %19, align 8
  store %struct.al_pcie_regs* %20, %struct.al_pcie_regs** %6, align 8
  %21 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %22 = call i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %24 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AL_PCIE_ATU_DIR_OUTBOUND, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %2
  %29 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %30 = call i64 @al_pcie_is_link_started(%struct.al_pcie_port* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %34 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %39 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @al_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AL_FALSE, align 4
  %43 = call i32 @al_assert(i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %436

46:                                               ; preds = %32
  %47 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %48 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @al_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %28, %2
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %55 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AL_REG_FIELD_SET(i32 %53, i32 15, i32 0, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %60 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @AL_REG_BIT_VAL_SET(i32 %58, i32 31, i32 %61)
  %63 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %64 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 7
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @al_reg_write32(i32* %67, i32 %68)
  %70 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %71 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %76 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @al_reg_write32(i32* %74, i32 %77)
  %79 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %80 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %85 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 32
  %88 = call i32 @al_reg_write32(i32* %83, i32 %87)
  %89 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %90 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %95 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @al_reg_write32(i32* %93, i32 %96)
  %98 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %99 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %104 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 32
  %107 = call i32 @al_reg_write32(i32* %102, i32 %106)
  %108 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %109 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %201

112:                                              ; preds = %52
  %113 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %114 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AL_PCIE_ATU_DIR_OUTBOUND, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %120 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %125 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  br label %142

130:                                              ; preds = %112
  %131 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %132 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %137 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  br label %142

142:                                              ; preds = %130, %118
  %143 = phi i32* [ %129, %118 ], [ %141, %130 ]
  store i32* %143, i32** %10, align 8
  %144 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %145 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = srem i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_MASK, align 4
  br label %153

151:                                              ; preds = %142
  %152 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_MASK, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  store i32 %154, i32* %11, align 4
  %155 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %156 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %157, 2
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_SHIFT, align 4
  br label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_SHIFT, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  store i32 %165, i32* %12, align 4
  %166 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %167 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %170 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = ashr i32 %173, 32
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %164
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, -1
  %181 = zext i1 %180 to i32
  %182 = call i32 @al_assert(i32 %181)
  br label %187

183:                                              ; preds = %164
  %184 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %185 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %183, %177
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %12, align 4
  %192 = shl i32 %190, %191
  %193 = call i32 @al_reg_write32_masked(i32* %188, i32 %189, i32 %192)
  %194 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %195 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @al_reg_write32(i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %187, %52
  %202 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %203 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @AL_TRUE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %295

207:                                              ; preds = %201
  %208 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %209 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @AL_PCIE_ATU_DIR_OUTBOUND, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %295

213:                                              ; preds = %207
  %214 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %215 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AL_PCIE_REV_ID_2, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %234

219:                                              ; preds = %213
  %220 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %221 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %226 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 1, %227
  %229 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %230 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 1, %231
  %233 = call i32 @al_reg_write32_masked(i32* %224, i32 %228, i32 %232)
  br label %294

234:                                              ; preds = %213
  %235 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %236 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @AL_PCIE_ATU_DIR_OUTBOUND, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %234
  %241 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %242 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %247 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sdiv i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  br label %264

252:                                              ; preds = %234
  %253 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %254 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %259 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sdiv i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  br label %264

264:                                              ; preds = %252, %240
  %265 = phi i32* [ %251, %240 ], [ %263, %252 ]
  store i32* %265, i32** %15, align 8
  %266 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %267 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = srem i32 %268, 2
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_MASK, align 4
  br label %275

273:                                              ; preds = %264
  %274 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_MASK, align 4
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  store i32 %276, i32* %16, align 4
  %277 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %278 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = srem i32 %279, 2
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_ODD_SHIFT, align 4
  br label %286

284:                                              ; preds = %275
  %285 = load i32, i32* @PCIE_W_ATU_MASK_EVEN_ODD_ATU_MASK_40_32_EVEN_SHIFT, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  store i32 %287, i32* %17, align 4
  %288 = load i32*, i32** %15, align 8
  %289 = load i32, i32* %16, align 4
  %290 = call i32 @AL_BIT(i32 15)
  %291 = load i32, i32* %17, align 4
  %292 = shl i32 %290, %291
  %293 = call i32 @al_reg_write32_masked(i32* %288, i32 %289, i32 %292)
  br label %294

294:                                              ; preds = %286, %219
  br label %295

295:                                              ; preds = %294, %207, %201
  store i32 0, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %298 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @AL_REG_FIELD_SET(i32 %296, i32 31, i32 0, i32 %299)
  %301 = load i32, i32* %8, align 4
  %302 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %303 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @AL_REG_FIELD_SET(i32 %301, i32 1536, i32 9, i32 %304)
  %306 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %307 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %328

311:                                              ; preds = %295
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %311
  %316 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %317 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %316, i32 0, i32 16
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %315
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @PCIE_IATU_CR1_FUNC_NUM_MASK, align 4
  %323 = load i32, i32* @PCIE_IATU_CR1_FUNC_NUM_SHIFT, align 4
  %324 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %325 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @AL_REG_FIELD_SET(i32 %321, i32 %322, i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %320, %315, %311, %295
  %329 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %330 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %329, i32 0, i32 0
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = load i32, i32* %8, align 4
  %335 = call i32 @al_reg_write32(i32* %333, i32 %334)
  store i32 0, i32* %8, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %338 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @AL_REG_FIELD_SET(i32 %336, i32 255, i32 0, i32 %339)
  %341 = load i32, i32* %8, align 4
  %342 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %343 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @AL_REG_FIELD_SET(i32 %341, i32 1792, i32 8, i32 %344)
  %346 = load i32, i32* %8, align 4
  %347 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %348 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %347, i32 0, i32 12
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @AL_REG_FIELD_SET(i32 %346, i32 50331648, i32 24, i32 %349)
  %351 = load i32, i32* %8, align 4
  %352 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %353 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %352, i32 0, i32 13
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @AL_TRUE, align 8
  %356 = icmp eq i64 %354, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @AL_REG_BIT_VAL_SET(i32 %351, i32 16, i32 %357)
  %359 = load i32, i32* %8, align 4
  %360 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %361 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %360, i32 0, i32 14
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @AL_TRUE, align 8
  %364 = icmp eq i64 %362, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @AL_REG_BIT_VAL_SET(i32 %359, i32 21, i32 %365)
  %367 = load i32, i32* %8, align 4
  %368 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %369 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @AL_TRUE, align 8
  %372 = icmp eq i64 %370, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 @AL_REG_BIT_VAL_SET(i32 %367, i32 28, i32 %373)
  %375 = load i32, i32* %8, align 4
  %376 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %377 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %376, i32 0, i32 15
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @AL_TRUE, align 8
  %380 = icmp eq i64 %378, %379
  %381 = zext i1 %380 to i32
  %382 = call i32 @AL_REG_BIT_VAL_SET(i32 %375, i32 29, i32 %381)
  %383 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %384 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @AL_PCIE_TLP_TYPE_MEM, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %394, label %388

388:                                              ; preds = %328
  %389 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %390 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %389, i32 0, i32 7
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @AL_PCIE_TLP_TYPE_IO, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %404

394:                                              ; preds = %388, %328
  %395 = load i32, i32* %8, align 4
  %396 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %397 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  %400 = xor i1 %399, true
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = call i32 @AL_REG_BIT_VAL_SET(i32 %395, i32 30, i32 %402)
  br label %404

404:                                              ; preds = %394, %388
  %405 = load i32, i32* %8, align 4
  %406 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %407 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %406, i32 0, i32 17
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  %410 = xor i1 %409, true
  %411 = xor i1 %410, true
  %412 = zext i1 %411 to i32
  %413 = call i32 @AL_REG_BIT_VAL_SET(i32 %405, i32 31, i32 %412)
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %428

417:                                              ; preds = %404
  %418 = load i32, i32* %8, align 4
  %419 = load i32, i32* @PCIE_IATU_CR2_FUNC_NUM_TRANS_BYPASS_FUNC_MATCH_ENABLE_MASK, align 4
  %420 = load i32, i32* @PCIE_IATU_CR2_FUNC_NUM_TRANS_BYPASS_FUNC_MATCH_ENABLE_SHIFT, align 4
  %421 = load %struct.al_pcie_atu_region*, %struct.al_pcie_atu_region** %5, align 8
  %422 = getelementptr inbounds %struct.al_pcie_atu_region, %struct.al_pcie_atu_region* %421, i32 0, i32 16
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i32 1, i32 0
  %427 = call i32 @AL_REG_FIELD_SET(i32 %418, i32 %419, i32 %420, i32 %426)
  br label %428

428:                                              ; preds = %417, %404
  %429 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %430 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %429, i32 0, i32 0
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = load i32, i32* %8, align 4
  %435 = call i32 @al_reg_write32(i32* %433, i32 %434)
  store i32 0, i32* %3, align 4
  br label %436

436:                                              ; preds = %428, %37
  %437 = load i32, i32* %3, align 4
  ret i32 %437
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i64 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_info(i8*, i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_VAL_SET(i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i32 @AL_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
