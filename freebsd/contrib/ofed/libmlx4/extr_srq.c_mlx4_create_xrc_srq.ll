; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_create_xrc_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_create_xrc_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_srq_init_attr_ex = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mlx4_create_xsrq = type { i64, i64, i32 }
%struct.mlx4_create_srq_resp = type { i32 }
%struct.mlx4_srq = type { i32, i32, %struct.TYPE_8__, %struct.mlx4_srq*, i64*, %struct.TYPE_10__, i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.ibv_srq, i32 }
%struct.TYPE_7__ = type { i32 }

@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_srq* @mlx4_create_xrc_srq(%struct.ibv_context* %0, %struct.ibv_srq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_srq*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_srq_init_attr_ex*, align 8
  %6 = alloca %struct.mlx4_create_xsrq, align 8
  %7 = alloca %struct.mlx4_create_srq_resp, align 4
  %8 = alloca %struct.mlx4_srq*, align 8
  %9 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_srq_init_attr_ex* %1, %struct.ibv_srq_init_attr_ex** %5, align 8
  %10 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %11 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 65536
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %17 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %139

22:                                               ; preds = %15
  %23 = call %struct.mlx4_srq* @calloc(i32 1, i32 56)
  store %struct.mlx4_srq* %23, %struct.mlx4_srq** %8, align 8
  %24 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %25 = icmp ne %struct.mlx4_srq* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %139

27:                                               ; preds = %22
  %28 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %28, i32 0, i32 8
  %30 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %31 = call i64 @pthread_spin_init(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %136

34:                                               ; preds = %27
  %35 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @align_queue_size(i32 %39)
  %41 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %44 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %54 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %57 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %56, i32 0, i32 0
  %58 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %59 = call i64 @mlx4_alloc_srq_buf(i32 %55, %struct.TYPE_9__* %57, %struct.mlx4_srq* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  br label %136

62:                                               ; preds = %34
  %63 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %64 = call %struct.TYPE_7__* @to_mctx(%struct.ibv_context* %63)
  %65 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %66 = call i64* @mlx4_alloc_db(%struct.TYPE_7__* %64, i32 %65)
  %67 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %67, i32 0, i32 4
  store i64* %66, i64** %68, align 8
  %69 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %128

74:                                               ; preds = %62
  %75 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.mlx4_create_xsrq, %struct.mlx4_create_xsrq* %6, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = ptrtoint i64* %85 to i64
  %87 = getelementptr inbounds %struct.mlx4_create_xsrq, %struct.mlx4_create_xsrq* %6, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %89 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %90 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %89, i32 0, i32 5
  %91 = load %struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex** %5, align 8
  %92 = getelementptr inbounds %struct.mlx4_create_xsrq, %struct.mlx4_create_xsrq* %6, i32 0, i32 2
  %93 = getelementptr inbounds %struct.mlx4_create_srq_resp, %struct.mlx4_create_srq_resp* %7, i32 0, i32 0
  %94 = call i32 @ibv_cmd_create_srq_ex(%struct.ibv_context* %88, %struct.TYPE_10__* %90, i32 8, %struct.ibv_srq_init_attr_ex* %91, i32* %92, i32 24, i32* %93, i32 4)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %120

98:                                               ; preds = %74
  %99 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %100 = call %struct.TYPE_7__* @to_mctx(%struct.ibv_context* %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %103 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %107 = call i32 @mlx4_store_xsrq(i32* %101, i32 %105, %struct.mlx4_srq* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %115

111:                                              ; preds = %98
  %112 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %113 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store %struct.ibv_srq* %114, %struct.ibv_srq** %3, align 8
  br label %139

115:                                              ; preds = %110
  %116 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %117 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = call i32 @ibv_cmd_destroy_srq(%struct.ibv_srq* %118)
  br label %120

120:                                              ; preds = %115, %97
  %121 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %122 = call %struct.TYPE_7__* @to_mctx(%struct.ibv_context* %121)
  %123 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %124 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %125 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = call i32 @mlx4_free_db(%struct.TYPE_7__* %122, i32 %123, i64* %126)
  br label %128

128:                                              ; preds = %120, %73
  %129 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %130 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %129, i32 0, i32 3
  %131 = load %struct.mlx4_srq*, %struct.mlx4_srq** %130, align 8
  %132 = call i32 @free(%struct.mlx4_srq* %131)
  %133 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %134 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %133, i32 0, i32 2
  %135 = call i32 @mlx4_free_buf(%struct.TYPE_8__* %134)
  br label %136

136:                                              ; preds = %128, %61, %33
  %137 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %138 = call i32 @free(%struct.mlx4_srq* %137)
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %139

139:                                              ; preds = %136, %111, %26, %21
  %140 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  ret %struct.ibv_srq* %140
}

declare dso_local %struct.mlx4_srq* @calloc(i32, i32) #1

declare dso_local i64 @pthread_spin_init(i32*, i32) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i64 @mlx4_alloc_srq_buf(i32, %struct.TYPE_9__*, %struct.mlx4_srq*) #1

declare dso_local i64* @mlx4_alloc_db(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @ibv_cmd_create_srq_ex(%struct.ibv_context*, %struct.TYPE_10__*, i32, %struct.ibv_srq_init_attr_ex*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mlx4_store_xsrq(i32*, i32, %struct.mlx4_srq*) #1

declare dso_local i32 @ibv_cmd_destroy_srq(%struct.ibv_srq*) #1

declare dso_local i32 @mlx4_free_db(%struct.TYPE_7__*, i32, i64*) #1

declare dso_local i32 @free(%struct.mlx4_srq*) #1

declare dso_local i32 @mlx4_free_buf(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
