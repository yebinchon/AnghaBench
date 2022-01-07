; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_free_qp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_free_qp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_qp*)* @mlx5_free_qp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_free_qp_buf(%struct.mlx5_qp* %0) #0 {
  %2 = alloca %struct.mlx5_qp*, align 8
  %3 = alloca %struct.mlx5_context*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %2, align 8
  %4 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %4, i32 0, i32 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mlx5_context* @to_mctx(i32 %8)
  store %struct.mlx5_context* %9, %struct.mlx5_context** %3, align 8
  %10 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %11 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %11, i32 0, i32 3
  %13 = call i32 @mlx5_free_actual_buf(%struct.mlx5_context* %10, %struct.TYPE_8__* %12)
  %14 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %21 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %21, i32 0, i32 2
  %23 = call i32 @mlx5_free_actual_buf(%struct.mlx5_context* %20, %struct.TYPE_8__* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free(i64 %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @free(i64 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %50 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @free(i64 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %68 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @free(i64 %70)
  br label %72

72:                                               ; preds = %66, %60
  ret void
}

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local i32 @mlx5_free_actual_buf(%struct.mlx5_context*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
