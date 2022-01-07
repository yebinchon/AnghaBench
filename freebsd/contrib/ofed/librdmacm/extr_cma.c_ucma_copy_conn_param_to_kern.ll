; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_conn_param_to_kern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_conn_param_to_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { i64, i64, i32, i32 }
%struct.ucma_abi_conn_param = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.rdma_conn_param = type { i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma_id_private*, %struct.ucma_abi_conn_param*, %struct.rdma_conn_param*, i32, i32)* @ucma_copy_conn_param_to_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_conn_param_to_kern(%struct.cma_id_private* %0, %struct.ucma_abi_conn_param* %1, %struct.rdma_conn_param* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cma_id_private*, align 8
  %7 = alloca %struct.ucma_abi_conn_param*, align 8
  %8 = alloca %struct.rdma_conn_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cma_id_private* %0, %struct.cma_id_private** %6, align 8
  store %struct.ucma_abi_conn_param* %1, %struct.ucma_abi_conn_param** %7, align 8
  store %struct.rdma_conn_param* %2, %struct.rdma_conn_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %13 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %16 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %18 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %21 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %23 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %26 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %28 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %30 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %5
  %34 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %35 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %38 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %41 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memcpy(i64 %36, i64 %39, i64 %42)
  %44 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %45 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %48 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %33, %5
  %50 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %51 = icmp ne %struct.rdma_conn_param* %50, null
  br i1 %51, label %52, label %100

52:                                               ; preds = %49
  %53 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %54 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %57 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %59 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %62 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %64 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %67 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %69 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %52
  %73 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %74 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %79 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %82 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %86 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %89 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcpy(i64 %84, i64 %87, i64 %90)
  %92 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %8, align 8
  %93 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %96 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %77, %72, %52
  br label %105

100:                                              ; preds = %49
  %101 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %102 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %101, i32 0, i32 1
  store i32 7, i32* %102, align 4
  %103 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %7, align 8
  %104 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %103, i32 0, i32 2
  store i32 7, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %99
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
