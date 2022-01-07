; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_client_alive_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_client_alive_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ssh = type { i32 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"Timeout, client not responding from %s\00", align 1
@SSH2_MSG_GLOBAL_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"keepalive@openssh.com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*)* @client_alive_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_alive_check(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %5 = call i64 (...) @packet_inc_alive_timeouts()
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.ssh*, %struct.ssh** %2, align 8
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %11 = call i32 @sshpkt_fmt_connection_id(%struct.ssh* %9, i8* %10, i32 512)
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %13 = call i32 @logit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @cleanup_exit(i32 255)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.ssh*, %struct.ssh** %2, align 8
  %17 = call i32 @channel_find_open(%struct.ssh* %16)
  store i32 %17, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @SSH2_MSG_GLOBAL_REQUEST, align 4
  %21 = call i32 @packet_start(i32 %20)
  %22 = call i32 @packet_put_cstring(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @packet_put_char(i32 1)
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.ssh*, %struct.ssh** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @channel_request_start(%struct.ssh* %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %28

28:                                               ; preds = %24, %19
  %29 = call i32 (...) @packet_send()
  ret void
}

declare dso_local i64 @packet_inc_alive_timeouts(...) #1

declare dso_local i32 @sshpkt_fmt_connection_id(%struct.ssh*, i8*, i32) #1

declare dso_local i32 @logit(i8*, i8*) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @channel_find_open(%struct.ssh*) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_put_cstring(i8*) #1

declare dso_local i32 @packet_put_char(i32) #1

declare dso_local i32 @channel_request_start(%struct.ssh*, i32, i8*, i32) #1

declare dso_local i32 @packet_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
