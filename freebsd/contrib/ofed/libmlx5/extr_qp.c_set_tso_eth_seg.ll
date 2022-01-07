; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_tso_eth_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_tso_eth_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_send_wr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.mlx5_qp = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_eth_seg = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32* }

@MLX5_ETH_L2_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@MLX5_DBG_QP_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TSO header size should be at least %d and at most %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.ibv_send_wr*, i8*, %struct.mlx5_qp*, i32*)* @set_tso_eth_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tso_eth_seg(i8** %0, %struct.ibv_send_wr* %1, i8* %2, %struct.mlx5_qp* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ibv_send_wr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_qp* %3, %struct.mlx5_qp** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.mlx5_wqe_eth_seg*
  store %struct.mlx5_wqe_eth_seg* %21, %struct.mlx5_wqe_eth_seg** %12, align 8
  store i32 8, i32* %13, align 4
  %22 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %17, align 8
  %26 = load %struct.mlx5_qp*, %struct.mlx5_qp** %10, align 8
  %27 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_6__* @to_mctx(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %18, align 8
  %34 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %35 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MLX5_ETH_L2_MIN_HEADER_SIZE, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %5
  %41 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %42 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mlx5_qp*, %struct.mlx5_qp** %10, align 8
  %46 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br label %49

49:                                               ; preds = %40, %5
  %50 = phi i1 [ true, %5 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32*, i32** %18, align 8
  %56 = load i32, i32* @MLX5_DBG_QP_SEND, align 4
  %57 = load i64, i64* @MLX5_ETH_L2_MIN_HEADER_SIZE, align 8
  %58 = load %struct.mlx5_qp*, %struct.mlx5_qp** %10, align 8
  %59 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mlx5_dbg(i32* %55, i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %6, align 4
  br label %152

63:                                               ; preds = %49
  %64 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %65 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %14, align 8
  %68 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %69 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @htobe16(i64 %71)
  %73 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %12, align 8
  %74 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %76 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @htobe16(i64 %78)
  %80 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %12, align 8
  %81 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %12, align 8
  %84 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %82 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @min(i64 %89, i64 %90)
  store i64 %91, i64* %16, align 8
  %92 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %12, align 8
  %93 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i64, i64* %16, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %98, %100
  %102 = call i32 @align(i64 %101, i32 16)
  %103 = sub nsw i32 %102, 16
  %104 = load i8**, i8*** %7, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = sext i32 %103 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  store i8* %107, i8** %104, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = call i32 @align(i64 %111, i32 16)
  %113 = sdiv i32 %112, 16
  %114 = sub nsw i32 %113, 1
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %14, align 8
  %120 = icmp slt i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %63
  %125 = load %struct.mlx5_qp*, %struct.mlx5_qp** %10, align 8
  %126 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %125, i32 0)
  %127 = load i8**, i8*** %7, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %14, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = getelementptr i8, i8* %132, i64 %131
  store i8* %133, i8** %17, align 8
  %134 = load i8**, i8*** %7, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @memcpy(i8* %135, i8* %136, i64 %137)
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @align(i64 %139, i32 16)
  %141 = load i8**, i8*** %7, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = sext i32 %140 to i64
  %144 = getelementptr i8, i8* %142, i64 %143
  store i8* %144, i8** %141, align 8
  %145 = load i64, i64* %14, align 8
  %146 = call i32 @align(i64 %145, i32 16)
  %147 = sdiv i32 %146, 16
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %124, %63
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %54
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_6__* @to_mctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*, i64, i64) #1

declare dso_local i8* @htobe16(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @align(i64, i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
