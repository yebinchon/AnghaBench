; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_fill_pfns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_fill_pfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_cq_init_attr_ex = type { i32 }

@MLX4_CQ_FLAGS_SINGLE_THREADED = common dso_local global i32 0, align 4
@mlx4_start_poll = common dso_local global i32 0, align 4
@mlx4_end_poll = common dso_local global i32 0, align 4
@mlx4_start_poll_lock = common dso_local global i32 0, align 4
@mlx4_end_poll_lock = common dso_local global i32 0, align 4
@mlx4_next_poll = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_opcode = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_vendor_err = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_flags = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_BYTE_LEN = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_byte_len = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_IMM = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_imm_data = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_QP_NUM = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_qp_num = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SRC_QP = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_src_qp = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SLID = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_slid = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SL = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_sl = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_DLID_PATH_BITS = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_dlid_path_bits = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = common dso_local global i32 0, align 4
@mlx4_cq_read_wc_completion_ts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_fill_pfns(%struct.mlx4_cq* %0, %struct.ibv_cq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.mlx4_cq*, align 8
  %4 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %3, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %4, align 8
  %5 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MLX4_CQ_FLAGS_SINGLE_THREADED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @mlx4_start_poll, align 4
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 13
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @mlx4_end_poll, align 4
  %17 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 12
  store i32 %16, i32* %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @mlx4_start_poll_lock, align 4
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 13
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @mlx4_end_poll_lock, align 4
  %26 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 12
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, i32* @mlx4_next_poll, align 4
  %31 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 11
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @mlx4_cq_read_wc_opcode, align 4
  %35 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 10
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @mlx4_cq_read_wc_vendor_err, align 4
  %39 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @mlx4_cq_read_wc_flags, align 4
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %47 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IBV_WC_EX_WITH_BYTE_LEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %29
  %53 = load i32, i32* @mlx4_cq_read_wc_byte_len, align 4
  %54 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %29
  %58 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %59 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IBV_WC_EX_WITH_IMM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @mlx4_cq_read_wc_imm_data, align 4
  %66 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %71 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IBV_WC_EX_WITH_QP_NUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @mlx4_cq_read_wc_qp_num, align 4
  %78 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %79 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %83 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IBV_WC_EX_WITH_SRC_QP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @mlx4_cq_read_wc_src_qp, align 4
  %90 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %95 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IBV_WC_EX_WITH_SLID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* @mlx4_cq_read_wc_slid, align 4
  %102 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %103 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %107 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IBV_WC_EX_WITH_SL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* @mlx4_cq_read_wc_sl, align 4
  %114 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %119 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IBV_WC_EX_WITH_DLID_PATH_BITS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i32, i32* @mlx4_cq_read_wc_dlid_path_bits, align 4
  %126 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %127 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %117
  %130 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %131 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IBV_WC_EX_WITH_COMPLETION_TIMESTAMP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* @mlx4_cq_read_wc_completion_ts, align 4
  %138 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %129
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
