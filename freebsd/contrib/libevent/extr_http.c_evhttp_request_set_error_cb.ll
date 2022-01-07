; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_request_set_error_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_request_set_error_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { void (i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_request_set_error_cb(%struct.evhttp_request* %0, {}* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca {}*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store {}* %1, {}** %4, align 8
  %5 = load {}*, {}** %4, align 8
  %6 = bitcast {}* %5 to void (i32, i8*)*
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %7, i32 0, i32 0
  store void (i32, i8*)* %6, void (i32, i8*)** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
