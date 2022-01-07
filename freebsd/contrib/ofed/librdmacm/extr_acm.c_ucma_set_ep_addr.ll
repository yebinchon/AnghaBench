; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_set_ep_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_set_ep_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm_ep_addr_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@ACM_EP_INFO_ADDRESS_IP = common dso_local global i32 0, align 4
@ACM_EP_INFO_ADDRESS_IP6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm_ep_addr_data*, %struct.sockaddr*)* @ucma_set_ep_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_set_ep_addr(%struct.acm_ep_addr_data* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.acm_ep_addr_data*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  store %struct.acm_ep_addr_data* %0, %struct.acm_ep_addr_data** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* @ACM_EP_INFO_ADDRESS_IP, align 4
  %12 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %3, align 8
  %13 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %3, align 8
  %15 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = call i32 @memcpy(i32 %17, i32* %20, i32 4)
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* @ACM_EP_INFO_ADDRESS_IP6, align 4
  %24 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %3, align 8
  %25 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.acm_ep_addr_data*, %struct.acm_ep_addr_data** %3, align 8
  %27 = getelementptr inbounds %struct.acm_ep_addr_data, %struct.acm_ep_addr_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in6*
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = call i32 @memcpy(i32 %29, i32* %32, i32 16)
  br label %34

34:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
