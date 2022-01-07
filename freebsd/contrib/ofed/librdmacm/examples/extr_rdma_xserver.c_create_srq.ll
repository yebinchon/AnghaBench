; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ibv_srq_init_attr = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@id = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"rdma_create_srq:\00", align 1
@srqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_srq() #0 {
  %1 = alloca %struct.ibv_srq_init_attr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @id, align 8
  %11 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %1, i32 0, i32 0
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @id, align 8
  %13 = call i32 @rdma_create_srq(%struct.TYPE_5__* %12, i32* null, %struct.ibv_srq_init_attr* %1)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @id, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @id, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ibv_get_srq_num(i64 %26, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @htobe32(i32 %28)
  store i32 %29, i32* @srqn, align 4
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rdma_create_srq(%struct.TYPE_5__*, i32*, %struct.ibv_srq_init_attr*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ibv_get_srq_num(i64, i32*) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
