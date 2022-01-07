; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DtsecInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DtsecInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_cfg = type { i32, i64, %struct.dtsec_cfg*, i32, %struct.TYPE_3__, i8*, i8*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.dtsec_cfg*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@CheckInitParameters = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"This DTSEC version does not support the required i/f mode\00", align 1
@e_ENET_IF_SGMII = common dso_local global i64 0, align 8
@PHY_TBICON_CLK_SEL = common dso_local global i32 0, align 4
@PHY_TBICON_SRESET = common dso_local global i32 0, align 4
@PHY_CR_PHY_RESET = common dso_local global i32 0, align 4
@PHY_CR_ANE = common dso_local global i32 0, align 4
@PHY_CR_FULLDUPLEX = common dso_local global i32 0, align 4
@PHY_CR_SPEED1 = common dso_local global i32 0, align 4
@ENET_IF_SGMII_BASEX = common dso_local global i32 0, align 4
@PHY_TBIANA_1000X = common dso_local global i32 0, align 4
@PHY_TBIANA_SGMII = common dso_local global i32 0, align 4
@PHY_CR_RESET_AN = common dso_local global i32 0, align 4
@e_FM_MAC_1G = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@EXTENDED_HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"MC hash table is FAILED\00", align 1
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"UC hash table is FAILED\00", align 1
@e_FM_MOD_1G_MAC = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@DtsecIsr = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@Dtsec1588Isr = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8
@DtsecMdioIsr = common dso_local global i32 0, align 4
@e_FM_MAC_FULL_STATISTICS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Undefined statistics level\00", align 1
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @DtsecInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DtsecInit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dtsec_cfg*, align 8
  %4 = alloca %struct.dtsec_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.dtsec_cfg*
  store %struct.dtsec_cfg* %12, %struct.dtsec_cfg** %3, align 8
  %13 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %14 = load i32, i32* @E_INVALID_HANDLE, align 4
  %15 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.dtsec_cfg* %13, i32 %14)
  %16 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %16, i32 0, i32 2
  %18 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %17, align 8
  %19 = load i32, i32* @E_INVALID_STATE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.dtsec_cfg* %18, i32 %19)
  %21 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %23, align 8
  %25 = load i32, i32* @E_INVALID_HANDLE, align 4
  %26 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.dtsec_cfg* %24, i32 %25)
  %27 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %29, align 8
  %31 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i32 @FM_GetRevision(%struct.dtsec_cfg* %30, %struct.TYPE_4__* %33)
  %35 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %36 = load i32, i32* @CheckInitParameters, align 4
  %37 = call i32 @CHECK_INIT_PARAMETERS(%struct.dtsec_cfg* %35, i32 %36)
  %38 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %39 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %38, i32 0, i32 2
  %40 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %39, align 8
  store %struct.dtsec_cfg* %40, %struct.dtsec_cfg** %4, align 8
  %41 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %45 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %47 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ENET_INTERFACE_FROM_MODE(i32 %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %52 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ENET_SPEED_FROM_MODE(i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @MAKE_ENET_ADDR_FROM_UINT64(i32 %58, i64 %59)
  %61 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %62 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %9, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %70 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %75 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %80 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @fman_dtsec_init(i32 %63, %struct.dtsec_cfg* %64, i32 %65, i32 %66, i32* %68, i32 %73, i32 %78, i32 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %1
  %86 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %87 = call i32 @FreeInitResources(%struct.dtsec_cfg* %86)
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @RETURN_ERROR(i32 %88, i64 %89, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %1
  %92 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %93 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ENET_INTERFACE_FROM_MODE(i32 %94)
  %96 = load i64, i64* @e_ENET_IF_SGMII, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %91
  %99 = load i32, i32* @PHY_TBICON_CLK_SEL, align 4
  %100 = load i32, i32* @PHY_TBICON_SRESET, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %103 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %104 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg* %102, i32 %106, i32 17, i32 %107)
  %109 = load i32, i32* @PHY_TBICON_CLK_SEL, align 4
  store i32 %109, i32* %10, align 4
  %110 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %111 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg* %110, i32 %114, i32 17, i32 %115)
  %117 = load i32, i32* @PHY_CR_PHY_RESET, align 4
  %118 = load i32, i32* @PHY_CR_ANE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @PHY_CR_FULLDUPLEX, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @PHY_CR_SPEED1, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %125 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %126 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg* %124, i32 %128, i32 0, i32 %129)
  %131 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %132 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ENET_IF_SGMII_BASEX, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %98
  %138 = load i32, i32* @PHY_TBIANA_1000X, align 4
  store i32 %138, i32* %10, align 4
  br label %141

139:                                              ; preds = %98
  %140 = load i32, i32* @PHY_TBIANA_SGMII, align 4
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %143 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %144 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg* %142, i32 %146, i32 4, i32 %147)
  %149 = load i32, i32* @PHY_CR_ANE, align 4
  %150 = load i32, i32* @PHY_CR_RESET_AN, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @PHY_CR_FULLDUPLEX, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @PHY_CR_SPEED1, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %10, align 4
  %156 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %157 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %158 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg* %156, i32 %160, i32 0, i32 %161)
  br label %163

