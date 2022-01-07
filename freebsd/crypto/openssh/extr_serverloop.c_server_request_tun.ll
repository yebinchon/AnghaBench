; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_request_tun.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_request_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported tunnel device mode.\00", align 1
@options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Server has rejected tunnel device forwarding\00", align 1
@auth_opts = common dso_local global %struct.TYPE_8__* null, align 8
@SSH_TUNID_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Tunnel forwarding using interface %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tun\00", align 1
@SSH_CHANNEL_OPEN = common dso_local global i32 0, align 4
@CHAN_TCP_WINDOW_DEFAULT = common dso_local global i32 0, align 4
@CHAN_TCP_PACKET_DEFAULT = common dso_local global i32 0, align 4
@tun_fwd_ifnames = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to open the tunnel device.\00", align 1
@sys_tun_infilter = common dso_local global i32 0, align 4
@sys_tun_outfilter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.ssh*)* @server_request_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @server_request_tun(%struct.ssh* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i8* null, i8** %9, align 8
  %10 = call i32 (...) @packet_get_int()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %13 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %1, %1
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @packet_send_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %87

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @packet_send_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %87

22:                                               ; preds = %15
  %23 = call i32 (...) @packet_get_int()
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @auth_opts, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SSH_TUNID_ANY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @auth_opts, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %80

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @auth_opts, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %22
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @tun_open(i32 %44, i32 %45, i8** %9)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %80

50:                                               ; preds = %43
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load %struct.ssh*, %struct.ssh** %3, align 8
  %54 = load i32, i32* @SSH_CHANNEL_OPEN, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CHAN_TCP_WINDOW_DEFAULT, align 4
  %58 = load i32, i32* @CHAN_TCP_PACKET_DEFAULT, align 4
  %59 = call %struct.TYPE_6__* @channel_new(%struct.ssh* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 -1, i32 %57, i32 %58, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %4, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i8*, i8** @tun_fwd_ifnames, align 8
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** @tun_fwd_ifnames, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %68

66:                                               ; preds = %50
  %67 = load i8*, i8** @tun_fwd_ifnames, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %65 ], [ %67, %66 ]
  %70 = load i8*, i8** @tun_fwd_ifnames, align 8
  %71 = icmp eq i8* %70, null
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @xasprintf(i8** @tun_fwd_ifnames, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %73, i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %68, %49, %38
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = icmp eq %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @packet_send_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %2, align 8
  br label %87

87:                                               ; preds = %85, %20, %13
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %88
}

declare dso_local i32 @packet_get_int(...) #1

declare dso_local i32 @packet_send_debug(i8*) #1

declare dso_local i32 @tun_open(i32, i32, i8**) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
