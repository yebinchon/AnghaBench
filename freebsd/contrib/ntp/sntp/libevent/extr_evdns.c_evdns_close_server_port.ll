; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_close_server_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_close_server_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdns_close_server_port(%struct.evdns_server_port* %0) #0 {
  %2 = alloca %struct.evdns_server_port*, align 8
  store %struct.evdns_server_port* %0, %struct.evdns_server_port** %2, align 8
  %3 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %4 = call i32 @EVDNS_LOCK(%struct.evdns_server_port* %3)
  %5 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %6 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %12 = call i32 @EVDNS_UNLOCK(%struct.evdns_server_port* %11)
  %13 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %14 = call i32 @server_port_free(%struct.evdns_server_port* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %17 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_server_port*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_server_port*) #1

declare dso_local i32 @server_port_free(%struct.evdns_server_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
