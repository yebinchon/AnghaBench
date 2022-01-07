; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_copy_to_send_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_copy_to_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32 }
%struct.mlx5_wqe_data_seg = type { i32 }

@IBV_QPT_RC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"scatter to CQE is supported only for RC QPs\0A\00", align 1
@IBV_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"scatter to CQE for opcode %d\0A\00", align 1
@IBV_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IBV_WC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_copy_to_send_wqe(%struct.mlx5_qp* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %11 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.mlx5_wqe_ctrl_seg*
  store %struct.mlx5_wqe_ctrl_seg* %26, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %27 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IBV_QPT_RC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @IBV_WC_GENERAL_ERR, align 4
  store i32 %37, i32* %5, align 4
  br label %136

38:                                               ; preds = %4
  %39 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %40 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %39, i64 1
  %41 = bitcast %struct.mlx5_wqe_ctrl_seg* %40 to i8*
  store i8* %41, i8** %12, align 8
  %42 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32toh(i32 %44)
  %46 = and i32 %45, 255
  switch i32 %46, label %54 [
    i32 128, label %47
    i32 130, label %50
    i32 129, label %50
  ]

47:                                               ; preds = %38
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr i8, i8* %48, i64 4
  store i8* %49, i8** %12, align 8
  br label %63

50:                                               ; preds = %38, %38
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr i8, i8* %51, i64 4
  %53 = getelementptr i8, i8* %52, i64 4
  store i8* %53, i8** %12, align 8
  br label %63

54:                                               ; preds = %38
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %57 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32toh(i32 %58)
  %60 = and i32 %59, 255
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @IBV_WC_REM_INV_REQ_ERR, align 4
  store i32 %62, i32* %5, align 4
  br label %136

63:                                               ; preds = %50, %47
  %64 = load i8*, i8** %12, align 8
  %65 = bitcast i8* %64 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %65, %struct.mlx5_wqe_data_seg** %11, align 8
  %66 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %67 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32toh(i32 %68)
  %70 = and i32 %69, 63
  %71 = sext i32 %70 to i64
  %72 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %73 = bitcast %struct.mlx5_wqe_data_seg* %72 to i8*
  %74 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %10, align 8
  %75 = bitcast %struct.mlx5_wqe_ctrl_seg* %74 to i8*
  %76 = ptrtoint i8* %73 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = ashr i64 %78, 4
  %80 = sub nsw i64 %71, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %82, i64 %84
  %86 = bitcast %struct.mlx5_wqe_data_seg* %85 to i8*
  %87 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ugt i8* %86, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %63
  %96 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %101 = bitcast %struct.mlx5_wqe_data_seg* %100 to i8*
  %102 = ptrtoint i8* %99 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = ashr i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %15, align 4
  %108 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @copy_to_scat(%struct.mlx5_wqe_data_seg* %108, i8* %109, i32* %9, i32 %110)
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %95
  %116 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %136

118:                                              ; preds = %95
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i8*, i8** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr i8, i8* %125, i64 %126
  store i8* %127, i8** %8, align 8
  %128 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %129 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %128, i32 0)
  %130 = bitcast i8* %129 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %130, %struct.mlx5_wqe_data_seg** %11, align 8
  br label %131

131:                                              ; preds = %118, %63
  %132 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @copy_to_scat(%struct.mlx5_wqe_data_seg* %132, i8* %133, i32* %9, i32 %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %115, %54, %34
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_qp*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @copy_to_scat(%struct.mlx5_wqe_data_seg*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
