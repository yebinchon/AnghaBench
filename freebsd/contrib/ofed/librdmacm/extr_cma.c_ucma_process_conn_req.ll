; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_conn_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_conn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_event = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cma_id_private = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_event*, i32)* @ucma_process_conn_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_process_conn_req(%struct.cma_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_id_private*, align 8
  %7 = alloca i32, align 4
  store %struct.cma_event* %0, %struct.cma_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %9 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %15 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %21 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %27 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.cma_id_private* @ucma_alloc_id(%struct.TYPE_12__* %13, i32 %19, i32 %25, i32 %31)
  store %struct.cma_id_private* %32, %struct.cma_id_private** %6, align 8
  %33 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %34 = icmp ne %struct.cma_id_private* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %2
  %36 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %37 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ucma_destroy_kern_id(i32 %43, i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @ERR(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %108

48:                                               ; preds = %2
  %49 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %50 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %54 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %57 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %56, i32 0, i32 0
  %58 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %59 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %63 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %65 = call i32 @ucma_insert_id(%struct.cma_id_private* %64)
  %66 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %67 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %73 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %75 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %81 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %83 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %48
  %89 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %90 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %89, i32 0, i32 0
  %91 = call i32 @rdma_migrate_id(i32* %90, i32* null)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %104

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %48
  %97 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %98 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %97, i32 0, i32 0
  %99 = call i32 @ucma_query_req_info(i32* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %104

103:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %114

104:                                              ; preds = %102, %94
  %105 = load %struct.cma_id_private*, %struct.cma_id_private** %6, align 8
  %106 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %105, i32 0, i32 0
  %107 = call i32 @rdma_destroy_id(i32* %106)
  br label %108

108:                                              ; preds = %104, %35
  %109 = load %struct.cma_event*, %struct.cma_event** %4, align 8
  %110 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = call i32 @ucma_complete_event(%struct.TYPE_11__* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.cma_id_private* @ucma_alloc_id(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ucma_destroy_kern_id(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ucma_insert_id(%struct.cma_id_private*) #1

declare dso_local i32 @rdma_migrate_id(i32*, i32*) #1

declare dso_local i32 @ucma_query_req_info(i32*) #1

declare dso_local i32 @rdma_destroy_id(i32*) #1

declare dso_local i32 @ucma_complete_event(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
