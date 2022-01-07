; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_build_scheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_build_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_scheme_params = type { i64, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.fman_kg_extract_params, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.fman_kg_extract_params = type { i64, i32, %struct.TYPE_6__*, %struct.fman_kg_gen_extract_params*, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }
%struct.fman_kg_gen_extract_params = type { i64, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fman_kg_scheme_regs = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KG_NIA_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E_FMAN_PCD_PLCR = common dso_local global i64 0, align 8
@FMAN_KG_SCH_MODE_NIA_PLCR = common dso_local global i32 0, align 4
@E_FMAN_PCD_CC = common dso_local global i64 0, align 8
@FMAN_KG_SCH_MODE_CCOBASE_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_MODE_EN = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_MAC_ADDR_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_VLAN_TCI_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_ETYPE_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_PPP_SID_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_PPP_PID_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_MPLS_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_IP_ADDR_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_PTYPE_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_IP_TOS_TC_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_IPv6_FL_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_IPSEC_SPI_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_L4_PORT_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_DEF_TCP_FLG_SHIFT = common dso_local global i32 0, align 4
@FM_KG_NUM_OF_GENERIC_REGS = common dso_local global i64 0, align 8
@FMAN_KG_SCH_GEN_VALID = common dso_local global i32 0, align 4
@FMAN_KG_SCH_GEN_DEF_SHIFT = common dso_local global i32 0, align 4
@E_FMAN_KG_HASH_EXTRACT = common dso_local global i64 0, align 8
@FMAN_KG_SCH_GEN_SIZE_MAX = common dso_local global i64 0, align 8
@FMAN_KG_SCH_GEN_OR = common dso_local global i32 0, align 4
@FMAN_KG_SCH_GEN_SIZE_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_GEN_MASK_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_GEN_HT_SHIFT = common dso_local global i32 0, align 4
@FM_KG_EXTRACT_MASKS_NUM = common dso_local global i32 0, align 4
@FM_KG_MASK_SEL_GEN_BASE = common dso_local global i32 0, align 4
@FMAN_KG_SCH_HASH_HSHIFT_MAX = common dso_local global i64 0, align 8
@FMAN_KG_SCH_HASH_HSHIFT_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_HASH_SYM = common dso_local global i32 0, align 4
@FMAN_KG_SCH_HASH_NO_FQID_GEN = common dso_local global i32 0, align 4
@FMAN_KG_SCH_PP_SHIFT_MAX = common dso_local global i64 0, align 8
@FMAN_KG_SCH_PP_SH_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_PP_SH_MASK = common dso_local global i32 0, align 4
@FMAN_KG_SCH_PP_SL_SHIFT = common dso_local global i32 0, align 4
@FMAN_KG_SCH_PP_SL_MASK = common dso_local global i32 0, align 4
@FMAN_KG_SCH_PP_MASK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_build_scheme(%struct.fman_kg_scheme_params* %0, %struct.fman_kg_scheme_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_kg_scheme_params*, align 8
  %5 = alloca %struct.fman_kg_scheme_regs*, align 8
  %6 = alloca %struct.fman_kg_extract_params*, align 8
  %7 = alloca %struct.fman_kg_gen_extract_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fman_kg_scheme_params* %0, %struct.fman_kg_scheme_params** %4, align 8
  store %struct.fman_kg_scheme_regs* %1, %struct.fman_kg_scheme_regs** %5, align 8
  %16 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %17 = call i32 @memset(%struct.fman_kg_scheme_regs* %16, i32 0, i32 64)
  %18 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %19 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %22 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fm_kg_build_nia(i64 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @KG_NIA_INVALID, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %593

31:                                               ; preds = %2
  %32 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %33 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @E_FMAN_PCD_PLCR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @FMAN_KG_SCH_MODE_NIA_PLCR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %43 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @E_FMAN_PCD_CC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %49 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @FMAN_KG_SCH_MODE_CCOBASE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* @FMAN_KG_SCH_MODE_EN, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %64 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %66 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %69 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %71 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %70, i32 0, i32 8
  store %struct.fman_kg_extract_params* %71, %struct.fman_kg_extract_params** %6, align 8
  %72 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %73 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %76 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %78 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %81 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %83 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %86 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %8, align 4
  %87 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %88 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FMAN_KG_SCH_DEF_MAC_ADDR_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %96 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FMAN_KG_SCH_DEF_VLAN_TCI_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %104 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FMAN_KG_SCH_DEF_ETYPE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %112 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FMAN_KG_SCH_DEF_PPP_SID_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %120 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @FMAN_KG_SCH_DEF_PPP_PID_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %128 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FMAN_KG_SCH_DEF_MPLS_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %136 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FMAN_KG_SCH_DEF_IP_ADDR_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %144 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @FMAN_KG_SCH_DEF_PTYPE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %152 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @FMAN_KG_SCH_DEF_IP_TOS_TC_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %160 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @FMAN_KG_SCH_DEF_IPv6_FL_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %168 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FMAN_KG_SCH_DEF_IPSEC_SPI_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %176 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @FMAN_KG_SCH_DEF_L4_PORT_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %184 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @FMAN_KG_SCH_DEF_TCP_FLG_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* %8, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %193 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %195 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @FM_KG_NUM_OF_GENERIC_REGS, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %58
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %593

202:                                              ; preds = %58
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %292, %202
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %207 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %205, %208
  br i1 %209, label %210, label %295

210:                                              ; preds = %203
  %211 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %212 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %211, i32 0, i32 3
  %213 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %213, i64 %215
  store %struct.fman_kg_gen_extract_params* %216, %struct.fman_kg_gen_extract_params** %7, align 8
  %217 = load i32, i32* @FMAN_KG_SCH_GEN_VALID, align 4
  store i32 %217, i32* %8, align 4
  %218 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %219 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* @FMAN_KG_SCH_GEN_DEF_SHIFT, align 4
  %223 = shl i32 %221, %222
  %224 = load i32, i32* %8, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %8, align 4
  %226 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %227 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @E_FMAN_KG_HASH_EXTRACT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %210
  %232 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %233 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @FMAN_KG_SCH_GEN_SIZE_MAX, align 8
  %236 = icmp sgt i64 %234, %235
  br i1 %236, label %242, label %237

237:                                              ; preds = %231
  %238 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %239 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237, %231
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %593

245:                                              ; preds = %237
  br label %250

246:                                              ; preds = %210
  %247 = load i32, i32* @FMAN_KG_SCH_GEN_OR, align 4
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %246, %245
  %251 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %252 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = load i32, i32* @FMAN_KG_SCH_GEN_SIZE_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %8, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %8, align 4
  %259 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %260 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = load i32, i32* @FMAN_KG_SCH_GEN_MASK_SHIFT, align 4
  %264 = shl i32 %262, %263
  %265 = load i32, i32* %8, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %8, align 4
  %267 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %268 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %13, align 4
  %270 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %271 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.fman_kg_gen_extract_params*, %struct.fman_kg_gen_extract_params** %7, align 8
  %274 = getelementptr inbounds %struct.fman_kg_gen_extract_params, %struct.fman_kg_gen_extract_params* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @get_gen_ht_code(i32 %272, i32 %275, i32* %13)
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* @FMAN_KG_SCH_GEN_HT_SHIFT, align 4
  %279 = shl i32 %277, %278
  %280 = load i32, i32* %8, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %8, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %287 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %285, i32* %291, align 4
  br label %292

292:                                              ; preds = %250
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %9, align 4
  br label %203

295:                                              ; preds = %203
  %296 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %297 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @FM_KG_EXTRACT_MASKS_NUM, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %3, align 4
  br label %593

304:                                              ; preds = %295
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %305

305:                                              ; preds = %403, %304
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %308 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = icmp slt i32 %306, %309
  br i1 %310, label %311, label %406

311:                                              ; preds = %305
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @KG_GET_MASK_SEL_SHIFT(i32 %312, i32 %313)
  %315 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %316 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %315, i32 0, i32 2
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %311
  %325 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %326 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %325, i32 0, i32 2
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %14, align 4
  %334 = shl i32 %332, %333
  %335 = load i32, i32* %10, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %10, align 4
  br label %352

337:                                              ; preds = %311
  %338 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %339 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %338, i32 0, i32 2
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @FM_KG_MASK_SEL_GEN_BASE, align 4
  %347 = add nsw i32 %345, %346
  %348 = load i32, i32* %14, align 4
  %349 = shl i32 %347, %348
  %350 = load i32, i32* %10, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %10, align 4
  br label %352

352:                                              ; preds = %337, %324
  %353 = load i32, i32* %14, align 4
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @KG_GET_MASK_OFFSET_SHIFT(i32 %353, i32 %354)
  %356 = load i32, i32* %9, align 4
  %357 = icmp slt i32 %356, 2
  br i1 %357, label %358, label %372

358:                                              ; preds = %352
  %359 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %360 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %359, i32 0, i32 2
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %360, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = load i32, i32* %14, align 4
  %369 = shl i32 %367, %368
  %370 = load i32, i32* %10, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %10, align 4
  br label %386

372:                                              ; preds = %352
  %373 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %374 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %373, i32 0, i32 2
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %374, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = trunc i64 %380 to i32
  %382 = load i32, i32* %14, align 4
  %383 = shl i32 %381, %382
  %384 = load i32, i32* %12, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %12, align 4
  br label %386

386:                                              ; preds = %372, %358
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* %9, align 4
  %389 = call i32 @KG_GET_MASK_SHIFT(i32 %387, i32 %388)
  %390 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %391 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %390, i32 0, i32 2
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = load i32, i32* %14, align 4
  %400 = shl i32 %398, %399
  %401 = load i32, i32* %11, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %11, align 4
  br label %403

403:                                              ; preds = %386
  %404 = load i32, i32* %9, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %9, align 4
  br label %305

406:                                              ; preds = %305
  %407 = load %struct.fman_kg_extract_params*, %struct.fman_kg_extract_params** %6, align 8
  %408 = getelementptr inbounds %struct.fman_kg_extract_params, %struct.fman_kg_extract_params* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  store i32 %409, i32* %9, align 4
  br label %410

410:                                              ; preds = %422, %406
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* @FM_KG_EXTRACT_MASKS_NUM, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %425

414:                                              ; preds = %410
  %415 = load i32, i32* %14, align 4
  %416 = load i32, i32* %9, align 4
  %417 = call i32 @KG_GET_MASK_SHIFT(i32 %415, i32 %416)
  %418 = load i32, i32* %14, align 4
  %419 = shl i32 255, %418
  %420 = load i32, i32* %11, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %414
  %423 = load i32, i32* %9, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %9, align 4
  br label %410

425:                                              ; preds = %410
  %426 = load i32, i32* %10, align 4
  %427 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %428 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %427, i32 0, i32 3
  store i32 %426, i32* %428, align 8
  %429 = load i32, i32* %11, align 4
  %430 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %431 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %430, i32 0, i32 4
  store i32 %429, i32* %431, align 4
  %432 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %433 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = and i32 %434, -16777216
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %425
  %438 = load i32, i32* @EINVAL, align 4
  %439 = sub nsw i32 0, %438
  store i32 %439, i32* %3, align 4
  br label %593

440:                                              ; preds = %425
  %441 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %442 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* %12, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %12, align 4
  %446 = load i32, i32* %12, align 4
  %447 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %448 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %447, i32 0, i32 5
  store i32 %446, i32* %448, align 8
  store i32 0, i32* %8, align 4
  %449 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %450 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %449, i32 0, i32 7
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 3
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %500

454:                                              ; preds = %440
  %455 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %456 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %455, i32 0, i32 7
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = and i32 %458, -16777216
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  %462 = load i32, i32* @EINVAL, align 4
  %463 = sub nsw i32 0, %462
  store i32 %463, i32* %3, align 4
  br label %593

464:                                              ; preds = %454
  %465 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %466 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %465, i32 0, i32 7
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @FMAN_KG_SCH_HASH_HSHIFT_MAX, align 8
  %470 = icmp sgt i64 %468, %469
  br i1 %470, label %471, label %474

471:                                              ; preds = %464
  %472 = load i32, i32* @EINVAL, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %3, align 4
  br label %593

474:                                              ; preds = %464
  %475 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %476 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %475, i32 0, i32 7
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %8, align 4
  %481 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %482 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %481, i32 0, i32 7
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = trunc i64 %484 to i32
  %486 = load i32, i32* @FMAN_KG_SCH_HASH_HSHIFT_SHIFT, align 4
  %487 = shl i32 %485, %486
  %488 = load i32, i32* %8, align 4
  %489 = or i32 %488, %487
  store i32 %489, i32* %8, align 4
  %490 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %491 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %474
  %496 = load i32, i32* @FMAN_KG_SCH_HASH_SYM, align 4
  %497 = load i32, i32* %8, align 4
  %498 = or i32 %497, %496
  store i32 %498, i32* %8, align 4
  br label %499

499:                                              ; preds = %495, %474
  br label %500

500:                                              ; preds = %499, %440
  %501 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %502 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %501, i32 0, i32 6
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %500
  %506 = load i32, i32* @FMAN_KG_SCH_HASH_NO_FQID_GEN, align 4
  %507 = load i32, i32* %8, align 4
  %508 = or i32 %507, %506
  store i32 %508, i32* %8, align 4
  br label %509

509:                                              ; preds = %505, %500
  %510 = load i32, i32* %8, align 4
  %511 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %512 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %511, i32 0, i32 6
  store i32 %510, i32* %512, align 4
  %513 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %514 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %513, i32 0, i32 5
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %509
  store i32 0, i32* %8, align 4
  br label %565

519:                                              ; preds = %509
  %520 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %521 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %520, i32 0, i32 5
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = load i64, i64* @FMAN_KG_SCH_PP_SHIFT_MAX, align 8
  %525 = icmp sgt i64 %523, %524
  br i1 %525, label %526, label %529

526:                                              ; preds = %519
  %527 = load i32, i32* @EINVAL, align 4
  %528 = sub nsw i32 0, %527
  store i32 %528, i32* %3, align 4
  br label %593

529:                                              ; preds = %519
  %530 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %531 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 8
  store i32 %533, i32* %8, align 4
  %534 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %535 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %534, i32 0, i32 5
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = trunc i64 %537 to i32
  %539 = load i32, i32* @FMAN_KG_SCH_PP_SH_SHIFT, align 4
  %540 = shl i32 %538, %539
  %541 = load i32, i32* @FMAN_KG_SCH_PP_SH_MASK, align 4
  %542 = and i32 %540, %541
  %543 = load i32, i32* %8, align 4
  %544 = or i32 %543, %542
  store i32 %544, i32* %8, align 4
  %545 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %546 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %545, i32 0, i32 5
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = trunc i64 %548 to i32
  %550 = load i32, i32* @FMAN_KG_SCH_PP_SL_SHIFT, align 4
  %551 = shl i32 %549, %550
  %552 = load i32, i32* @FMAN_KG_SCH_PP_SL_MASK, align 4
  %553 = and i32 %551, %552
  %554 = load i32, i32* %8, align 4
  %555 = or i32 %554, %553
  store i32 %555, i32* %8, align 4
  %556 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %557 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %556, i32 0, i32 5
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 2
  %559 = load i64, i64* %558, align 8
  %560 = trunc i64 %559 to i32
  %561 = load i32, i32* @FMAN_KG_SCH_PP_MASK_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = load i32, i32* %8, align 4
  %564 = or i32 %563, %562
  store i32 %564, i32* %8, align 4
  br label %565

565:                                              ; preds = %529, %518
  %566 = load i32, i32* %8, align 4
  %567 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %568 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %567, i32 0, i32 7
  store i32 %566, i32* %568, align 8
  %569 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %570 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @E_FMAN_PCD_CC, align 8
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %574, label %581

574:                                              ; preds = %565
  %575 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %576 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %575, i32 0, i32 4
  %577 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %580 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %579, i32 0, i32 9
  store i32 %578, i32* %580, align 8
  br label %581

581:                                              ; preds = %574, %565
  %582 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %583 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %582, i32 0, i32 3
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %592

586:                                              ; preds = %581
  %587 = load %struct.fman_kg_scheme_params*, %struct.fman_kg_scheme_params** %4, align 8
  %588 = getelementptr inbounds %struct.fman_kg_scheme_params, %struct.fman_kg_scheme_params* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %5, align 8
  %591 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %590, i32 0, i32 8
  store i32 %589, i32* %591, align 4
  br label %592

592:                                              ; preds = %586, %581
  store i32 0, i32* %3, align 4
  br label %593

593:                                              ; preds = %592, %526, %471, %461, %437, %301, %242, %199, %28
  %594 = load i32, i32* %3, align 4
  ret i32 %594
}

declare dso_local i32 @memset(%struct.fman_kg_scheme_regs*, i32, i32) #1

declare dso_local i32 @fm_kg_build_nia(i64, i32) #1

declare dso_local i32 @get_gen_ht_code(i32, i32, i32*) #1

declare dso_local i32 @KG_GET_MASK_SEL_SHIFT(i32, i32) #1

declare dso_local i32 @KG_GET_MASK_OFFSET_SHIFT(i32, i32) #1

declare dso_local i32 @KG_GET_MASK_SHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
