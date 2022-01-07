; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_bind_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_bind_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"rdma_resolve_addr\00", align 1
@ROUTE_RESOLVED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"waiting for addr/route resolution state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"rdma_resolve_addr - rdma_resolve_route successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_bind_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_bind_client(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %5 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %6 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %13 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %16 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %15, i32 0, i32 2
  %17 = bitcast %struct.TYPE_4__* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %21 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %24 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %23, i32 0, i32 2
  %25 = bitcast %struct.TYPE_4__* %24 to %struct.sockaddr_in6*
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %29 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %35 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %38 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %37, i32 0, i32 4
  %39 = bitcast %struct.TYPE_3__* %38 to %struct.sockaddr*
  %40 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %41 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %40, i32 0, i32 2
  %42 = bitcast %struct.TYPE_4__* %41 to %struct.sockaddr*
  %43 = call i32 @rdma_resolve_addr(i32 %36, %struct.sockaddr* %39, %struct.sockaddr* %42, i32 2000)
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %27
  %45 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %46 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %49 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %48, i32 0, i32 2
  %50 = bitcast %struct.TYPE_4__* %49 to %struct.sockaddr*
  %51 = call i32 @rdma_resolve_addr(i32 %47, %struct.sockaddr* null, %struct.sockaddr* %50, i32 2000)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %33
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %52
  %59 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %60 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %59, i32 0, i32 1
  %61 = call i32 @sem_wait(i32* %60)
  %62 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %63 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ROUTE_RESOLVED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @stderr, align 4
  %69 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %70 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  store i32 -1, i32* %2, align 4
  br label %75

73:                                               ; preds = %58
  %74 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %67, %55
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @rdma_resolve_addr(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @DEBUG_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
