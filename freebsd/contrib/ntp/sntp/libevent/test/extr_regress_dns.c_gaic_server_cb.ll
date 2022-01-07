; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_gaic_server_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_gaic_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@DNS_ERR_REFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_request*, i8*)* @gaic_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaic_server_cb(%struct.evdns_server_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 2130706433, i32* %5, align 4
  %6 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %7 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @tt_assert(i32 %8)
  %10 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %11 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %12 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %10, i32 %17, i32 1, i32* %5, i32 100)
  %19 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %20 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %19, i32 0)
  br label %25

21:                                               ; No predecessors!
  %22 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %23 = load i32, i32* @DNS_ERR_REFUSED, align 4
  %24 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request*, i32, i32, i32*, i32) #1

declare dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