163:                                              ; preds = %141, %91
  %164 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %165 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @fman_dtsec_get_max_frame_len(i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %169 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %170, align 8
  %172 = load i32, i32* @e_FM_MAC_1G, align 4
  %173 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %174 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i64 @FmSetMacMaxFrame(%struct.dtsec_cfg* %171, i32 %172, i32 %176, i32 %177)
  store i64 %178, i64* %5, align 8
  %179 = load i64, i64* %5, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %163
  %182 = load i32, i32* @MINOR, align 4
  %183 = load i64, i64* %5, align 8
  %184 = load i8*, i8** @NO_MSG, align 8
  %185 = call i32 @RETURN_ERROR(i32 %182, i64 %183, i8* %184)
  br label %186

186:                                              ; preds = %181, %163
  %187 = load i32, i32* @EXTENDED_HASH_TABLE_SIZE, align 4
  %188 = call i8* @AllocHashTable(i32 %187)
  %189 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %190 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %189, i32 0, i32 6
  store i8* %188, i8** %190, align 8
  %191 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %192 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %191, i32 0, i32 6
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %186
  %196 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %197 = call i32 @FreeInitResources(%struct.dtsec_cfg* %196)
  %198 = load i32, i32* @MAJOR, align 4
  %199 = load i64, i64* @E_NO_MEMORY, align 8
  %200 = call i32 @RETURN_ERROR(i32 %198, i64 %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %201

201:                                              ; preds = %195, %186
  %202 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %203 = call i8* @AllocHashTable(i32 %202)
  %204 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %205 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %207 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %206, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %201
  %211 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %212 = call i32 @FreeInitResources(%struct.dtsec_cfg* %211)
  %213 = load i32, i32* @MAJOR, align 4
  %214 = load i64, i64* @E_NO_MEMORY, align 8
  %215 = call i32 @RETURN_ERROR(i32 %213, i64 %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %216

216:                                              ; preds = %210, %201
  %217 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %218 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %219, align 8
  %221 = load i32, i32* @e_FM_MOD_1G_MAC, align 4
  %222 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %223 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %226 = load i32, i32* @DtsecIsr, align 4
  %227 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %228 = call i32 @FmRegisterIntr(%struct.dtsec_cfg* %220, i32 %221, i32 %224, i32 %225, i32 %226, %struct.dtsec_cfg* %227)
  %229 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %230 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %231, align 8
  %233 = load i32, i32* @e_FM_MOD_1G_MAC, align 4
  %234 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %235 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %238 = load i32, i32* @Dtsec1588Isr, align 4
  %239 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %240 = call i32 @FmRegisterIntr(%struct.dtsec_cfg* %232, i32 %233, i32 %236, i32 %237, i32 %238, %struct.dtsec_cfg* %239)
  %241 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %242 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @NO_IRQ, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %216
  %247 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %248 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @DtsecMdioIsr, align 4
  %251 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %252 = call i32 @XX_SetIntr(i64 %249, i32 %250, %struct.dtsec_cfg* %251)
  %253 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %254 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @XX_EnableIntr(i64 %255)
  br label %257

257:                                              ; preds = %246, %216
  %258 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %259 = call i32 @XX_Free(%struct.dtsec_cfg* %258)
  %260 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %261 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %260, i32 0, i32 2
  store %struct.dtsec_cfg* null, %struct.dtsec_cfg** %261, align 8
  %262 = load i64, i64* %2, align 8
  %263 = load i32, i32* @e_FM_MAC_FULL_STATISTICS, align 4
  %264 = call i64 @DtsecSetStatistics(i64 %262, i32 %263)
  store i64 %264, i64* %5, align 8
  %265 = load i64, i64* %5, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %257
  %268 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %3, align 8
  %269 = call i32 @FreeInitResources(%struct.dtsec_cfg* %268)
  %270 = load i32, i32* @MAJOR, align 4
  %271 = load i64, i64* %5, align 8
  %272 = call i32 @RETURN_ERROR(i32 %270, i64 %271, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %273

273:                                              ; preds = %267, %257
  %274 = load i64, i64* @E_OK, align 8
  ret i64 %274
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.dtsec_cfg*, i32) #1

declare dso_local i32 @FM_GetRevision(%struct.dtsec_cfg*, %struct.TYPE_4__*) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.dtsec_cfg*, i32) #1

declare dso_local i64 @ENET_INTERFACE_FROM_MODE(i32) #1

declare dso_local i64 @ENET_SPEED_FROM_MODE(i32) #1

declare dso_local i32 @MAKE_ENET_ADDR_FROM_UINT64(i32, i64) #1

declare dso_local i64 @fman_dtsec_init(i32, %struct.dtsec_cfg*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FreeInitResources(%struct.dtsec_cfg*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @DTSEC_MII_WritePhyReg(%struct.dtsec_cfg*, i32, i32, i32) #1

declare dso_local i32 @fman_dtsec_get_max_frame_len(i32) #1

declare dso_local i64 @FmSetMacMaxFrame(%struct.dtsec_cfg*, i32, i32, i32) #1

declare dso_local i8* @AllocHashTable(i32) #1

declare dso_local i32 @FmRegisterIntr(%struct.dtsec_cfg*, i32, i32, i32, i32, %struct.dtsec_cfg*) #1

declare dso_local i32 @XX_SetIntr(i64, i32, %struct.dtsec_cfg*) #1

declare dso_local i32 @XX_EnableIntr(i64) #1

declare dso_local i32 @XX_Free(%struct.dtsec_cfg*) #1

declare dso_local i64 @DtsecSetStatistics(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
