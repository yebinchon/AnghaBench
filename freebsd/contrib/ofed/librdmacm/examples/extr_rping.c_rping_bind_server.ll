; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_bind_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_bind_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"rdma_bind_addr\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"rdma_bind_addr successful\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rdma_listen\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rdma_listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_bind_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_bind_server(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %5 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %6 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %13 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %16 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %15, i32 0, i32 1
  %17 = bitcast %struct.TYPE_2__* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %21 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %24 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_2__* %24 to %struct.sockaddr_in6*
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %29 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %32 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %31, i32 0, i32 1
  %33 = bitcast %struct.TYPE_2__* %32 to %struct.sockaddr*
  %34 = call i32 @rdma_bind_addr(i32 %30, %struct.sockaddr* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %27
  %41 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %44 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rdma_listen(i32 %45, i32 3)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %37
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @rdma_bind_addr(i32, %struct.sockaddr*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @DEBUG_LOG(i8*) #1

declare dso_local i32 @rdma_listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
