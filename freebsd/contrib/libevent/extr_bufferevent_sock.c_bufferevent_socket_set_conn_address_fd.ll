; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_sock.c_bufferevent_socket_set_conn_address_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_sock.c_bufferevent_socket_set_conn_address_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_private = type { i32 }
%struct.sockaddr = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_private*, i32)* @bufferevent_socket_set_conn_address_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_socket_set_conn_address_fd(%struct.bufferevent_private* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.bufferevent_private* %0, %struct.bufferevent_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %7 = load %struct.bufferevent_private*, %struct.bufferevent_private** %3, align 8
  %8 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_UNSPEC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = call i32 @getpeername(i32 %16, %struct.sockaddr* %17, i32* %5)
  br label %19

19:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
