; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_getpeername.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_getpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.socket_info = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_getpeername(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
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
  %17 = call i32 @real_getpeername(i32 %14, %struct.sockaddr* %15, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %20 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOTCONN, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %38

25:                                               ; preds = %18
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(%struct.sockaddr* %26, i32 %29, i32 %32)
  %34 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %35 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %23, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
