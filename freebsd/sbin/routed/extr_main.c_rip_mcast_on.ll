; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_rip_mcast_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_rip_mcast_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, i32 }
%struct.group_req = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IFF_MULTICAST = common dso_local global i32 0, align 4
@IS_ALIAS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_RIP_GROUP = common dso_local global i32 0, align 4
@rip_sock = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@MCAST_JOIN_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"setsockopt(MCAST_JOIN_GROUP RIP)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.interface*)* @rip_mcast_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rip_mcast_on(%struct.interface* %0) #0 {
  %2 = alloca %struct.interface*, align 8
  %3 = alloca %struct.group_req, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  store %struct.interface* %0, %struct.interface** %2, align 8
  %5 = load %struct.interface*, %struct.interface** %2, align 8
  %6 = getelementptr inbounds %struct.interface, %struct.interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IS_RIP_IN_OFF(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load %struct.interface*, %struct.interface** %2, align 8
  %12 = getelementptr inbounds %struct.interface, %struct.interface* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_MULTICAST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %10
  %18 = load %struct.interface*, %struct.interface** %2, align 8
  %19 = getelementptr inbounds %struct.interface, %struct.interface* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IS_ALIAS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %17
  %25 = call i32 @memset(%struct.group_req* %3, i32 0, i32 8)
  %26 = load %struct.interface*, %struct.interface** %2, align 8
  %27 = getelementptr inbounds %struct.interface, %struct.interface* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.group_req, %struct.group_req* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.group_req, %struct.group_req* %3, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %31, %struct.sockaddr_in** %4, align 8
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @INADDR_RIP_GROUP, align 4
  %36 = call i32 @htonl(i32 %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @rip_sock, align 4
  %41 = load i32, i32* @IPPROTO_IP, align 4
  %42 = load i32, i32* @MCAST_JOIN_GROUP, align 4
  %43 = call i64 @setsockopt(i32 %40, i32 %41, i32 %42, %struct.group_req* %3, i32 8)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = call i32 @LOGERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %24
  br label %48

48:                                               ; preds = %47, %17, %10, %1
  ret void
}

declare dso_local i32 @IS_RIP_IN_OFF(i32) #1

declare dso_local i32 @memset(%struct.group_req*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.group_req*, i32) #1

declare dso_local i32 @LOGERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
