; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_send_rdisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_send_rdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, i8*, i32, i32, i32, i32 }
%union.ad_u = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_mreqn = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Send\00", align 1
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Send pt-to-pt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Send broadcast\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Send multicast\00", align 1
@IS_DUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"abort multicast output via %s with duplicate address\00", align 1
@rdisc_sock_mcast = common dso_local global %struct.interface* null, align 8
@rdisc_sock = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_IF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"setsockopt(rdisc_sock,IP_MULTICAST_IF)\00", align 1
@IS_BROKE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"sendto(%s%s%s): %s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ad_u*, i32, %struct.interface*, i32, i32)* @send_rdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rdisc(%union.ad_u* %0, i32 %1, %struct.interface* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %union.ad_u*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ip_mreqn, align 4
  store %union.ad_u* %0, %union.ad_u** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.interface* %2, %struct.interface** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = call i32 @memset(%struct.sockaddr_in* %11, i32 0, i32 16)
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @MSG_DONTROUTE, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %24 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %45
  ]

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %5, %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %79

25:                                               ; preds = %5
  %26 = load %struct.interface*, %struct.interface** %8, align 8
  %27 = getelementptr inbounds %struct.interface, %struct.interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_POINTOPOINT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %33 = load %struct.interface*, %struct.interface** %8, align 8
  %34 = getelementptr inbounds %struct.interface, %struct.interface* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %44

38:                                               ; preds = %25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %39 = load %struct.interface*, %struct.interface** %8, align 8
  %40 = getelementptr inbounds %struct.interface, %struct.interface* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32
  br label %79

45:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %46 = load %struct.interface*, %struct.interface** %8, align 8
  %47 = getelementptr inbounds %struct.interface, %struct.interface* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IS_DUP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.interface*, %struct.interface** %8, align 8
  %54 = getelementptr inbounds %struct.interface, %struct.interface* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @trace_act(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %147

57:                                               ; preds = %45
  %58 = load %struct.interface*, %struct.interface** @rdisc_sock_mcast, align 8
  %59 = load %struct.interface*, %struct.interface** %8, align 8
  %60 = icmp ne %struct.interface* %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = bitcast %struct.ip_mreqn* %14 to %struct.sockaddr_in*
  %63 = call i32 @memset(%struct.sockaddr_in* %62, i32 0, i32 16)
  %64 = load %struct.interface*, %struct.interface** %8, align 8
  %65 = getelementptr inbounds %struct.interface, %struct.interface* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %14, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i64, i64* @rdisc_sock, align 8
  %69 = load i32, i32* @IPPROTO_IP, align 4
  %70 = load i32, i32* @IP_MULTICAST_IF, align 4
  %71 = bitcast %struct.ip_mreqn* %14 to %struct.sockaddr_in*
  %72 = call i32 @setsockopt(i64 %68, i32 %69, i32 %70, %struct.sockaddr_in* %71, i32 16)
  %73 = icmp sgt i32 0, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = call i32 @LOGERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store %struct.interface* null, %struct.interface** @rdisc_sock_mcast, align 8
  br label %147

76:                                               ; preds = %61
  %77 = load %struct.interface*, %struct.interface** %8, align 8
  store %struct.interface* %77, %struct.interface** @rdisc_sock_mcast, align 8
  br label %78

78:                                               ; preds = %76, %57
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %44, %24
  %80 = load i64, i64* @rdisc_sock, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @get_rdisc_sock()
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.interface*, %struct.interface** %8, align 8
  %87 = icmp ne %struct.interface* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.interface*, %struct.interface** %8, align 8
  %90 = getelementptr inbounds %struct.interface, %struct.interface* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ 0, %92 ]
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.interface*, %struct.interface** %8, align 8
  %99 = load %union.ad_u*, %union.ad_u** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @trace_rdisc(i8* %85, i32 %94, i32 %97, %struct.interface* %98, %union.ad_u* %99, i32 %100)
  %102 = load i64, i64* @rdisc_sock, align 8
  %103 = load %union.ad_u*, %union.ad_u** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %12, align 4
  %106 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %107 = call i64 @sendto(i64 %102, %union.ad_u* %103, i32 %104, i32 %105, %struct.sockaddr* %106, i32 16)
  %108 = icmp sgt i64 0, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %93
  %110 = load %struct.interface*, %struct.interface** %8, align 8
  %111 = icmp eq %struct.interface* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load %struct.interface*, %struct.interface** %8, align 8
  %114 = getelementptr inbounds %struct.interface, %struct.interface* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IS_BROKE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %112, %109
  %120 = load %struct.interface*, %struct.interface** %8, align 8
  %121 = icmp ne %struct.interface* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.interface*, %struct.interface** %8, align 8
  %124 = getelementptr inbounds %struct.interface, %struct.interface* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i8* [ %125, %122 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %126 ]
  %129 = load %struct.interface*, %struct.interface** %8, align 8
  %130 = icmp ne %struct.interface* %129, null
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @inet_ntoa(i32 %135)
  %137 = load i32, i32* @errno, align 4
  %138 = call i32 @strerror(i32 %137)
  %139 = call i32 @msglog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %128, i8* %132, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %127, %112
  %141 = load %struct.interface*, %struct.interface** %8, align 8
  %142 = icmp ne %struct.interface* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.interface*, %struct.interface** %8, align 8
  %145 = call i32 @if_sick(%struct.interface* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %52, %74, %146, %93
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @trace_act(i8*, i8*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @LOGERR(i8*) #1

declare dso_local i32 @get_rdisc_sock(...) #1

declare dso_local i32 @trace_rdisc(i8*, i32, i32, %struct.interface*, %union.ad_u*, i32) #1

declare dso_local i64 @sendto(i64, %union.ad_u*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @msglog(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @if_sick(%struct.interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
