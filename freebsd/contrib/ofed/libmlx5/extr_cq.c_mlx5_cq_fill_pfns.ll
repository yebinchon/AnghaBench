; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_fill_pfns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_fill_pfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { i32, i32, i32 }
%struct.mlx5_cq = type { i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_cq_init_attr_ex = type { i32 }
%struct.mlx5_context = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ops = common dso_local global %struct.op* null, align 8
@ADAPTIVE = common dso_local global i64 0, align 8
@V1 = common dso_local global i64 0, align 8
@MLX5_CQ_FLAGS_SINGLE_THREADED = common dso_local global i32 0, align 4
@SINGLE_THREADED = common dso_local global i64 0, align 8
@STALL = common dso_local global i64 0, align 8
@mlx5_cq_read_wc_opcode = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_vendor_err = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_flags = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_BYTE_LEN = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_byte_len = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_IMM = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_imm_data = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_QP_NUM = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_qp_num = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SRC_QP = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_src_qp = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SLID = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_slid = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SL = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_sl = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_DLID_PATH_BITS = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_dlid_path_bits = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_completion_ts = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_CVLAN = common dso_local global i32 0, align 4
@mlx5_cq_read_wc_cvlan = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_FLOW_TAG = common dso_local global i32 0, align 4
@mlx5_cq_read_flow_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cq_fill_pfns(%struct.mlx5_cq* %0, %struct.ibv_cq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.mlx5_cq*, align 8
  %4 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.op*, align 8
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %3, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %4, align 8
  %7 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %7, i32 0, i32 1
  %9 = call %struct.TYPE_3__* @ibv_cq_ex_to_cq(%struct.TYPE_4__* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_context* @to_mctx(i32 %11)
  store %struct.mlx5_context* %12, %struct.mlx5_context** %5, align 8
  %13 = load %struct.op*, %struct.op** @ops, align 8
  %14 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @ADAPTIVE, align 8
  br label %26

25:                                               ; preds = %18, %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  %28 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @V1, align 8
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i64 [ %33, %32 ], [ 0, %34 ]
  %37 = or i64 %27, %36
  %38 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLX5_CQ_FLAGS_SINGLE_THREADED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @SINGLE_THREADED, align 8
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i64 [ %45, %44 ], [ 0, %46 ]
  %49 = or i64 %37, %48
  %50 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @STALL, align 8
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i64 [ %55, %54 ], [ 0, %56 ]
  %59 = or i64 %49, %58
  %60 = getelementptr inbounds %struct.op, %struct.op* %13, i64 %59
  store %struct.op* %60, %struct.op** %6, align 8
  %61 = load %struct.op*, %struct.op** %6, align 8
  %62 = getelementptr inbounds %struct.op, %struct.op* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 15
  store i32 %63, i32* %66, align 4
  %67 = load %struct.op*, %struct.op** %6, align 8
  %68 = getelementptr inbounds %struct.op, %struct.op* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 14
  store i32 %69, i32* %72, align 4
  %73 = load %struct.op*, %struct.op** %6, align 8
  %74 = getelementptr inbounds %struct.op, %struct.op* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 13
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @mlx5_cq_read_wc_opcode, align 4
  %80 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %81 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 12
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @mlx5_cq_read_wc_vendor_err, align 4
  %84 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %85 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 11
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @mlx5_cq_read_wc_flags, align 4
  %88 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %89 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 10
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %92 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IBV_WC_EX_WITH_BYTE_LEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %57
  %98 = load i32, i32* @mlx5_cq_read_wc_byte_len, align 4
  %99 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %100 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 9
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %57
  %103 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %104 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IBV_WC_EX_WITH_IMM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i32, i32* @mlx5_cq_read_wc_imm_data, align 4
  %111 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %112 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 8
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %116 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IBV_WC_EX_WITH_QP_NUM, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load i32, i32* @mlx5_cq_read_wc_qp_num, align 4
  %123 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %124 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %114
  %127 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %128 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IBV_WC_EX_WITH_SRC_QP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @mlx5_cq_read_wc_src_qp, align 4
  %135 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %136 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 6
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %140 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IBV_WC_EX_WITH_SLID, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i32, i32* @mlx5_cq_read_wc_slid, align 4
  %147 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %148 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %138
  %151 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %152 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IBV_WC_EX_WITH_SL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, i32* @mlx5_cq_read_wc_sl, align 4
  %159 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %160 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %150
  %163 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %164 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IBV_WC_EX_WITH_DLID_PATH_BITS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i32, i32* @mlx5_cq_read_wc_dlid_path_bits, align 4
  %171 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %172 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %176 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IBV_WC_EX_WITH_COMPLETION_TIMESTAMP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load i32, i32* @mlx5_cq_read_wc_completion_ts, align 4
  %183 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %184 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %181, %174
  %187 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %188 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IBV_WC_EX_WITH_CVLAN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load i32, i32* @mlx5_cq_read_wc_cvlan, align 4
  %195 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %196 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %186
  %199 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %200 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IBV_WC_EX_WITH_FLOW_TAG, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i32, i32* @mlx5_cq_read_flow_tag, align 4
  %207 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %208 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %198
  ret void
}

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local %struct.TYPE_3__* @ibv_cq_ex_to_cq(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
