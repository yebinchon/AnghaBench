; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_qp_init_attr = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RPING_SQ_DEPTH = common dso_local global i32 0, align 4
@IBV_QPT_RC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_create_qp(%struct.rping_cb* %0) #0 {
  %2 = alloca %struct.rping_cb*, align 8
  %3 = alloca %struct.ibv_qp_init_attr, align 4
  %4 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %2, align 8
  %5 = call i32 @memset(%struct.ibv_qp_init_attr* %3, i32 0, i32 28)
  %6 = load i32, i32* @RPING_SQ_DEPTH, align 4
  %7 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @IBV_QPT_RC, align 4
  %16 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %18 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %22 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %26 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %1
  %30 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdma_create_qp(%struct.TYPE_4__* %32, i32 %35, %struct.ibv_qp_init_attr* %3)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %41 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %46 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %39, %29
  br label %67

48:                                               ; preds = %1
  %49 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %50 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %53 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rdma_create_qp(%struct.TYPE_4__* %51, i32 %54, %struct.ibv_qp_init_attr* %3)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %60 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %65 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_4__*, i32, %struct.ibv_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
