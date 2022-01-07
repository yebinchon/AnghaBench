; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32 }
%struct.server_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVDNS_FLAGS_AA = common dso_local global i32 0, align 4
@EVDNS_FLAGS_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdns_server_request_set_flags(%struct.evdns_server_request* %0, i32 %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.server_request*, align 8
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %7 = call %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request* %6)
  store %struct.server_request* %7, %struct.server_request** %5, align 8
  %8 = load i32, i32* @EVDNS_FLAGS_AA, align 4
  %9 = load i32, i32* @EVDNS_FLAGS_RD, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.server_request*, %struct.server_request** %5, align 8
  %13 = getelementptr inbounds %struct.server_request, %struct.server_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.server_request*, %struct.server_request** %5, align 8
  %19 = getelementptr inbounds %struct.server_request, %struct.server_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
