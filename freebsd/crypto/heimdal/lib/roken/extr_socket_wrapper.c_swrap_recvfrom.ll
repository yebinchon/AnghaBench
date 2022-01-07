; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i32 }
%struct.socket_info = type { i32 }

@SWRAP_RECVFROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_recvfrom(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sockaddr_un, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 4, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.socket_info* @find_socket_info(i32 %18)
  store %struct.socket_info* %19, %struct.socket_info** %17, align 8
  %20 = load %struct.socket_info*, %struct.socket_info** %17, align 8
  %21 = icmp ne %struct.socket_info* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @real_recvfrom(i32 %23, i8* %24, i64 %25, i32 %26, %struct.sockaddr* %27, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %61

30:                                               ; preds = %6
  %31 = call i32 @memset(%struct.sockaddr_un* %14, i32 0, i32 4)
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = bitcast %struct.sockaddr_un* %14 to %struct.sockaddr*
  %37 = call i32 @real_recvfrom(i32 %32, i8* %33, i64 %34, i32 %35, %struct.sockaddr* %36, i32* %15)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %7, align 4
  br label %61

42:                                               ; preds = %30
  %43 = load %struct.socket_info*, %struct.socket_info** %17, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.socket_info*, %struct.socket_info** %17, align 8
  %46 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @sockaddr_convert_from_un(%struct.socket_info* %43, %struct.sockaddr_un* %14, i32 %44, i32 %47, %struct.sockaddr* %48, i32* %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %61

53:                                               ; preds = %42
  %54 = load %struct.socket_info*, %struct.socket_info** %17, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %56 = load i32, i32* @SWRAP_RECVFROM, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @swrap_dump_packet(%struct.socket_info* %54, %struct.sockaddr* %55, i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %52, %40, %22
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @sockaddr_convert_from_un(%struct.socket_info*, %struct.sockaddr_un*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, %struct.sockaddr*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
