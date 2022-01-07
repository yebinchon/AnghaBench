; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_copy_eth_inline_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_copy_eth_inline_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_send_wr = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mlx5_wqe_eth_seg = type { i32, i32 }
%struct.mlx5_sg_copy_ptr = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@MLX5_ETH_L2_INLINE_HEADER_SIZE = common dso_local global i32 0, align 4
@MLX5_DBG_QP_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"illegal num_sge: %d, minimum is 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Ethernet headers < 16 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_qp*, %struct.ibv_send_wr*, %struct.mlx5_wqe_eth_seg*, %struct.mlx5_sg_copy_ptr*)* @copy_eth_inline_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_eth_inline_headers(%struct.ibv_qp* %0, %struct.ibv_send_wr* %1, %struct.mlx5_wqe_eth_seg* %2, %struct.mlx5_sg_copy_ptr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_qp*, align 8
  %7 = alloca %struct.ibv_send_wr*, align 8
  %8 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %9 = alloca %struct.mlx5_sg_copy_ptr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %6, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %7, align 8
  store %struct.mlx5_wqe_eth_seg* %2, %struct.mlx5_wqe_eth_seg** %8, align 8
  store %struct.mlx5_sg_copy_ptr* %3, %struct.mlx5_sg_copy_ptr** %9, align 8
  %14 = load i32, i32* @MLX5_ETH_L2_INLINE_HEADER_SIZE, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @to_mctx(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* @MLX5_DBG_QP_SEND, align 4
  %31 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %32 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %29, i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %149

36:                                               ; preds = %4
  %37 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %38 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MLX5_ETH_L2_INLINE_HEADER_SIZE, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load i32, i32* @MLX5_ETH_L2_INLINE_HEADER_SIZE, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %54 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @memcpy(i32 %52, i8* %59, i32 %60)
  br label %121

62:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %106, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %66 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i1 [ false, %63 ], [ %71, %69 ]
  br i1 %73, label %74, label %109

74:                                               ; preds = %72
  %75 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %76 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @min(i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %8, align 8
  %86 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MLX5_ETH_L2_INLINE_HEADER_SIZE, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %93 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @memcpy(i32 %91, i8* %100, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %74
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %63

109:                                              ; preds = %72
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* @MLX5_DBG_QP_SEND, align 4
  %116 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %114, i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %5, align 4
  br label %149

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %118, %48
  %122 = load i32, i32* @MLX5_ETH_L2_INLINE_HEADER_SIZE, align 4
  %123 = call i32 @htobe16(i32 %122)
  %124 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %8, align 8
  %125 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %7, align 8
  %127 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %121
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %139, %121
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.mlx5_sg_copy_ptr*, %struct.mlx5_sg_copy_ptr** %9, align 8
  %145 = getelementptr inbounds %struct.mlx5_sg_copy_ptr, %struct.mlx5_sg_copy_ptr* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.mlx5_sg_copy_ptr*, %struct.mlx5_sg_copy_ptr** %9, align 8
  %148 = getelementptr inbounds %struct.mlx5_sg_copy_ptr, %struct.mlx5_sg_copy_ptr* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %142, %113, %28
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_4__* @to_mctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
