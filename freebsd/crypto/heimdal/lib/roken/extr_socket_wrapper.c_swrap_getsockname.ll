; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_getsockname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_getsockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.socket_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_getsockname(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.socket_info* @find_socket_info(i32 %9)
  store %struct.socket_info* %10, %struct.socket_info** %8, align 8
  %11 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %12 = icmp ne %struct.socket_info* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @real_getsockname(i32 %14, %struct.sockaddr* %15, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %21 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %24 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(%struct.sockaddr* %19, i32 %22, i32 %25)
  %27 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
