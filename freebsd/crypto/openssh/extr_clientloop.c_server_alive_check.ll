; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_server_alive_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_server_alive_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"Timeout, server %s not responding.\00", align 1
@host = common dso_local global i32 0, align 4
@SSH2_MSG_GLOBAL_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"keepalive@openssh.com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_alive_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_alive_check() #0 {
  %1 = call i64 (...) @packet_inc_alive_timeouts()
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @host, align 4
  %6 = call i32 @logit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @cleanup_exit(i32 255)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @SSH2_MSG_GLOBAL_REQUEST, align 4
  %10 = call i32 @packet_start(i32 %9)
  %11 = call i32 @packet_put_cstring(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @packet_put_char(i32 1)
  %13 = call i32 (...) @packet_send()
  %14 = call i32 @client_register_global_confirm(i32* null, i32* null)
  ret void
}

declare dso_local i64 @packet_inc_alive_timeouts(...) #1

declare dso_local i32 @logit(i8*, i32) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_put_cstring(i8*) #1

declare dso_local i32 @packet_put_char(i32) #1

declare dso_local i32 @packet_send(...) #1

declare dso_local i32 @client_register_global_confirm(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
