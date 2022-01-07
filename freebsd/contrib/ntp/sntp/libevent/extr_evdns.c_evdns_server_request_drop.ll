; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32 }
%struct.server_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_server_request_drop(%struct.evdns_server_request* %0) #0 {
  %2 = alloca %struct.evdns_server_request*, align 8
  %3 = alloca %struct.server_request*, align 8
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %2, align 8
  %4 = load %struct.evdns_server_request*, %struct.evdns_server_request** %2, align 8
  %5 = call %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request* %4)
  store %struct.server_request* %5, %struct.server_request** %3, align 8
  %6 = load %struct.server_request*, %struct.server_request** %3, align 8
  %7 = call i32 @server_request_free(%struct.server_request* %6)
  ret i32 0
}

declare dso_local %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request*) #1

declare dso_local i32 @server_request_free(%struct.server_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
