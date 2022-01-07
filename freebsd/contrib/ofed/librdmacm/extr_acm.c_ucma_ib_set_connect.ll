; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_set_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_set_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i64, i32, %struct.ib_connect_hdr*, i64, i64 }
%struct.ib_connect_hdr = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_IB = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_addrinfo*, %struct.rdma_addrinfo*)* @ucma_ib_set_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_ib_set_connect(%struct.rdma_addrinfo* %0, %struct.rdma_addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_addrinfo*, align 8
  %5 = alloca %struct.rdma_addrinfo*, align 8
  %6 = alloca %struct.ib_connect_hdr*, align 8
  store %struct.rdma_addrinfo* %0, %struct.rdma_addrinfo** %4, align 8
  store %struct.rdma_addrinfo* %1, %struct.rdma_addrinfo** %5, align 8
  %7 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %8 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_IB, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = call %struct.ib_connect_hdr* @calloc(i32 1, i32 20)
  store %struct.ib_connect_hdr* %14, %struct.ib_connect_hdr** %6, align 8
  %15 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %16 = icmp ne %struct.ib_connect_hdr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @ERR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %13
  %21 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %22 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %27, i32 0, i32 0
  store i32 64, i32* %28, align 4
  %29 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %29, i32 0, i32 4
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %32 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.sockaddr_in*
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %30, i32* %35, i32 4)
  %37 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %37, i32 0, i32 3
  %39 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %40 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.sockaddr_in*
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 0
  %44 = call i32 @memcpy(i32* %38, i32* %43, i32 4)
  br label %64

45:                                               ; preds = %20
  %46 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %46, i32 0, i32 0
  store i32 96, i32* %47, align 4
  %48 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %48, i32 0, i32 2
  %50 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %51 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.sockaddr_in6*
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = call i32 @memcpy(i32* %49, i32* %54, i32 16)
  %56 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_connect_hdr, %struct.ib_connect_hdr* %56, i32 0, i32 1
  %58 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %59 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.sockaddr_in6*
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 0
  %63 = call i32 @memcpy(i32* %57, i32* %62, i32 16)
  br label %64

64:                                               ; preds = %45, %26
  %65 = load %struct.ib_connect_hdr*, %struct.ib_connect_hdr** %6, align 8
  %66 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %67 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %66, i32 0, i32 2
  store %struct.ib_connect_hdr* %65, %struct.ib_connect_hdr** %67, align 8
  %68 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %69 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %68, i32 0, i32 1
  store i32 20, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %17, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ib_connect_hdr* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
