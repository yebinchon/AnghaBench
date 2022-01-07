; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_post_wq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_post_wq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i32 }
%struct.ibv_recv_wr = type { i32, i32, %struct.TYPE_5__*, %struct.ibv_recv_wr* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_rwq = type { i32, %struct.TYPE_6__, i8**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_data_seg = type { i64, i8*, i64 }
%struct.mlx5_rwqe_sig = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_post_wq_recv(%struct.ibv_wq* %0, %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %2) #0 {
  %4 = alloca %struct.ibv_wq*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_recv_wr**, align 8
  %7 = alloca %struct.mlx5_rwq*, align 8
  %8 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_rwqe_sig*, align 8
  store %struct.ibv_wq* %0, %struct.ibv_wq** %4, align 8
  store %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr** %2, %struct.ibv_recv_wr*** %6, align 8
  %15 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %16 = call %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq* %15)
  store %struct.mlx5_rwq* %16, %struct.mlx5_rwq** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = call i32 @mlx5_spin_lock(i32* %19)
  %21 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %24, %29
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %189, %3
  %32 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %33 = icmp ne %struct.ibv_recv_wr* %32, null
  br i1 %33, label %34, label %195

34:                                               ; preds = %31
  %35 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %35, i32 0, i32 1
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @to_mcq(i32 %41)
  %43 = call i32 @mlx5_wq_overflow(%struct.TYPE_6__* %36, i32 %37, i32 %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %49 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %48, %struct.ibv_recv_wr** %49, align 8
  br label %196

50:                                               ; preds = %34
  %51 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %52 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %53, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %65 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %64, %struct.ibv_recv_wr** %65, align 8
  br label %196

66:                                               ; preds = %50
  %67 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.mlx5_wqe_data_seg* @get_wq_recv_wqe(%struct.mlx5_rwq* %67, i32 %68)
  store %struct.mlx5_wqe_data_seg* %69, %struct.mlx5_wqe_data_seg** %8, align 8
  %70 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %71 = bitcast %struct.mlx5_wqe_data_seg* %70 to %struct.mlx5_rwqe_sig*
  store %struct.mlx5_rwqe_sig* %71, %struct.mlx5_rwqe_sig** %14, align 8
  %72 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %14, align 8
  %79 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = call i32 @memset(%struct.mlx5_rwqe_sig* %78, i32 0, i32 %83)
  %85 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %86 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %85, i32 1
  store %struct.mlx5_wqe_data_seg* %86, %struct.mlx5_wqe_data_seg** %8, align 8
  br label %87

87:                                               ; preds = %77, %66
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %122, %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %91 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %96 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %122

109:                                              ; preds = %94
  %110 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %110, i64 %113
  %115 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %116 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = call i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg* %114, %struct.TYPE_5__* %120, i32 0)
  br label %122

122:                                              ; preds = %109, %108
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %88

125:                                              ; preds = %88
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %128 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %125
  %133 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %133, i64 %135
  %137 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @MLX5_INVALID_LKEY, align 4
  %139 = call i8* @htobe32(i32 %138)
  %140 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %140, i64 %142
  %144 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %143, i32 0, i32 1
  store i8* %139, i8** %144, align 8
  %145 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %145, i64 %147
  %149 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %132, %125
  %151 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %152 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  %157 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %158 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %14, align 8
  %159 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %160 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  %163 = shl i32 %162, 4
  %164 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %165 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 65535
  %169 = call i32 @set_wq_sig_seg(%struct.mlx5_rwq* %157, %struct.mlx5_rwqe_sig* %158, i32 %163, i32 %168)
  br label %170

170:                                              ; preds = %156, %150
  %171 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %172 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %175 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %173, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  %183 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %184 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 1
  %188 = and i32 %182, %187
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %170
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %193 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %192, i32 0, i32 3
  %194 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %193, align 8
  store %struct.ibv_recv_wr* %194, %struct.ibv_recv_wr** %5, align 8
  br label %31

195:                                              ; preds = %31
  br label %196

196:                                              ; preds = %195, %62, %46
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @likely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %203 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, %201
  store i32 %206, i32* %204, align 8
  %207 = call i32 (...) @udma_to_device_barrier()
  %208 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %209 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 65535
  %213 = call i8* @htobe32(i32 %212)
  %214 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %215 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %214, i32 0, i32 2
  %216 = load i8**, i8*** %215, align 8
  store i8* %213, i8** %216, align 8
  br label %217

217:                                              ; preds = %200, %196
  %218 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %219 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = call i32 @mlx5_spin_unlock(i32* %220)
  %222 = load i32, i32* %9, align 4
  ret i32 %222
}

declare dso_local %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq*) #1

declare dso_local i32 @mlx5_spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_wq_overflow(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @to_mcq(i32) #1

declare dso_local %struct.mlx5_wqe_data_seg* @get_wq_recv_wqe(%struct.mlx5_rwq*, i32) #1

declare dso_local i32 @memset(%struct.mlx5_rwqe_sig*, i32, i32) #1

declare dso_local i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg*, %struct.TYPE_5__*, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @set_wq_sig_seg(%struct.mlx5_rwq*, %struct.mlx5_rwqe_sig*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
