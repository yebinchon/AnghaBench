; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_free_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { %struct.cma_id_private*, i64, %struct.TYPE_3__, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cma_id_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma_id_private*)* @ucma_free_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_free_id(%struct.cma_id_private* %0) #0 {
  %2 = alloca %struct.cma_id_private*, align 8
  store %struct.cma_id_private* %0, %struct.cma_id_private** %2, align 8
  %3 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %4 = call i32 @ucma_remove_id(%struct.cma_id_private* %3)
  %5 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %6 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %11 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ucma_put_device(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %16 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %15, i32 0, i32 5
  %17 = call i32 @pthread_cond_destroy(i32* %16)
  %18 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %19 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %18, i32 0, i32 4
  %20 = call i32 @pthread_mutex_destroy(i32* %19)
  %21 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %22 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.cma_id_private*, %struct.cma_id_private** %24, align 8
  %26 = icmp ne %struct.cma_id_private* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %29 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.cma_id_private*, %struct.cma_id_private** %31, align 8
  %33 = call i32 @free(%struct.cma_id_private* %32)
  br label %34

34:                                               ; preds = %27, %14
  %35 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %36 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %41 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @rdma_destroy_event_channel(i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %47 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %52 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %51, i32 0, i32 0
  %53 = load %struct.cma_id_private*, %struct.cma_id_private** %52, align 8
  %54 = call i32 @free(%struct.cma_id_private* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.cma_id_private*, %struct.cma_id_private** %2, align 8
  %57 = call i32 @free(%struct.cma_id_private* %56)
  ret void
}

declare dso_local i32 @ucma_remove_id(%struct.cma_id_private*) #1

declare dso_local i32 @ucma_put_device(i64) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.cma_id_private*) #1

declare dso_local i32 @rdma_destroy_event_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
