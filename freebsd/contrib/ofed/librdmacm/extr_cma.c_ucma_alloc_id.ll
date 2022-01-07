; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_alloc_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.rdma_event_channel*, i8* }
%struct.rdma_event_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cma_id_private* (%struct.rdma_event_channel*, i8*, i32, i32)* @ucma_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cma_id_private* @ucma_alloc_id(%struct.rdma_event_channel* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cma_id_private*, align 8
  %6 = alloca %struct.rdma_event_channel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cma_id_private*, align 8
  store %struct.rdma_event_channel* %0, %struct.rdma_event_channel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.cma_id_private* @calloc(i32 1, i32 40)
  store %struct.cma_id_private* %11, %struct.cma_id_private** %10, align 8
  %12 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %13 = icmp ne %struct.cma_id_private* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.cma_id_private* null, %struct.cma_id_private** %5, align 8
  br label %65

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %18 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %22 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %26 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %29 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %6, align 8
  %31 = icmp ne %struct.rdma_event_channel* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %15
  %33 = call %struct.rdma_event_channel* (...) @rdma_create_event_channel()
  %34 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %35 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store %struct.rdma_event_channel* %33, %struct.rdma_event_channel** %36, align 8
  %37 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %38 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %39, align 8
  %41 = icmp ne %struct.rdma_event_channel* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %62

43:                                               ; preds = %32
  %44 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %45 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %51

46:                                               ; preds = %15
  %47 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %6, align 8
  %48 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %49 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %struct.rdma_event_channel* %47, %struct.rdma_event_channel** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %53 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %52, i32 0, i32 3
  %54 = call i32 @pthread_mutex_init(i32* %53, i32* null)
  %55 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %56 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %55, i32 0, i32 2
  %57 = call i64 @pthread_cond_init(i32* %56, i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %62

60:                                               ; preds = %51
  %61 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  store %struct.cma_id_private* %61, %struct.cma_id_private** %5, align 8
  br label %65

62:                                               ; preds = %59, %42
  %63 = load %struct.cma_id_private*, %struct.cma_id_private** %10, align 8
  %64 = call i32 @ucma_free_id(%struct.cma_id_private* %63)
  store %struct.cma_id_private* null, %struct.cma_id_private** %5, align 8
  br label %65

65:                                               ; preds = %62, %60, %14
  %66 = load %struct.cma_id_private*, %struct.cma_id_private** %5, align 8
  ret %struct.cma_id_private* %66
}

declare dso_local %struct.cma_id_private* @calloc(i32, i32) #1

declare dso_local %struct.rdma_event_channel* @rdma_create_event_channel(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @ucma_free_id(%struct.cma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
