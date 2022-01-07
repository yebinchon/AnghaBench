; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_valid_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_valid_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rdma_conn_param = type { i64, i64 }

@RDMA_PS_TCP = common dso_local global i64 0, align 8
@RDMA_MAX_RESP_RES = common dso_local global i64 0, align 8
@RDMA_MAX_INIT_DEPTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, %struct.rdma_conn_param*)* @ucma_valid_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_valid_param(%struct.cma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  store %struct.cma_id_private* %0, %struct.cma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %6 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %7 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RDMA_PS_TCP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %15 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %21 = icmp ne %struct.rdma_conn_param* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %62

23:                                               ; preds = %19, %13
  %24 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %25 = icmp ne %struct.rdma_conn_param* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %23
  %28 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_MAX_RESP_RES, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %38 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %62

44:                                               ; preds = %33, %27
  %45 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %46 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RDMA_MAX_INIT_DEPTH, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %52 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %55 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %62

61:                                               ; preds = %50, %44
  store i32 0, i32* %3, align 4
  br label %65

62:                                               ; preds = %60, %43, %22
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @ERR(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %61, %26, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
