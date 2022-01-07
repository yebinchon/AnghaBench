; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, i32, i8*, i32 }
%struct.sockaddr_in = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rip = type { i32 }
%struct.ip_mreqn = type { i32 }
%struct.sockaddr = type { i32 }

@RIP_PORT = common dso_local global i32 0, align 4
@rip_sock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Answer Query\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Send\00", align 1
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Send bcast\00", align 1
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Send pt-to-pt\00", align 1
@IS_DUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"abort multicast output via %s with duplicate address\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Send mcast\00", align 1
@rip_sock_mcast = common dso_local global %struct.interface* null, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_IF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"setsockopt(rip_sock, IP_MULTICAST_IF)\00", align 1
@INADDR_RIP_GROUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@IS_BROKE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"%s sendto(%s%s%s.%d): %s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output(i32 %0, %struct.sockaddr_in* %1, %struct.interface* %2, %struct.rip* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.interface*, align 8
  %10 = alloca %struct.rip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip_mreqn, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %8, align 8
  store %struct.interface* %2, %struct.interface** %9, align 8
  store %struct.rip* %3, %struct.rip** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.interface*, %struct.interface** %9, align 8
  %20 = icmp ne %struct.interface* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %24 = bitcast %struct.sockaddr_in* %12 to i8*
  %25 = bitcast %struct.sockaddr_in* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @RIP_PORT, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* @rip_sock, align 4
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %116 [
    i32 129, label %36
    i32 128, label %44
    i32 131, label %53
    i32 130, label %64
    i32 133, label %115
    i32 132, label %115
  ]

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.interface*, %struct.interface** %9, align 8
  %41 = getelementptr inbounds %struct.interface, %struct.interface* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %39, %36
  br label %117

44:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.interface*, %struct.interface** %9, align 8
  %49 = getelementptr inbounds %struct.interface, %struct.interface* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* @MSG_DONTROUTE, align 4
  store i32 %52, i32* %13, align 4
  br label %117

53:                                               ; preds = %33
  %54 = load %struct.interface*, %struct.interface** %9, align 8
  %55 = getelementptr inbounds %struct.interface, %struct.interface* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_POINTOPOINT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %62

61:                                               ; preds = %53
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* @MSG_DONTROUTE, align 4
  store i32 %63, i32* %13, align 4
  br label %117

64:                                               ; preds = %33
  %65 = load %struct.interface*, %struct.interface** %9, align 8
  %66 = getelementptr inbounds %struct.interface, %struct.interface* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_POINTOPOINT, align 4
  %69 = load i32, i32* @IFF_MULTICAST, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @IFF_POINTOPOINT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %114

75:                                               ; preds = %64
  %76 = load %struct.interface*, %struct.interface** %9, align 8
  %77 = getelementptr inbounds %struct.interface, %struct.interface* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IS_DUP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.interface*, %struct.interface** %9, align 8
  %84 = getelementptr inbounds %struct.interface, %struct.interface* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @trace_act(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  store i32 0, i32* %6, align 4
  br label %170

87:                                               ; preds = %75
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  %88 = load %struct.interface*, %struct.interface** @rip_sock_mcast, align 8
  %89 = load %struct.interface*, %struct.interface** %9, align 8
  %90 = icmp ne %struct.interface* %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = call i32 @memset(%struct.ip_mreqn* %18, i32 0, i32 4)
  %93 = load %struct.interface*, %struct.interface** %9, align 8
  %94 = getelementptr inbounds %struct.interface, %struct.interface* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %18, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @rip_sock, align 4
  %98 = load i32, i32* @IPPROTO_IP, align 4
  %99 = load i32, i32* @IP_MULTICAST_IF, align 4
  %100 = call i32 @setsockopt(i32 %97, i32 %98, i32 %99, %struct.ip_mreqn* %18, i32 4)
  %101 = icmp sgt i32 0, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i32, i32* @errno, align 4
  store i32 %103, i32* %17, align 4
  %104 = call i32 @LOGERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* @errno, align 4
  store %struct.interface* null, %struct.interface** %9, align 8
  store i32 -1, i32* %6, align 4
  br label %170

106:                                              ; preds = %91
  %107 = load %struct.interface*, %struct.interface** %9, align 8
  store %struct.interface* %107, %struct.interface** @rip_sock_mcast, align 8
  br label %108

108:                                              ; preds = %106, %87
  %109 = load i32, i32* @INADDR_RIP_GROUP, align 4
  %110 = call i32 @htonl(i32 %109)
  %111 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %74
  br label %117

115:                                              ; preds = %33, %33
  br label %116

116:                                              ; preds = %33, %115
  store i32 -1, i32* %6, align 4
  br label %170

117:                                              ; preds = %114, %62, %51, %43
  %118 = load i8*, i8** %14, align 8
  %119 = load %struct.interface*, %struct.interface** %9, align 8
  %120 = load %struct.rip*, %struct.rip** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @trace_rip(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.sockaddr_in* %12, %struct.interface* %119, %struct.rip* %120, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.rip*, %struct.rip** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %13, align 4
  %127 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %128 = call i32 @sendto(i32 %123, %struct.rip* %124, i32 %125, i32 %126, %struct.sockaddr* %127, i32 16)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %168

131:                                              ; preds = %117
  %132 = load %struct.interface*, %struct.interface** %9, align 8
  %133 = icmp eq %struct.interface* %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load %struct.interface*, %struct.interface** %9, align 8
  %136 = getelementptr inbounds %struct.interface, %struct.interface* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IS_BROKE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %134, %131
  %142 = load i32, i32* @errno, align 4
  store i32 %142, i32* %17, align 4
  %143 = load i8*, i8** %14, align 8
  %144 = load %struct.interface*, %struct.interface** %9, align 8
  %145 = icmp ne %struct.interface* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.interface*, %struct.interface** %9, align 8
  %148 = getelementptr inbounds %struct.interface, %struct.interface* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  br label %151

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i8* [ %149, %146 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %150 ]
  %153 = load %struct.interface*, %struct.interface** %9, align 8
  %154 = icmp ne %struct.interface* %153, null
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @inet_ntoa(i32 %159)
  %161 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @ntohs(i64 %162)
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 @msglog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %143, i8* %152, i8* %156, i32 %160, i32 %163, i32 %165)
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* @errno, align 4
  br label %168

168:                                              ; preds = %151, %134, %117
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %116, %102, %82
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @trace_act(i8*, i8*) #1

declare dso_local i32 @memset(%struct.ip_mreqn*, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.ip_mreqn*, i32) #1

declare dso_local i32 @LOGERR(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @trace_rip(i8*, i8*, %struct.sockaddr_in*, %struct.interface*, %struct.rip*, i32) #1

declare dso_local i32 @sendto(i32, %struct.rip*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @msglog(i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
