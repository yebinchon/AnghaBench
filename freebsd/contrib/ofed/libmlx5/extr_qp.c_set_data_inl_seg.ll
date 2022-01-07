; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_data_inl_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_data_inl_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.ibv_send_wr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.mlx5_sg_copy_ptr = type { i32, i32 }
%struct.mlx5_wqe_inline_seg = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_INLINE_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_qp*, %struct.ibv_send_wr*, i8*, i32*, %struct.mlx5_sg_copy_ptr*)* @set_data_inl_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_data_inl_seg(%struct.mlx5_qp* %0, %struct.ibv_send_wr* %1, i8* %2, i32* %3, %struct.mlx5_sg_copy_ptr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca %struct.ibv_send_wr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx5_sg_copy_ptr*, align 8
  %12 = alloca %struct.mlx5_wqe_inline_seg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %7, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.mlx5_sg_copy_ptr* %4, %struct.mlx5_sg_copy_ptr** %11, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %17, align 8
  %24 = load %struct.mlx5_sg_copy_ptr*, %struct.mlx5_sg_copy_ptr** %11, align 8
  %25 = getelementptr inbounds %struct.mlx5_sg_copy_ptr, %struct.mlx5_sg_copy_ptr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %19, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.mlx5_wqe_inline_seg*
  store %struct.mlx5_wqe_inline_seg* %28, %struct.mlx5_wqe_inline_seg** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr i8, i8* %29, i64 4
  store i8* %30, i8** %9, align 8
  %31 = load %struct.mlx5_sg_copy_ptr*, %struct.mlx5_sg_copy_ptr** %11, align 8
  %32 = getelementptr inbounds %struct.mlx5_sg_copy_ptr, %struct.mlx5_sg_copy_ptr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %115, %5
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %37 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %118

40:                                               ; preds = %34
  %41 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %42 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %19, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %13, align 8
  %53 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %54 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %68 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %40
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %6, align 4
  br label %139

76:                                               ; preds = %40
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %77, i64 %79
  %81 = load i8*, i8** %17, align 8
  %82 = icmp ugt i8* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %76
  %87 = load i8*, i8** %17, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @memcpy(i8* %93, i8* %94, i32 %95)
  %97 = load i32, i32* %18, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr i8, i8* %98, i64 %99
  store i8* %100, i8** %13, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %105 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %104, i32 0)
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %86, %76
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @memcpy(i8* %107, i8* %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  store i8* %114, i8** %9, align 8
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %34

118:                                              ; preds = %34
  %119 = load i32, i32* %16, align 4
  %120 = call i64 @likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @MLX5_INLINE_SEG, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @htobe32(i32 %125)
  %127 = load %struct.mlx5_wqe_inline_seg*, %struct.mlx5_wqe_inline_seg** %12, align 8
  %128 = getelementptr inbounds %struct.mlx5_wqe_inline_seg, %struct.mlx5_wqe_inline_seg* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @align(i32 %132, i32 16)
  %134 = sdiv i32 %133, 16
  %135 = load i32*, i32** %10, align 8
  store i32 %134, i32* %135, align 4
  br label %138

136:                                              ; preds = %118
  %137 = load i32*, i32** %10, align 8
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %136, %122
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %74
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_qp*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @align(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
