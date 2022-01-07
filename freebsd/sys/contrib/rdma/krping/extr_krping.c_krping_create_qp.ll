; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krping_cb = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krping_cb*)* @krping_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krping_create_qp(%struct.krping_cb* %0) #0 {
  %2 = alloca %struct.krping_cb*, align 8
  %3 = alloca %struct.ib_qp_init_attr, align 4
  %4 = alloca i32, align 4
  store %struct.krping_cb* %0, %struct.krping_cb** %2, align 8
  %5 = call i32 @memset(%struct.ib_qp_init_attr* %3, i32 0, i32 32)
  %6 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %7 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 2, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @IB_QPT_RC, align 4
  %26 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %28 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %32 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %36 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %3, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %38 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %1
  %42 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %43 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %46 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rdma_create_qp(%struct.TYPE_4__* %44, i32 %47, %struct.ib_qp_init_attr* %3)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %53 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %58 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %51, %41
  br label %79

60:                                               ; preds = %1
  %61 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %62 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %65 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rdma_create_qp(%struct.TYPE_4__* %63, i32 %66, %struct.ib_qp_init_attr* %3)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %60
  %71 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %72 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.krping_cb*, %struct.krping_cb** %2, align 8
  %77 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %70, %60
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_4__*, i32, %struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
