; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_free_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_free_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_qp = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.ds_qp*, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ds_compare_addr = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_qp*)* @ds_free_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_free_qp(%struct.ds_qp* %0) #0 {
  %2 = alloca %struct.ds_qp*, align 8
  store %struct.ds_qp* %0, %struct.ds_qp** %2, align 8
  %3 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @rdma_dereg_mr(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %14 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %13, i32 0, i32 3
  %15 = load %struct.ds_qp*, %struct.ds_qp** %14, align 8
  %16 = icmp ne %struct.ds_qp* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %19 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @rdma_dereg_mr(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %29 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %28, i32 0, i32 3
  %30 = load %struct.ds_qp*, %struct.ds_qp** %29, align 8
  %31 = call i32 @free(%struct.ds_qp* %30)
  br label %32

32:                                               ; preds = %27, %12
  %33 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %34 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %77

37:                                               ; preds = %32
  %38 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %39 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %46 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %49 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* @ds_compare_addr, align 4
  %53 = call i32 @tdelete(i32* %47, i32* %51, i32 %52)
  %54 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %55 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %60 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %61 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @epoll_ctl(i32 %58, i32 %59, i32 %66, i32* null)
  %68 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %69 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @rdma_destroy_qp(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %44, %37
  %73 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %74 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = call i32 @rdma_destroy_id(%struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %72, %32
  %78 = load %struct.ds_qp*, %struct.ds_qp** %2, align 8
  %79 = call i32 @free(%struct.ds_qp* %78)
  ret void
}

declare dso_local i32 @rdma_dereg_mr(i64) #1

declare dso_local i32 @free(%struct.ds_qp*) #1

declare dso_local i32 @tdelete(i32*, i32*, i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, i32*) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_9__*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
