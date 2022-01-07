; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_create_reply_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_create_reply_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ibv_wc = type { i32 }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_qp_init_attr = type { i32 }

@IBV_QP_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmatest_node*, %struct.ibv_wc*)* @create_reply_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reply_ah(%struct.cmatest_node* %0, %struct.ibv_wc* %1) #0 {
  %3 = alloca %struct.cmatest_node*, align 8
  %4 = alloca %struct.ibv_wc*, align 8
  %5 = alloca %struct.ibv_qp_attr, align 4
  %6 = alloca %struct.ibv_qp_init_attr, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  store %struct.ibv_wc* %1, %struct.ibv_wc** %4, align 8
  %7 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %8 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ibv_wc*, %struct.ibv_wc** %4, align 8
  %11 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %12 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %15 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ibv_create_ah_from_wc(i32 %9, %struct.ibv_wc* %10, i32 %13, i32 %18)
  %20 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %21 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ibv_wc*, %struct.ibv_wc** %4, align 8
  %23 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32toh(i32 %24)
  %26 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %27 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %29 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IBV_QP_QKEY, align 4
  %34 = call i32 @ibv_query_qp(i32 %32, %struct.ibv_qp_attr* %5, i32 %33, %struct.ibv_qp_init_attr* %6)
  %35 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %38 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local i32 @ibv_create_ah_from_wc(i32, %struct.ibv_wc*, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @ibv_query_qp(i32, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
