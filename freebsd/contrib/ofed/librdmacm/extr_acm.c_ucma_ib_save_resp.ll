; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_save_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_save_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i32, i32*, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.acm_msg = type { %struct.acm_ep_addr_data*, %struct.TYPE_3__ }
%struct.acm_ep_addr_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ibv_path_data }
%struct.ibv_path_data = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@ACM_MSG_HDR_LENGTH = common dso_local global i32 0, align 4
@ACM_MSG_EP_LENGTH = common dso_local global i32 0, align 4
@ACM_EP_FLAG_SOURCE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_addrinfo*, %struct.acm_msg*)* @ucma_ib_save_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_ib_save_resp(%struct.rdma_addrinfo* %0, %struct.acm_msg* %1) #0 {
  %3 = alloca %struct.rdma_addrinfo*, align 8
  %4 = alloca %struct.acm_msg*, align 8
  %5 = alloca %struct.acm_ep_addr_data*, align 8
  %6 = alloca %struct.ibv_path_data*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rdma_addrinfo* %0, %struct.rdma_addrinfo** %3, align 8
  store %struct.acm_msg* %1, %struct.acm_msg** %4, align 8
  store %struct.ibv_path_data* null, %struct.ibv_path_data** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.acm_msg*, %struct.acm_msg** %4, align 8
  %13 = getelementptr inbounds %struct.acm_msg, %struct.acm_msg* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ACM_MSG_HDR_LENGTH, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* @ACM_MSG_EP_LENGTH, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %117, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %120

24:                                               ; preds = %20
  %25 = load %struct.acm_msg*, %struct.acm_msg** %4, align 8
  %26 = getelementptr inbounds %struct.acm_msg, %struct.acm_msg* %25, i32 0, i32 0
  %27 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %27, i64 %29
  store %struct.acm_ep_addr_data* %30, %struct.acm_ep_addr_data** %5, align 8
  %31 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %32 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %115 [
    i32 128, label %34
    i32 130, label %45
    i32 129, label %80
  ]

34:                                               ; preds = %24
  %35 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %36 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.ibv_path_data*, %struct.ibv_path_data** %6, align 8
  %38 = icmp ne %struct.ibv_path_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %41 = bitcast %struct.acm_ep_addr_data* %40 to %struct.ibv_path_data*
  store %struct.ibv_path_data* %41, %struct.ibv_path_data** %6, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %116

45:                                               ; preds = %24
  %46 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %47 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ACM_EP_FLAG_SOURCE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %54 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %45
  br label %116

58:                                               ; preds = %52
  %59 = call i8* @calloc(i32 1, i32 8)
  %60 = bitcast i8* %59 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %60, %struct.sockaddr_in** %7, align 8
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %62 = icmp ne %struct.sockaddr_in* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %116

64:                                               ; preds = %58
  %65 = load i32, i32* @AF_INET, align 4
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %68, i32 0, i32 0
  %70 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %71 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @memcpy(i32* %69, %struct.ibv_path_data* %72, i32 4)
  %74 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %75 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %74, i32 0, i32 0
  store i32 8, i32* %75, align 8
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %77 = bitcast %struct.sockaddr_in* %76 to %struct.sockaddr*
  %78 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %79 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %78, i32 0, i32 3
  store %struct.sockaddr* %77, %struct.sockaddr** %79, align 8
  br label %116

80:                                               ; preds = %24
  %81 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %82 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ACM_EP_FLAG_SOURCE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %89 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %80
  br label %116

93:                                               ; preds = %87
  %94 = call i8* @calloc(i32 1, i32 8)
  %95 = bitcast i8* %94 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %95, %struct.sockaddr_in6** %8, align 8
  %96 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %97 = icmp ne %struct.sockaddr_in6* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %116

99:                                               ; preds = %93
  %100 = load i32, i32* @AF_INET6, align 4
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 0
  %105 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %5, align 8
  %106 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 @memcpy(i32* %104, %struct.ibv_path_data* %107, i32 16)
  %109 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %110 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %109, i32 0, i32 0
  store i32 8, i32* %110, align 8
  %111 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %112 = bitcast %struct.sockaddr_in6* %111 to %struct.sockaddr*
  %113 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %114 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %113, i32 0, i32 3
  store %struct.sockaddr* %112, %struct.sockaddr** %114, align 8
  br label %116

115:                                              ; preds = %24
  br label %116

116:                                              ; preds = %115, %99, %98, %92, %64, %63, %57, %42
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %20

120:                                              ; preds = %20
  %121 = load i32, i32* %11, align 4
  %122 = call i8* @calloc(i32 %121, i32 4)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %125 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  %126 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %127 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %146

130:                                              ; preds = %120
  %131 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %132 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.ibv_path_data*, %struct.ibv_path_data** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcpy(i32* %133, %struct.ibv_path_data* %134, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %145 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %130, %120
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ibv_path_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
