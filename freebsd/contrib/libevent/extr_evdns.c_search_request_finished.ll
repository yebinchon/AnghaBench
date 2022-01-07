; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_request_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_request_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_request = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_request*)* @search_request_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_request_finished(%struct.evdns_request* %0) #0 {
  %2 = alloca %struct.evdns_request*, align 8
  store %struct.evdns_request* %0, %struct.evdns_request** %2, align 8
  %3 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %4 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ASSERT_LOCKED(i32 %7)
  %9 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %10 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %15 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @search_state_decref(i32* %16)
  %18 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %19 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %22 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %27 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mm_free(i32* %28)
  %30 = load %struct.evdns_request*, %struct.evdns_request** %2, align 8
  %31 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(i32) #1

declare dso_local i32 @search_state_decref(i32*) #1

declare dso_local i32 @mm_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
