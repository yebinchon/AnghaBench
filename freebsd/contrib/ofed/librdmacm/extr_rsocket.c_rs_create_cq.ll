; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, i64 }
%struct.rdma_cm_id = type { %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.rdma_cm_id*)* @rs_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_create_cq(%struct.rsocket* %0, %struct.rdma_cm_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %5, align 8
  %6 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.TYPE_4__* @ibv_create_comp_channel(i32 %8)
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %10, i32 0, i32 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %11, align 8
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %19 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32* @ibv_create_cq(i32 %20, i64 %27, %struct.rdma_cm_id* %28, %struct.TYPE_4__* %31, i32 0)
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %36 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %17
  br label %81

40:                                               ; preds = %17
  %41 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %42 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F_SETFL, align 4
  %54 = load i32, i32* @O_NONBLOCK, align 4
  %55 = call i64 @fcntl(i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %74

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %61 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ibv_req_notify_cq(i32* %62, i32 0)
  %64 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %65 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %67, i32 0, i32 3
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %70 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %73 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  store i32 0, i32* %3, align 4
  br label %88

74:                                               ; preds = %57
  %75 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %76 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ibv_destroy_cq(i32* %77)
  %79 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %80 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %39
  %82 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %83 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i32 @ibv_destroy_comp_channel(%struct.TYPE_4__* %84)
  %86 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %87 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %86, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %87, align 8
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %59, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_4__* @ibv_create_comp_channel(i32) #1

declare dso_local i32* @ibv_create_cq(i32, i64, %struct.rdma_cm_id*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @ibv_req_notify_cq(i32*, i32) #1

declare dso_local i32 @ibv_destroy_cq(i32*) #1

declare dso_local i32 @ibv_destroy_comp_channel(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
