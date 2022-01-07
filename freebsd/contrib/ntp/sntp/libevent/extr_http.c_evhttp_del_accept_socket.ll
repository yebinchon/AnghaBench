; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_del_accept_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_del_accept_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evhttp_bound_socket = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_del_accept_socket(%struct.evhttp* %0, %struct.evhttp_bound_socket* %1) #0 {
  %3 = alloca %struct.evhttp*, align 8
  %4 = alloca %struct.evhttp_bound_socket*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %3, align 8
  store %struct.evhttp_bound_socket* %1, %struct.evhttp_bound_socket** %4, align 8
  %5 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %5, i32 0, i32 0
  %7 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %4, align 8
  %8 = load i32, i32* @next, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* %6, %struct.evhttp_bound_socket* %7, i32 %8)
  %10 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %4, align 8
  %11 = getelementptr inbounds %struct.evhttp_bound_socket, %struct.evhttp_bound_socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @evconnlistener_free(i32 %12)
  %14 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %4, align 8
  %15 = call i32 @mm_free(%struct.evhttp_bound_socket* %14)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_bound_socket*, i32) #1

declare dso_local i32 @evconnlistener_free(i32) #1

declare dso_local i32 @mm_free(%struct.evhttp_bound_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
