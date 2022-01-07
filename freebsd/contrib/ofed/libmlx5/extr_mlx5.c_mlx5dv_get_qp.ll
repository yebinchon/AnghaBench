; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.mlx5dv_qp = type { %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.mlx5_qp = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_qp*, %struct.mlx5dv_qp*)* @mlx5dv_get_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5dv_get_qp(%struct.ibv_qp* %0, %struct.mlx5dv_qp* %1) #0 {
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.mlx5dv_qp*, align 8
  %5 = alloca %struct.mlx5_qp*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %3, align 8
  store %struct.mlx5dv_qp* %1, %struct.mlx5dv_qp** %4, align 8
  %6 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %7 = call %struct.mlx5_qp* @to_mqp(%struct.ibv_qp* %6)
  store %struct.mlx5_qp* %7, %struct.mlx5_qp** %5, align 8
  %8 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %32, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %28, %19
  %43 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %61, %65
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  store i8* %67, i8** %70, align 8
  %71 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %79 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %42
  %101 = load %struct.mlx5_qp*, %struct.mlx5_qp** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %113

109:                                              ; preds = %42
  %110 = load %struct.mlx5dv_qp*, %struct.mlx5dv_qp** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5dv_qp, %struct.mlx5dv_qp* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %100
  ret i32 0
}

declare dso_local %struct.mlx5_qp* @to_mqp(%struct.ibv_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
