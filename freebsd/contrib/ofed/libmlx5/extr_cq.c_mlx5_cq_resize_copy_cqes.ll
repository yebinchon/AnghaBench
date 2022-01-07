; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_resize_copy_cqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_resize_copy_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_cqe64 = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"expected cqe in sw ownership\0A\00", align 1
@MLX5_CQE_RESIZE_CQ = common dso_local global i32 0, align 4
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"resize CQ failed to get resize CQE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cq_resize_copy_cqes(%struct.mlx5_cq* %0) #0 {
  %2 = alloca %struct.mlx5_cq*, align 8
  %3 = alloca %struct.mlx5_cqe64*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %2, align 8
  %12 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @get_buf_cqe(i32 %23, i32 %28, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i8*, i8** %6, align 8
  br label %38

35:                                               ; preds = %1
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr i8, i8* %36, i64 64
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i8* [ %34, %33 ], [ %37, %35 ]
  %40 = bitcast i8* %39 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %40, %struct.mlx5_cqe64** %3, align 8
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %5, align 8
  %42 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @is_hw(i32 %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %152

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %146, %54
  %56 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* @MLX5_CQE_RESIZE_CQ, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %147

62:                                               ; preds = %55
  %63 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %69 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %67, %71
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @get_buf_cqe(i32 %65, i32 %72, i32 %73)
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 64
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i8*, i8** %7, align 8
  br label %82

79:                                               ; preds = %62
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr i8, i8* %80, i64 64
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i8* [ %78, %77 ], [ %81, %79 ]
  %84 = bitcast i8* %83 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %84, %struct.mlx5_cqe64** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sw_ownership_bit(i32 %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %104 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  %107 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %108 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %112 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %110, %113
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @get_buf_cqe(i32 %109, i32 %114, i32 %115)
  store i8* %116, i8** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 64
  br i1 %118, label %119, label %121

119:                                              ; preds = %82
  %120 = load i8*, i8** %6, align 8
  br label %124

121:                                              ; preds = %82
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr i8, i8* %122, i64 64
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i8* [ %120, %119 ], [ %123, %121 ]
  %126 = bitcast i8* %125 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %126, %struct.mlx5_cqe64** %3, align 8
  %127 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %128 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %132 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @is_hw(i32 %129, i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %152

139:                                              ; preds = %124
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %152

146:                                              ; preds = %139
  br label %55

147:                                              ; preds = %55
  %148 = load %struct.mlx5_cq*, %struct.mlx5_cq** %2, align 8
  %149 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %143, %136, %51
  ret void
}

declare dso_local i8* @get_buf_cqe(i32, i32, i32) #1

declare dso_local i64 @is_hw(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sw_ownership_bit(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
