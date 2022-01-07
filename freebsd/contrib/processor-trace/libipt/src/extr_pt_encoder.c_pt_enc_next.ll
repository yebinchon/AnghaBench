; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_encoder = type { i32* }
%struct.pt_packet = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_30__, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@ptps_pad = common dso_local global i32 0, align 4
@pt_opc_pad = common dso_local global i32 0, align 4
@ptps_psb = common dso_local global i32 0, align 4
@pt_psb_hilo = common dso_local global i32 0, align 4
@ptps_psbend = common dso_local global i32 0, align 4
@pt_opc_ext = common dso_local global i8* null, align 8
@pt_ext_psbend = common dso_local global i32 0, align 4
@ptps_ovf = common dso_local global i32 0, align 4
@pt_ext_ovf = common dso_local global i32 0, align 4
@pt_opc_fup = common dso_local global i32 0, align 4
@pt_opc_tip = common dso_local global i32 0, align 4
@pt_opc_tip_pge = common dso_local global i32 0, align 4
@pt_opc_tip_pgd = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@ptps_tnt_8 = common dso_local global i32 0, align 4
@pt_opm_tnt_8_shr = common dso_local global i32 0, align 4
@ptps_tnt_64 = common dso_local global i32 0, align 4
@pt_pl_tnt_64_bits = common dso_local global i32 0, align 4
@pt_ext_tnt_64 = common dso_local global i32 0, align 4
@pt_pl_tnt_64_size = common dso_local global i32 0, align 4
@ptps_mode = common dso_local global i32 0, align 4
@pt_mob_exec_csl = common dso_local global i32 0, align 4
@pt_mob_exec_csd = common dso_local global i32 0, align 4
@pt_mob_tsx_intx = common dso_local global i32 0, align 4
@pt_mob_tsx_abrt = common dso_local global i32 0, align 4
@pt_opc_mode = common dso_local global i32 0, align 4
@ptps_pip = common dso_local global i32 0, align 4
@pt_pl_pip_shl = common dso_local global i32 0, align 4
@pt_pl_pip_shr = common dso_local global i32 0, align 4
@pt_pl_pip_nr = common dso_local global i32 0, align 4
@pt_ext_pip = common dso_local global i32 0, align 4
@pt_pl_pip_size = common dso_local global i32 0, align 4
@ptps_tsc = common dso_local global i32 0, align 4
@pt_opc_tsc = common dso_local global i32 0, align 4
@pt_pl_tsc_size = common dso_local global i32 0, align 4
@ptps_cbr = common dso_local global i32 0, align 4
@pt_ext_cbr = common dso_local global i32 0, align 4
@ptps_tma = common dso_local global i32 0, align 4
@pt_pl_tma_fc_mask = common dso_local global i32 0, align 4
@pt_ext_tma = common dso_local global i32 0, align 4
@pt_pl_tma_ctc_size = common dso_local global i32 0, align 4
@pt_pl_tma_fc_size = common dso_local global i32 0, align 4
@ptps_mtc = common dso_local global i32 0, align 4
@pt_opc_mtc = common dso_local global i32 0, align 4
@pt_pl_cyc_max_size = common dso_local global i32 0, align 4
@pt_opm_cyc_shr = common dso_local global i32 0, align 4
@pt_opc_cyc = common dso_local global i32 0, align 4
@pt_opm_cyc_ext = common dso_local global i32 0, align 4
@pt_opm_cycx_shr = common dso_local global i32 0, align 4
@pt_opm_cycx_ext = common dso_local global i32 0, align 4
@ptps_stop = common dso_local global i32 0, align 4
@pt_ext_stop = common dso_local global i32 0, align 4
@ptps_vmcs = common dso_local global i32 0, align 4
@pt_ext_vmcs = common dso_local global i32 0, align 4
@pt_pl_vmcs_shl = common dso_local global i32 0, align 4
@pt_pl_vmcs_size = common dso_local global i32 0, align 4
@ptps_mnt = common dso_local global i32 0, align 4
@pt_ext_ext2 = common dso_local global i32 0, align 4
@pt_ext2_mnt = common dso_local global i32 0, align 4
@pt_pl_mnt_size = common dso_local global i32 0, align 4
@ptps_exstop = common dso_local global i32 0, align 4
@pt_ext_exstop_ip = common dso_local global i32 0, align 4
@pt_ext_exstop = common dso_local global i32 0, align 4
@ptps_mwait = common dso_local global i32 0, align 4
@pt_ext_mwait = common dso_local global i32 0, align 4
@pt_pl_mwait_hints_size = common dso_local global i32 0, align 4
@pt_pl_mwait_ext_size = common dso_local global i32 0, align 4
@ptps_pwre = common dso_local global i32 0, align 4
@pt_pl_pwre_state_shr = common dso_local global i32 0, align 4
@pt_pl_pwre_state_mask = common dso_local global i32 0, align 4
@pt_pl_pwre_sub_state_shr = common dso_local global i32 0, align 4
@pt_pl_pwre_sub_state_mask = common dso_local global i32 0, align 4
@pt_pl_pwre_hw_mask = common dso_local global i32 0, align 4
@pt_ext_pwre = common dso_local global i32 0, align 4
@pt_pl_pwre_size = common dso_local global i32 0, align 4
@ptps_pwrx = common dso_local global i32 0, align 4
@pt_pl_pwrx_last_shr = common dso_local global i32 0, align 4
@pt_pl_pwrx_last_mask = common dso_local global i32 0, align 4
@pt_pl_pwrx_deepest_shr = common dso_local global i32 0, align 4
@pt_pl_pwrx_deepest_mask = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_int = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_store = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_hw = common dso_local global i32 0, align 4
@pt_ext_pwrx = common dso_local global i32 0, align 4
@pt_pl_pwrx_size = common dso_local global i32 0, align 4
@pt_opcs_ptw = common dso_local global i32 0, align 4
@pt_ext_ptw = common dso_local global i32 0, align 4
@pt_opm_ptw_pb_shr = common dso_local global i32 0, align 4
@pt_opm_ptw_ip = common dso_local global i32 0, align 4
@pte_bad_opc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_enc_next(%struct.pt_encoder* %0, %struct.pt_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_encoder*, align 8
  %5 = alloca %struct.pt_packet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.pt_encoder* %0, %struct.pt_encoder** %4, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %5, align 8
  %30 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %31 = icmp ne %struct.pt_encoder* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %34 = icmp ne %struct.pt_packet* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* @pte_invalid, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %1089

38:                                               ; preds = %32
  %39 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %40 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %7, align 8
  store i32* %41, i32** %6, align 8
  %42 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %43 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %1086 [
    i32 146, label %45
    i32 144, label %67
    i32 143, label %102
    i32 147, label %128
    i32 153, label %154
    i32 138, label %161
    i32 136, label %168
    i32 137, label %175
    i32 133, label %182
    i32 134, label %231
    i32 150, label %297
    i32 145, label %385
    i32 132, label %437
    i32 156, label %467
    i32 135, label %502
    i32 149, label %557
    i32 155, label %586
    i32 139, label %691
    i32 130, label %717
    i32 151, label %753
    i32 154, label %790
    i32 148, label %828
    i32 141, label %870
    i32 140, label %933
    i32 142, label %1018
    i32 131, label %1083
    i32 152, label %1083
  ]

45:                                               ; preds = %38
  %46 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %47 = load i32, i32* @ptps_pad, align 4
  %48 = call i32 @pt_reserve(%struct.pt_encoder* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %1089

53:                                               ; preds = %45
  %54 = load i32, i32* @pt_opc_pad, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %59 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %1089

67:                                               ; preds = %38
  %68 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %69 = load i32, i32* @ptps_psb, align 4
  %70 = call i32 @pt_reserve(%struct.pt_encoder* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %1089

75:                                               ; preds = %67
  %76 = load i32, i32* @pt_psb_hilo, align 4
  %77 = shl i32 %76, 48
  %78 = load i32, i32* @pt_psb_hilo, align 4
  %79 = shl i32 %78, 32
  %80 = or i32 %77, %79
  %81 = load i32, i32* @pt_psb_hilo, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  %84 = load i32, i32* @pt_psb_hilo, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32* @pt_encode_int(i32* %86, i32 %87, i32 8)
  store i32* %88, i32** %6, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32* @pt_encode_int(i32* %89, i32 %90, i32 8)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %94 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %1089

102:                                              ; preds = %38
  %103 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %104 = load i32, i32* @ptps_psbend, align 4
  %105 = call i32 @pt_reserve(%struct.pt_encoder* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %1089

110:                                              ; preds = %102
  %111 = load i8*, i8** @pt_opc_ext, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i32, i32* @pt_ext_psbend, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %120 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = ptrtoint i32* %121 to i64
  %124 = ptrtoint i32* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %3, align 4
  br label %1089

128:                                              ; preds = %38
  %129 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %130 = load i32, i32* @ptps_ovf, align 4
  %131 = call i32 @pt_reserve(%struct.pt_encoder* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %1089

136:                                              ; preds = %128
  %137 = load i8*, i8** @pt_opc_ext, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32, i32* @pt_ext_ovf, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %6, align 8
  store i32 %141, i32* %142, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %146 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %145, i32 0, i32 0
  store i32* %144, i32** %146, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %3, align 4
  br label %1089

154:                                              ; preds = %38
  %155 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %156 = load i32, i32* @pt_opc_fup, align 4
  %157 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %158 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 15
  %160 = call i32 @pt_encode_ip(%struct.pt_encoder* %155, i32 %156, i32* %159)
  store i32 %160, i32* %3, align 4
  br label %1089

161:                                              ; preds = %38
  %162 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %163 = load i32, i32* @pt_opc_tip, align 4
  %164 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %165 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 15
  %167 = call i32 @pt_encode_ip(%struct.pt_encoder* %162, i32 %163, i32* %166)
  store i32 %167, i32* %3, align 4
  br label %1089

168:                                              ; preds = %38
  %169 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %170 = load i32, i32* @pt_opc_tip_pge, align 4
  %171 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %172 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 15
  %174 = call i32 @pt_encode_ip(%struct.pt_encoder* %169, i32 %170, i32* %173)
  store i32 %174, i32* %3, align 4
  br label %1089

175:                                              ; preds = %38
  %176 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %177 = load i32, i32* @pt_opc_tip_pgd, align 4
  %178 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %179 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 15
  %181 = call i32 @pt_encode_ip(%struct.pt_encoder* %176, i32 %177, i32* %180)
  store i32 %181, i32* %3, align 4
  br label %1089

182:                                              ; preds = %38
  %183 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %184 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 14
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %187, 7
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @pte_bad_packet, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %1089

192:                                              ; preds = %182
  %193 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %194 = load i32, i32* @ptps_tnt_8, align 4
  %195 = call i32 @pt_reserve(%struct.pt_encoder* %193, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %1089

200:                                              ; preds = %192
  %201 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %202 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 14
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @pt_opm_tnt_8_shr, align 4
  %207 = add i32 %205, %206
  store i32 %207, i32* %11, align 4
  %208 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %209 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 14
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @pt_opm_tnt_8_shr, align 4
  %214 = shl i32 %212, %213
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %11, align 4
  %217 = shl i32 1, %216
  %218 = or i32 %215, %217
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %6, align 8
  store i32 %218, i32* %219, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %223 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %222, i32 0, i32 0
  store i32* %221, i32** %223, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = ptrtoint i32* %224 to i64
  %227 = ptrtoint i32* %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 4
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %3, align 4
  br label %1089

231:                                              ; preds = %38
  %232 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %233 = load i32, i32* @ptps_tnt_64, align 4
  %234 = call i32 @pt_reserve(%struct.pt_encoder* %232, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %3, align 4
  br label %1089

239:                                              ; preds = %231
  %240 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %241 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 14
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @pt_pl_tnt_64_bits, align 4
  %246 = icmp uge i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = load i32, i32* @pte_invalid, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %3, align 4
  br label %1089

250:                                              ; preds = %239
  %251 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %252 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 14
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  %257 = shl i64 1, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %13, align 4
  %259 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %260 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 14
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %13, align 4
  %266 = sub nsw i32 %265, 1
  %267 = xor i32 %266, -1
  %268 = and i32 %264, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %250
  %271 = load i32, i32* @pte_invalid, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %3, align 4
  br label %1089

273:                                              ; preds = %250
  %274 = load i8*, i8** @pt_opc_ext, align 8
  %275 = ptrtoint i8* %274 to i32
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %6, align 8
  store i32 %275, i32* %276, align 4
  %278 = load i32, i32* @pt_ext_tnt_64, align 4
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %6, align 8
  store i32 %278, i32* %279, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %13, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @pt_pl_tnt_64_size, align 4
  %286 = call i32* @pt_encode_int(i32* %281, i32 %284, i32 %285)
  store i32* %286, i32** %6, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %289 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %288, i32 0, i32 0
  store i32* %287, i32** %289, align 8
  %290 = load i32*, i32** %6, align 8
  %291 = load i32*, i32** %7, align 8
  %292 = ptrtoint i32* %290 to i64
  %293 = ptrtoint i32* %291 to i64
  %294 = sub i64 %292, %293
  %295 = sdiv exact i64 %294, 4
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %3, align 4
  br label %1089

297:                                              ; preds = %38
  %298 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %299 = load i32, i32* @ptps_mode, align 4
  %300 = call i32 @pt_reserve(%struct.pt_encoder* %298, i32 %299)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %8, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = load i32, i32* %8, align 4
  store i32 %304, i32* %3, align 4
  br label %1089

305:                                              ; preds = %297
  %306 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %307 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 13
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  switch i32 %310, label %311 [
    i32 129, label %314
    i32 128, label %341
  ]

311:                                              ; preds = %305
  %312 = load i32, i32* @pte_bad_packet, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %1089

314:                                              ; preds = %305
  store i32 129, i32* %14, align 4
  %315 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %316 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 13
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %314
  %324 = load i32, i32* @pt_mob_exec_csl, align 4
  %325 = load i32, i32* %14, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %14, align 4
  br label %327

327:                                              ; preds = %323, %314
  %328 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %329 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 13
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %327
  %337 = load i32, i32* @pt_mob_exec_csd, align 4
  %338 = load i32, i32* %14, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %14, align 4
  br label %340

340:                                              ; preds = %336, %327
  br label %368

341:                                              ; preds = %305
  store i32 128, i32* %14, align 4
  %342 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %343 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %343, i32 0, i32 13
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %341
  %351 = load i32, i32* @pt_mob_tsx_intx, align 4
  %352 = load i32, i32* %14, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %14, align 4
  br label %354

354:                                              ; preds = %350, %341
  %355 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %356 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 13
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %354
  %364 = load i32, i32* @pt_mob_tsx_abrt, align 4
  %365 = load i32, i32* %14, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %14, align 4
  br label %367

367:                                              ; preds = %363, %354
  br label %368

368:                                              ; preds = %367, %340
  %369 = load i32, i32* @pt_opc_mode, align 4
  %370 = load i32*, i32** %6, align 8
  %371 = getelementptr inbounds i32, i32* %370, i32 1
  store i32* %371, i32** %6, align 8
  store i32 %369, i32* %370, align 4
  %372 = load i32, i32* %14, align 4
  %373 = load i32*, i32** %6, align 8
  %374 = getelementptr inbounds i32, i32* %373, i32 1
  store i32* %374, i32** %6, align 8
  store i32 %372, i32* %373, align 4
  %375 = load i32*, i32** %6, align 8
  %376 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %377 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %376, i32 0, i32 0
  store i32* %375, i32** %377, align 8
  %378 = load i32*, i32** %6, align 8
  %379 = load i32*, i32** %7, align 8
  %380 = ptrtoint i32* %378 to i64
  %381 = ptrtoint i32* %379 to i64
  %382 = sub i64 %380, %381
  %383 = sdiv exact i64 %382, 4
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %3, align 4
  br label %1089

385:                                              ; preds = %38
  %386 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %387 = load i32, i32* @ptps_pip, align 4
  %388 = call i32 @pt_reserve(%struct.pt_encoder* %386, i32 %387)
  store i32 %388, i32* %8, align 4
  %389 = load i32, i32* %8, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = load i32, i32* %8, align 4
  store i32 %392, i32* %3, align 4
  br label %1089

393:                                              ; preds = %385
  %394 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %395 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 12
  %397 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %15, align 4
  %399 = load i32, i32* @pt_pl_pip_shl, align 4
  %400 = load i32, i32* %15, align 4
  %401 = ashr i32 %400, %399
  store i32 %401, i32* %15, align 4
  %402 = load i32, i32* @pt_pl_pip_shr, align 4
  %403 = load i32, i32* %15, align 4
  %404 = shl i32 %403, %402
  store i32 %404, i32* %15, align 4
  %405 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %406 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %406, i32 0, i32 12
  %408 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %393
  %412 = load i32, i32* @pt_pl_pip_nr, align 4
  %413 = load i32, i32* %15, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %15, align 4
  br label %415

415:                                              ; preds = %411, %393
  %416 = load i8*, i8** @pt_opc_ext, align 8
  %417 = ptrtoint i8* %416 to i32
  %418 = load i32*, i32** %6, align 8
  %419 = getelementptr inbounds i32, i32* %418, i32 1
  store i32* %419, i32** %6, align 8
  store i32 %417, i32* %418, align 4
  %420 = load i32, i32* @pt_ext_pip, align 4
  %421 = load i32*, i32** %6, align 8
  %422 = getelementptr inbounds i32, i32* %421, i32 1
  store i32* %422, i32** %6, align 8
  store i32 %420, i32* %421, align 4
  %423 = load i32*, i32** %6, align 8
  %424 = load i32, i32* %15, align 4
  %425 = load i32, i32* @pt_pl_pip_size, align 4
  %426 = call i32* @pt_encode_int(i32* %423, i32 %424, i32 %425)
  store i32* %426, i32** %6, align 8
  %427 = load i32*, i32** %6, align 8
  %428 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %429 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %428, i32 0, i32 0
  store i32* %427, i32** %429, align 8
  %430 = load i32*, i32** %6, align 8
  %431 = load i32*, i32** %7, align 8
  %432 = ptrtoint i32* %430 to i64
  %433 = ptrtoint i32* %431 to i64
  %434 = sub i64 %432, %433
  %435 = sdiv exact i64 %434, 4
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %3, align 4
  br label %1089

437:                                              ; preds = %38
  %438 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %439 = load i32, i32* @ptps_tsc, align 4
  %440 = call i32 @pt_reserve(%struct.pt_encoder* %438, i32 %439)
  store i32 %440, i32* %8, align 4
  %441 = load i32, i32* %8, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %437
  %444 = load i32, i32* %8, align 4
  store i32 %444, i32* %3, align 4
  br label %1089

445:                                              ; preds = %437
  %446 = load i32, i32* @pt_opc_tsc, align 4
  %447 = load i32*, i32** %6, align 8
  %448 = getelementptr inbounds i32, i32* %447, i32 1
  store i32* %448, i32** %6, align 8
  store i32 %446, i32* %447, align 4
  %449 = load i32*, i32** %6, align 8
  %450 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %451 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 11
  %453 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @pt_pl_tsc_size, align 4
  %456 = call i32* @pt_encode_int(i32* %449, i32 %454, i32 %455)
  store i32* %456, i32** %6, align 8
  %457 = load i32*, i32** %6, align 8
  %458 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %459 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %458, i32 0, i32 0
  store i32* %457, i32** %459, align 8
  %460 = load i32*, i32** %6, align 8
  %461 = load i32*, i32** %7, align 8
  %462 = ptrtoint i32* %460 to i64
  %463 = ptrtoint i32* %461 to i64
  %464 = sub i64 %462, %463
  %465 = sdiv exact i64 %464, 4
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %3, align 4
  br label %1089

467:                                              ; preds = %38
  %468 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %469 = load i32, i32* @ptps_cbr, align 4
  %470 = call i32 @pt_reserve(%struct.pt_encoder* %468, i32 %469)
  store i32 %470, i32* %8, align 4
  %471 = load i32, i32* %8, align 4
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %467
  %474 = load i32, i32* %8, align 4
  store i32 %474, i32* %3, align 4
  br label %1089

475:                                              ; preds = %467
  %476 = load i8*, i8** @pt_opc_ext, align 8
  %477 = ptrtoint i8* %476 to i32
  %478 = load i32*, i32** %6, align 8
  %479 = getelementptr inbounds i32, i32* %478, i32 1
  store i32* %479, i32** %6, align 8
  store i32 %477, i32* %478, align 4
  %480 = load i32, i32* @pt_ext_cbr, align 4
  %481 = load i32*, i32** %6, align 8
  %482 = getelementptr inbounds i32, i32* %481, i32 1
  store i32* %482, i32** %6, align 8
  store i32 %480, i32* %481, align 4
  %483 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %484 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %484, i32 0, i32 10
  %486 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32*, i32** %6, align 8
  %489 = getelementptr inbounds i32, i32* %488, i32 1
  store i32* %489, i32** %6, align 8
  store i32 %487, i32* %488, align 4
  %490 = load i32*, i32** %6, align 8
  %491 = getelementptr inbounds i32, i32* %490, i32 1
  store i32* %491, i32** %6, align 8
  store i32 0, i32* %490, align 4
  %492 = load i32*, i32** %6, align 8
  %493 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %494 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %493, i32 0, i32 0
  store i32* %492, i32** %494, align 8
  %495 = load i32*, i32** %6, align 8
  %496 = load i32*, i32** %7, align 8
  %497 = ptrtoint i32* %495 to i64
  %498 = ptrtoint i32* %496 to i64
  %499 = sub i64 %497, %498
  %500 = sdiv exact i64 %499, 4
  %501 = trunc i64 %500 to i32
  store i32 %501, i32* %3, align 4
  br label %1089

502:                                              ; preds = %38
  %503 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %504 = load i32, i32* @ptps_tma, align 4
  %505 = call i32 @pt_reserve(%struct.pt_encoder* %503, i32 %504)
  store i32 %505, i32* %8, align 4
  %506 = load i32, i32* %8, align 4
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %502
  %509 = load i32, i32* %8, align 4
  store i32 %509, i32* %3, align 4
  br label %1089

510:                                              ; preds = %502
  %511 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %512 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %512, i32 0, i32 9
  %514 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  store i32 %515, i32* %16, align 4
  %516 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %517 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %517, i32 0, i32 9
  %519 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  store i32 %520, i32* %17, align 4
  %521 = load i32, i32* %17, align 4
  %522 = load i32, i32* @pt_pl_tma_fc_mask, align 4
  %523 = xor i32 %522, -1
  %524 = and i32 %521, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %510
  %527 = load i32, i32* @pte_bad_packet, align 4
  %528 = sub nsw i32 0, %527
  store i32 %528, i32* %3, align 4
  br label %1089

529:                                              ; preds = %510
  %530 = load i8*, i8** @pt_opc_ext, align 8
  %531 = ptrtoint i8* %530 to i32
  %532 = load i32*, i32** %6, align 8
  %533 = getelementptr inbounds i32, i32* %532, i32 1
  store i32* %533, i32** %6, align 8
  store i32 %531, i32* %532, align 4
  %534 = load i32, i32* @pt_ext_tma, align 4
  %535 = load i32*, i32** %6, align 8
  %536 = getelementptr inbounds i32, i32* %535, i32 1
  store i32* %536, i32** %6, align 8
  store i32 %534, i32* %535, align 4
  %537 = load i32*, i32** %6, align 8
  %538 = load i32, i32* %16, align 4
  %539 = load i32, i32* @pt_pl_tma_ctc_size, align 4
  %540 = call i32* @pt_encode_int(i32* %537, i32 %538, i32 %539)
  store i32* %540, i32** %6, align 8
  %541 = load i32*, i32** %6, align 8
  %542 = getelementptr inbounds i32, i32* %541, i32 1
  store i32* %542, i32** %6, align 8
  store i32 0, i32* %541, align 4
  %543 = load i32*, i32** %6, align 8
  %544 = load i32, i32* %17, align 4
  %545 = load i32, i32* @pt_pl_tma_fc_size, align 4
  %546 = call i32* @pt_encode_int(i32* %543, i32 %544, i32 %545)
  store i32* %546, i32** %6, align 8
  %547 = load i32*, i32** %6, align 8
  %548 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %549 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %548, i32 0, i32 0
  store i32* %547, i32** %549, align 8
  %550 = load i32*, i32** %6, align 8
  %551 = load i32*, i32** %7, align 8
  %552 = ptrtoint i32* %550 to i64
  %553 = ptrtoint i32* %551 to i64
  %554 = sub i64 %552, %553
  %555 = sdiv exact i64 %554, 4
  %556 = trunc i64 %555 to i32
  store i32 %556, i32* %3, align 4
  br label %1089

557:                                              ; preds = %38
  %558 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %559 = load i32, i32* @ptps_mtc, align 4
  %560 = call i32 @pt_reserve(%struct.pt_encoder* %558, i32 %559)
  store i32 %560, i32* %8, align 4
  %561 = load i32, i32* %8, align 4
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %565

563:                                              ; preds = %557
  %564 = load i32, i32* %8, align 4
  store i32 %564, i32* %3, align 4
  br label %1089

565:                                              ; preds = %557
  %566 = load i32, i32* @pt_opc_mtc, align 4
  %567 = load i32*, i32** %6, align 8
  %568 = getelementptr inbounds i32, i32* %567, i32 1
  store i32* %568, i32** %6, align 8
  store i32 %566, i32* %567, align 4
  %569 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %570 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %570, i32 0, i32 8
  %572 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = load i32*, i32** %6, align 8
  %575 = getelementptr inbounds i32, i32* %574, i32 1
  store i32* %575, i32** %6, align 8
  store i32 %573, i32* %574, align 4
  %576 = load i32*, i32** %6, align 8
  %577 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %578 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %577, i32 0, i32 0
  store i32* %576, i32** %578, align 8
  %579 = load i32*, i32** %6, align 8
  %580 = load i32*, i32** %7, align 8
  %581 = ptrtoint i32* %579 to i64
  %582 = ptrtoint i32* %580 to i64
  %583 = sub i64 %581, %582
  %584 = sdiv exact i64 %583, 4
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %3, align 4
  br label %1089

586:                                              ; preds = %38
  %587 = load i32, i32* @pt_pl_cyc_max_size, align 4
  %588 = zext i32 %587 to i64
  %589 = call i8* @llvm.stacksave()
  store i8* %589, i8** %18, align 8
  %590 = alloca i32, i64 %588, align 16
  store i64 %588, i64* %19, align 8
  %591 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %592 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %592, i32 0, i32 7
  %594 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  store i32 %595, i32* %22, align 4
  %596 = load i32, i32* @pt_opm_cyc_shr, align 4
  %597 = load i32, i32* %22, align 4
  %598 = shl i32 %597, %596
  store i32 %598, i32* %22, align 4
  %599 = load i32, i32* @pt_opc_cyc, align 4
  %600 = getelementptr inbounds i32, i32* %590, i64 0
  store i32 %599, i32* %600, align 16
  %601 = load i32, i32* %22, align 4
  %602 = getelementptr inbounds i32, i32* %590, i64 0
  %603 = load i32, i32* %602, align 16
  %604 = or i32 %603, %601
  store i32 %604, i32* %602, align 16
  %605 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %606 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i32 0, i32 7
  %608 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 4
  store i32 %609, i32* %22, align 4
  %610 = load i32, i32* @pt_opm_cyc_shr, align 4
  %611 = sub nsw i32 8, %610
  %612 = load i32, i32* %22, align 4
  %613 = ashr i32 %612, %611
  store i32 %613, i32* %22, align 4
  %614 = load i32, i32* %22, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %621

616:                                              ; preds = %586
  %617 = load i32, i32* @pt_opm_cyc_ext, align 4
  %618 = getelementptr inbounds i32, i32* %590, i64 0
  %619 = load i32, i32* %618, align 16
  %620 = or i32 %619, %617
  store i32 %620, i32* %618, align 16
  br label %621

621:                                              ; preds = %616, %586
  store i32 1, i32* %21, align 4
  br label %622

622:                                              ; preds = %652, %621
  %623 = load i32, i32* %22, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %655

625:                                              ; preds = %622
  %626 = load i32, i32* @pt_pl_cyc_max_size, align 4
  %627 = load i32, i32* %21, align 4
  %628 = icmp ule i32 %626, %627
  br i1 %628, label %629, label %632

629:                                              ; preds = %625
  %630 = load i32, i32* @pte_bad_packet, align 4
  %631 = sub nsw i32 0, %630
  store i32 %631, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %689

632:                                              ; preds = %625
  %633 = load i32, i32* @pt_opm_cycx_shr, align 4
  %634 = load i32, i32* %22, align 4
  %635 = shl i32 %634, %633
  store i32 %635, i32* %22, align 4
  %636 = load i32, i32* %22, align 4
  %637 = load i32, i32* %21, align 4
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %590, i64 %638
  store i32 %636, i32* %639, align 4
  %640 = load i32, i32* %22, align 4
  %641 = ashr i32 %640, 8
  store i32 %641, i32* %22, align 4
  %642 = load i32, i32* %22, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %651

644:                                              ; preds = %632
  %645 = load i32, i32* @pt_opm_cycx_ext, align 4
  %646 = load i32, i32* %21, align 4
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds i32, i32* %590, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = or i32 %649, %645
  store i32 %650, i32* %648, align 4
  br label %651

651:                                              ; preds = %644, %632
  br label %652

652:                                              ; preds = %651
  %653 = load i32, i32* %21, align 4
  %654 = add i32 %653, 1
  store i32 %654, i32* %21, align 4
  br label %622

655:                                              ; preds = %622
  %656 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %657 = load i32, i32* %21, align 4
  %658 = call i32 @pt_reserve(%struct.pt_encoder* %656, i32 %657)
  store i32 %658, i32* %8, align 4
  %659 = load i32, i32* %8, align 4
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %655
  %662 = load i32, i32* %8, align 4
  store i32 %662, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %689

663:                                              ; preds = %655
  store i32 0, i32* %20, align 4
  br label %664

664:                                              ; preds = %675, %663
  %665 = load i32, i32* %20, align 4
  %666 = load i32, i32* %21, align 4
  %667 = icmp ult i32 %665, %666
  br i1 %667, label %668, label %678

668:                                              ; preds = %664
  %669 = load i32, i32* %20, align 4
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds i32, i32* %590, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = load i32*, i32** %6, align 8
  %674 = getelementptr inbounds i32, i32* %673, i32 1
  store i32* %674, i32** %6, align 8
  store i32 %672, i32* %673, align 4
  br label %675

675:                                              ; preds = %668
  %676 = load i32, i32* %20, align 4
  %677 = add i32 %676, 1
  store i32 %677, i32* %20, align 4
  br label %664

678:                                              ; preds = %664
  %679 = load i32*, i32** %6, align 8
  %680 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %681 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %680, i32 0, i32 0
  store i32* %679, i32** %681, align 8
  %682 = load i32*, i32** %6, align 8
  %683 = load i32*, i32** %7, align 8
  %684 = ptrtoint i32* %682 to i64
  %685 = ptrtoint i32* %683 to i64
  %686 = sub i64 %684, %685
  %687 = sdiv exact i64 %686, 4
  %688 = trunc i64 %687 to i32
  store i32 %688, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %689

689:                                              ; preds = %678, %661, %629
  %690 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %690)
  br label %1089

691:                                              ; preds = %38
  %692 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %693 = load i32, i32* @ptps_stop, align 4
  %694 = call i32 @pt_reserve(%struct.pt_encoder* %692, i32 %693)
  store i32 %694, i32* %8, align 4
  %695 = load i32, i32* %8, align 4
  %696 = icmp slt i32 %695, 0
  br i1 %696, label %697, label %699

697:                                              ; preds = %691
  %698 = load i32, i32* %8, align 4
  store i32 %698, i32* %3, align 4
  br label %1089

699:                                              ; preds = %691
  %700 = load i8*, i8** @pt_opc_ext, align 8
  %701 = ptrtoint i8* %700 to i32
  %702 = load i32*, i32** %6, align 8
  %703 = getelementptr inbounds i32, i32* %702, i32 1
  store i32* %703, i32** %6, align 8
  store i32 %701, i32* %702, align 4
  %704 = load i32, i32* @pt_ext_stop, align 4
  %705 = load i32*, i32** %6, align 8
  %706 = getelementptr inbounds i32, i32* %705, i32 1
  store i32* %706, i32** %6, align 8
  store i32 %704, i32* %705, align 4
  %707 = load i32*, i32** %6, align 8
  %708 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %709 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %708, i32 0, i32 0
  store i32* %707, i32** %709, align 8
  %710 = load i32*, i32** %6, align 8
  %711 = load i32*, i32** %7, align 8
  %712 = ptrtoint i32* %710 to i64
  %713 = ptrtoint i32* %711 to i64
  %714 = sub i64 %712, %713
  %715 = sdiv exact i64 %714, 4
  %716 = trunc i64 %715 to i32
  store i32 %716, i32* %3, align 4
  br label %1089

717:                                              ; preds = %38
  %718 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %719 = load i32, i32* @ptps_vmcs, align 4
  %720 = call i32 @pt_reserve(%struct.pt_encoder* %718, i32 %719)
  store i32 %720, i32* %8, align 4
  %721 = load i32, i32* %8, align 4
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %723, label %725

723:                                              ; preds = %717
  %724 = load i32, i32* %8, align 4
  store i32 %724, i32* %3, align 4
  br label %1089

725:                                              ; preds = %717
  %726 = load i8*, i8** @pt_opc_ext, align 8
  %727 = ptrtoint i8* %726 to i32
  %728 = load i32*, i32** %6, align 8
  %729 = getelementptr inbounds i32, i32* %728, i32 1
  store i32* %729, i32** %6, align 8
  store i32 %727, i32* %728, align 4
  %730 = load i32, i32* @pt_ext_vmcs, align 4
  %731 = load i32*, i32** %6, align 8
  %732 = getelementptr inbounds i32, i32* %731, i32 1
  store i32* %732, i32** %6, align 8
  store i32 %730, i32* %731, align 4
  %733 = load i32*, i32** %6, align 8
  %734 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %735 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %735, i32 0, i32 6
  %737 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 4
  %739 = load i32, i32* @pt_pl_vmcs_shl, align 4
  %740 = ashr i32 %738, %739
  %741 = load i32, i32* @pt_pl_vmcs_size, align 4
  %742 = call i32* @pt_encode_int(i32* %733, i32 %740, i32 %741)
  store i32* %742, i32** %6, align 8
  %743 = load i32*, i32** %6, align 8
  %744 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %745 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %744, i32 0, i32 0
  store i32* %743, i32** %745, align 8
  %746 = load i32*, i32** %6, align 8
  %747 = load i32*, i32** %7, align 8
  %748 = ptrtoint i32* %746 to i64
  %749 = ptrtoint i32* %747 to i64
  %750 = sub i64 %748, %749
  %751 = sdiv exact i64 %750, 4
  %752 = trunc i64 %751 to i32
  store i32 %752, i32* %3, align 4
  br label %1089

753:                                              ; preds = %38
  %754 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %755 = load i32, i32* @ptps_mnt, align 4
  %756 = call i32 @pt_reserve(%struct.pt_encoder* %754, i32 %755)
  store i32 %756, i32* %8, align 4
  %757 = load i32, i32* %8, align 4
  %758 = icmp slt i32 %757, 0
  br i1 %758, label %759, label %761

759:                                              ; preds = %753
  %760 = load i32, i32* %8, align 4
  store i32 %760, i32* %3, align 4
  br label %1089

761:                                              ; preds = %753
  %762 = load i8*, i8** @pt_opc_ext, align 8
  %763 = ptrtoint i8* %762 to i32
  %764 = load i32*, i32** %6, align 8
  %765 = getelementptr inbounds i32, i32* %764, i32 1
  store i32* %765, i32** %6, align 8
  store i32 %763, i32* %764, align 4
  %766 = load i32, i32* @pt_ext_ext2, align 4
  %767 = load i32*, i32** %6, align 8
  %768 = getelementptr inbounds i32, i32* %767, i32 1
  store i32* %768, i32** %6, align 8
  store i32 %766, i32* %767, align 4
  %769 = load i32, i32* @pt_ext2_mnt, align 4
  %770 = load i32*, i32** %6, align 8
  %771 = getelementptr inbounds i32, i32* %770, i32 1
  store i32* %771, i32** %6, align 8
  store i32 %769, i32* %770, align 4
  %772 = load i32*, i32** %6, align 8
  %773 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %774 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %774, i32 0, i32 5
  %776 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 4
  %778 = load i32, i32* @pt_pl_mnt_size, align 4
  %779 = call i32* @pt_encode_int(i32* %772, i32 %777, i32 %778)
  store i32* %779, i32** %6, align 8
  %780 = load i32*, i32** %6, align 8
  %781 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %782 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %781, i32 0, i32 0
  store i32* %780, i32** %782, align 8
  %783 = load i32*, i32** %6, align 8
  %784 = load i32*, i32** %7, align 8
  %785 = ptrtoint i32* %783 to i64
  %786 = ptrtoint i32* %784 to i64
  %787 = sub i64 %785, %786
  %788 = sdiv exact i64 %787, 4
  %789 = trunc i64 %788 to i32
  store i32 %789, i32* %3, align 4
  br label %1089

790:                                              ; preds = %38
  %791 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %792 = load i32, i32* @ptps_exstop, align 4
  %793 = call i32 @pt_reserve(%struct.pt_encoder* %791, i32 %792)
  store i32 %793, i32* %8, align 4
  %794 = load i32, i32* %8, align 4
  %795 = icmp slt i32 %794, 0
  br i1 %795, label %796, label %798

796:                                              ; preds = %790
  %797 = load i32, i32* %8, align 4
  store i32 %797, i32* %3, align 4
  br label %1089

798:                                              ; preds = %790
  %799 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %800 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %800, i32 0, i32 4
  %802 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 4
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %807

805:                                              ; preds = %798
  %806 = load i32, i32* @pt_ext_exstop_ip, align 4
  br label %809

807:                                              ; preds = %798
  %808 = load i32, i32* @pt_ext_exstop, align 4
  br label %809

809:                                              ; preds = %807, %805
  %810 = phi i32 [ %806, %805 ], [ %808, %807 ]
  store i32 %810, i32* %24, align 4
  %811 = load i8*, i8** @pt_opc_ext, align 8
  %812 = ptrtoint i8* %811 to i32
  %813 = load i32*, i32** %6, align 8
  %814 = getelementptr inbounds i32, i32* %813, i32 1
  store i32* %814, i32** %6, align 8
  store i32 %812, i32* %813, align 4
  %815 = load i32, i32* %24, align 4
  %816 = load i32*, i32** %6, align 8
  %817 = getelementptr inbounds i32, i32* %816, i32 1
  store i32* %817, i32** %6, align 8
  store i32 %815, i32* %816, align 4
  %818 = load i32*, i32** %6, align 8
  %819 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %820 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %819, i32 0, i32 0
  store i32* %818, i32** %820, align 8
  %821 = load i32*, i32** %6, align 8
  %822 = load i32*, i32** %7, align 8
  %823 = ptrtoint i32* %821 to i64
  %824 = ptrtoint i32* %822 to i64
  %825 = sub i64 %823, %824
  %826 = sdiv exact i64 %825, 4
  %827 = trunc i64 %826 to i32
  store i32 %827, i32* %3, align 4
  br label %1089

828:                                              ; preds = %38
  %829 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %830 = load i32, i32* @ptps_mwait, align 4
  %831 = call i32 @pt_reserve(%struct.pt_encoder* %829, i32 %830)
  store i32 %831, i32* %8, align 4
  %832 = load i32, i32* %8, align 4
  %833 = icmp slt i32 %832, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %828
  %835 = load i32, i32* %8, align 4
  store i32 %835, i32* %3, align 4
  br label %1089

836:                                              ; preds = %828
  %837 = load i8*, i8** @pt_opc_ext, align 8
  %838 = ptrtoint i8* %837 to i32
  %839 = load i32*, i32** %6, align 8
  %840 = getelementptr inbounds i32, i32* %839, i32 1
  store i32* %840, i32** %6, align 8
  store i32 %838, i32* %839, align 4
  %841 = load i32, i32* @pt_ext_mwait, align 4
  %842 = load i32*, i32** %6, align 8
  %843 = getelementptr inbounds i32, i32* %842, i32 1
  store i32* %843, i32** %6, align 8
  store i32 %841, i32* %842, align 4
  %844 = load i32*, i32** %6, align 8
  %845 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %846 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %846, i32 0, i32 3
  %848 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 4
  %850 = load i32, i32* @pt_pl_mwait_hints_size, align 4
  %851 = call i32* @pt_encode_int(i32* %844, i32 %849, i32 %850)
  store i32* %851, i32** %6, align 8
  %852 = load i32*, i32** %6, align 8
  %853 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %854 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %854, i32 0, i32 3
  %856 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 4
  %858 = load i32, i32* @pt_pl_mwait_ext_size, align 4
  %859 = call i32* @pt_encode_int(i32* %852, i32 %857, i32 %858)
  store i32* %859, i32** %6, align 8
  %860 = load i32*, i32** %6, align 8
  %861 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %862 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %861, i32 0, i32 0
  store i32* %860, i32** %862, align 8
  %863 = load i32*, i32** %6, align 8
  %864 = load i32*, i32** %7, align 8
  %865 = ptrtoint i32* %863 to i64
  %866 = ptrtoint i32* %864 to i64
  %867 = sub i64 %865, %866
  %868 = sdiv exact i64 %867, 4
  %869 = trunc i64 %868 to i32
  store i32 %869, i32* %3, align 4
  br label %1089

870:                                              ; preds = %38
  %871 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %872 = load i32, i32* @ptps_pwre, align 4
  %873 = call i32 @pt_reserve(%struct.pt_encoder* %871, i32 %872)
  store i32 %873, i32* %8, align 4
  %874 = load i32, i32* %8, align 4
  %875 = icmp slt i32 %874, 0
  br i1 %875, label %876, label %878

876:                                              ; preds = %870
  %877 = load i32, i32* %8, align 4
  store i32 %877, i32* %3, align 4
  br label %1089

878:                                              ; preds = %870
  store i32 0, i32* %25, align 4
  %879 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %880 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %880, i32 0, i32 2
  %882 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %881, i32 0, i32 2
  %883 = load i32, i32* %882, align 4
  %884 = load i32, i32* @pt_pl_pwre_state_shr, align 4
  %885 = shl i32 %883, %884
  %886 = load i32, i32* @pt_pl_pwre_state_mask, align 4
  %887 = and i32 %885, %886
  %888 = load i32, i32* %25, align 4
  %889 = or i32 %888, %887
  store i32 %889, i32* %25, align 4
  %890 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %891 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %890, i32 0, i32 1
  %892 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %891, i32 0, i32 2
  %893 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %892, i32 0, i32 1
  %894 = load i32, i32* %893, align 4
  %895 = load i32, i32* @pt_pl_pwre_sub_state_shr, align 4
  %896 = shl i32 %894, %895
  %897 = load i32, i32* @pt_pl_pwre_sub_state_mask, align 4
  %898 = and i32 %896, %897
  %899 = load i32, i32* %25, align 4
  %900 = or i32 %899, %898
  store i32 %900, i32* %25, align 4
  %901 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %902 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %902, i32 0, i32 2
  %904 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 4
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %911

907:                                              ; preds = %878
  %908 = load i32, i32* @pt_pl_pwre_hw_mask, align 4
  %909 = load i32, i32* %25, align 4
  %910 = or i32 %909, %908
  store i32 %910, i32* %25, align 4
  br label %911

911:                                              ; preds = %907, %878
  %912 = load i8*, i8** @pt_opc_ext, align 8
  %913 = ptrtoint i8* %912 to i32
  %914 = load i32*, i32** %6, align 8
  %915 = getelementptr inbounds i32, i32* %914, i32 1
  store i32* %915, i32** %6, align 8
  store i32 %913, i32* %914, align 4
  %916 = load i32, i32* @pt_ext_pwre, align 4
  %917 = load i32*, i32** %6, align 8
  %918 = getelementptr inbounds i32, i32* %917, i32 1
  store i32* %918, i32** %6, align 8
  store i32 %916, i32* %917, align 4
  %919 = load i32*, i32** %6, align 8
  %920 = load i32, i32* %25, align 4
  %921 = load i32, i32* @pt_pl_pwre_size, align 4
  %922 = call i32* @pt_encode_int(i32* %919, i32 %920, i32 %921)
  store i32* %922, i32** %6, align 8
  %923 = load i32*, i32** %6, align 8
  %924 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %925 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %924, i32 0, i32 0
  store i32* %923, i32** %925, align 8
  %926 = load i32*, i32** %6, align 8
  %927 = load i32*, i32** %7, align 8
  %928 = ptrtoint i32* %926 to i64
  %929 = ptrtoint i32* %927 to i64
  %930 = sub i64 %928, %929
  %931 = sdiv exact i64 %930, 4
  %932 = trunc i64 %931 to i32
  store i32 %932, i32* %3, align 4
  br label %1089

933:                                              ; preds = %38
  %934 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %935 = load i32, i32* @ptps_pwrx, align 4
  %936 = call i32 @pt_reserve(%struct.pt_encoder* %934, i32 %935)
  store i32 %936, i32* %8, align 4
  %937 = load i32, i32* %8, align 4
  %938 = icmp slt i32 %937, 0
  br i1 %938, label %939, label %941

939:                                              ; preds = %933
  %940 = load i32, i32* %8, align 4
  store i32 %940, i32* %3, align 4
  br label %1089

941:                                              ; preds = %933
  store i32 0, i32* %26, align 4
  %942 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %943 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %944, i32 0, i32 4
  %946 = load i32, i32* %945, align 4
  %947 = load i32, i32* @pt_pl_pwrx_last_shr, align 4
  %948 = shl i32 %946, %947
  %949 = load i32, i32* @pt_pl_pwrx_last_mask, align 4
  %950 = and i32 %948, %949
  %951 = load i32, i32* %26, align 4
  %952 = or i32 %951, %950
  store i32 %952, i32* %26, align 4
  %953 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %954 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %955, i32 0, i32 3
  %957 = load i32, i32* %956, align 4
  %958 = load i32, i32* @pt_pl_pwrx_deepest_shr, align 4
  %959 = shl i32 %957, %958
  %960 = load i32, i32* @pt_pl_pwrx_deepest_mask, align 4
  %961 = and i32 %959, %960
  %962 = load i32, i32* %26, align 4
  %963 = or i32 %962, %961
  store i32 %963, i32* %26, align 4
  %964 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %965 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %964, i32 0, i32 1
  %966 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %966, i32 0, i32 2
  %968 = load i32, i32* %967, align 4
  %969 = icmp ne i32 %968, 0
  br i1 %969, label %970, label %974

970:                                              ; preds = %941
  %971 = load i32, i32* @pt_pl_pwrx_wr_int, align 4
  %972 = load i32, i32* %26, align 4
  %973 = or i32 %972, %971
  store i32 %973, i32* %26, align 4
  br label %974

974:                                              ; preds = %970, %941
  %975 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %976 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %975, i32 0, i32 1
  %977 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %976, i32 0, i32 1
  %978 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %977, i32 0, i32 1
  %979 = load i32, i32* %978, align 4
  %980 = icmp ne i32 %979, 0
  br i1 %980, label %981, label %985

981:                                              ; preds = %974
  %982 = load i32, i32* @pt_pl_pwrx_wr_store, align 4
  %983 = load i32, i32* %26, align 4
  %984 = or i32 %983, %982
  store i32 %984, i32* %26, align 4
  br label %985

985:                                              ; preds = %981, %974
  %986 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %987 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %988, i32 0, i32 0
  %990 = load i32, i32* %989, align 4
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %992, label %996

992:                                              ; preds = %985
  %993 = load i32, i32* @pt_pl_pwrx_wr_hw, align 4
  %994 = load i32, i32* %26, align 4
  %995 = or i32 %994, %993
  store i32 %995, i32* %26, align 4
  br label %996

996:                                              ; preds = %992, %985
  %997 = load i8*, i8** @pt_opc_ext, align 8
  %998 = ptrtoint i8* %997 to i32
  %999 = load i32*, i32** %6, align 8
  %1000 = getelementptr inbounds i32, i32* %999, i32 1
  store i32* %1000, i32** %6, align 8
  store i32 %998, i32* %999, align 4
  %1001 = load i32, i32* @pt_ext_pwrx, align 4
  %1002 = load i32*, i32** %6, align 8
  %1003 = getelementptr inbounds i32, i32* %1002, i32 1
  store i32* %1003, i32** %6, align 8
  store i32 %1001, i32* %1002, align 4
  %1004 = load i32*, i32** %6, align 8
  %1005 = load i32, i32* %26, align 4
  %1006 = load i32, i32* @pt_pl_pwrx_size, align 4
  %1007 = call i32* @pt_encode_int(i32* %1004, i32 %1005, i32 %1006)
  store i32* %1007, i32** %6, align 8
  %1008 = load i32*, i32** %6, align 8
  %1009 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %1010 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %1009, i32 0, i32 0
  store i32* %1008, i32** %1010, align 8
  %1011 = load i32*, i32** %6, align 8
  %1012 = load i32*, i32** %7, align 8
  %1013 = ptrtoint i32* %1011 to i64
  %1014 = ptrtoint i32* %1012 to i64
  %1015 = sub i64 %1013, %1014
  %1016 = sdiv exact i64 %1015, 4
  %1017 = trunc i64 %1016 to i32
  store i32 %1017, i32* %3, align 4
  br label %1089

1018:                                             ; preds = %38
  %1019 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %1020 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1020, i32 0, i32 0
  %1022 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1021, i32 0, i32 0
  %1023 = load i32, i32* %1022, align 4
  store i32 %1023, i32* %27, align 4
  %1024 = load i32, i32* %27, align 4
  %1025 = call i32 @pt_ptw_size(i32 %1024)
  store i32 %1025, i32* %29, align 4
  %1026 = load i32, i32* %29, align 4
  %1027 = icmp slt i32 %1026, 0
  br i1 %1027, label %1028, label %1030

1028:                                             ; preds = %1018
  %1029 = load i32, i32* %29, align 4
  store i32 %1029, i32* %3, align 4
  br label %1089

1030:                                             ; preds = %1018
  %1031 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %1032 = load i32, i32* @pt_opcs_ptw, align 4
  %1033 = load i32, i32* %29, align 4
  %1034 = add nsw i32 %1032, %1033
  %1035 = call i32 @pt_reserve(%struct.pt_encoder* %1031, i32 %1034)
  store i32 %1035, i32* %8, align 4
  %1036 = load i32, i32* %8, align 4
  %1037 = icmp slt i32 %1036, 0
  br i1 %1037, label %1038, label %1040

1038:                                             ; preds = %1030
  %1039 = load i32, i32* %8, align 4
  store i32 %1039, i32* %3, align 4
  br label %1089

1040:                                             ; preds = %1030
  %1041 = load i32, i32* @pt_ext_ptw, align 4
  store i32 %1041, i32* %28, align 4
  %1042 = load i32, i32* %27, align 4
  %1043 = load i32, i32* @pt_opm_ptw_pb_shr, align 4
  %1044 = shl i32 %1042, %1043
  %1045 = load i32, i32* %28, align 4
  %1046 = or i32 %1045, %1044
  store i32 %1046, i32* %28, align 4
  %1047 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %1048 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1049, i32 0, i32 2
  %1051 = load i32, i32* %1050, align 4
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1040
  %1054 = load i32, i32* @pt_opm_ptw_ip, align 4
  %1055 = load i32, i32* %28, align 4
  %1056 = or i32 %1055, %1054
  store i32 %1056, i32* %28, align 4
  br label %1057

1057:                                             ; preds = %1053, %1040
  %1058 = load i8*, i8** @pt_opc_ext, align 8
  %1059 = ptrtoint i8* %1058 to i32
  %1060 = load i32*, i32** %6, align 8
  %1061 = getelementptr inbounds i32, i32* %1060, i32 1
  store i32* %1061, i32** %6, align 8
  store i32 %1059, i32* %1060, align 4
  %1062 = load i32, i32* %28, align 4
  %1063 = load i32*, i32** %6, align 8
  %1064 = getelementptr inbounds i32, i32* %1063, i32 1
  store i32* %1064, i32** %6, align 8
  store i32 %1062, i32* %1063, align 4
  %1065 = load i32*, i32** %6, align 8
  %1066 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %1067 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1067, i32 0, i32 0
  %1069 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1068, i32 0, i32 1
  %1070 = load i32, i32* %1069, align 4
  %1071 = load i32, i32* %29, align 4
  %1072 = call i32* @pt_encode_int(i32* %1065, i32 %1070, i32 %1071)
  store i32* %1072, i32** %6, align 8
  %1073 = load i32*, i32** %6, align 8
  %1074 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %1075 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %1074, i32 0, i32 0
  store i32* %1073, i32** %1075, align 8
  %1076 = load i32*, i32** %6, align 8
  %1077 = load i32*, i32** %7, align 8
  %1078 = ptrtoint i32* %1076 to i64
  %1079 = ptrtoint i32* %1077 to i64
  %1080 = sub i64 %1078, %1079
  %1081 = sdiv exact i64 %1080, 4
  %1082 = trunc i64 %1081 to i32
  store i32 %1082, i32* %3, align 4
  br label %1089

1083:                                             ; preds = %38, %38
  %1084 = load i32, i32* @pte_bad_opc, align 4
  %1085 = sub nsw i32 0, %1084
  store i32 %1085, i32* %3, align 4
  br label %1089

1086:                                             ; preds = %38
  %1087 = load i32, i32* @pte_bad_opc, align 4
  %1088 = sub nsw i32 0, %1087
  store i32 %1088, i32* %3, align 4
  br label %1089

1089:                                             ; preds = %1086, %1083, %1057, %1038, %1028, %996, %939, %911, %876, %836, %834, %809, %796, %761, %759, %725, %723, %699, %697, %689, %565, %563, %529, %526, %508, %475, %473, %445, %443, %415, %391, %368, %311, %303, %273, %270, %247, %237, %200, %198, %189, %175, %168, %161, %154, %136, %134, %110, %108, %75, %73, %53, %51, %35
  %1090 = load i32, i32* %3, align 4
  ret i32 %1090
}

declare dso_local i32 @pt_reserve(%struct.pt_encoder*, i32) #1

declare dso_local i32* @pt_encode_int(i32*, i32, i32) #1

declare dso_local i32 @pt_encode_ip(%struct.pt_encoder*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pt_ptw_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
