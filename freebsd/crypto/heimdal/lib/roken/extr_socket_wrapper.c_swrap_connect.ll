; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_un = type { i32 }
%struct.socket_info = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SWRAP_CONNECT_SEND = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i64 0, align 8
@SWRAP_CONNECT_RECV = common dso_local global i32 0, align 4
@SWRAP_CONNECT_ACK = common dso_local global i32 0, align 4
@SWRAP_CONNECT_UNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  %10 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.socket_info* @find_socket_info(i32 %11)
  store %struct.socket_info* %12, %struct.socket_info** %10, align 8
  %13 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %14 = icmp ne %struct.socket_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @real_connect(i32 %16, %struct.sockaddr* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %22 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %27 = call i32 @swrap_auto_bind(%struct.socket_info* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %93

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %34 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @EINVAL, align 8
  store i64 %41, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %93

42:                                               ; preds = %32
  %43 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sockaddr_convert_to_un(%struct.socket_info* %43, %struct.sockaddr* %44, i32 %45, %struct.sockaddr_un* %9, i32 0, i32* null)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %93

50:                                               ; preds = %42
  %51 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %52 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %53 = load i32, i32* @SWRAP_CONNECT_SEND, align 4
  %54 = call i32 @swrap_dump_packet(%struct.socket_info* %51, %struct.sockaddr* %52, i32 %53, i32* null, i32 0)
  %55 = load i32, i32* %5, align 4
  %56 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %57 = call i32 @real_connect(i32 %55, %struct.sockaddr* %56, i32 4)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @EHOSTUNREACH, align 8
  store i64 %65, i64* @errno, align 8
  br label %66

66:                                               ; preds = %64, %60, %50
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %72 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @sockaddr_dup(%struct.sockaddr* %73, i32 %74)
  %76 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %77 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %79 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %80 = load i32, i32* @SWRAP_CONNECT_RECV, align 4
  %81 = call i32 @swrap_dump_packet(%struct.socket_info* %78, %struct.sockaddr* %79, i32 %80, i32* null, i32 0)
  %82 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %84 = load i32, i32* @SWRAP_CONNECT_ACK, align 4
  %85 = call i32 @swrap_dump_packet(%struct.socket_info* %82, %struct.sockaddr* %83, i32 %84, i32* null, i32 0)
  br label %91

86:                                               ; preds = %66
  %87 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %89 = load i32, i32* @SWRAP_CONNECT_UNREACH, align 4
  %90 = call i32 @swrap_dump_packet(%struct.socket_info* %87, %struct.sockaddr* %88, i32 %89, i32* null, i32 0)
  br label %91

91:                                               ; preds = %86, %69
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %49, %40, %30, %15
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @swrap_auto_bind(%struct.socket_info*) #1

declare dso_local i32 @sockaddr_convert_to_un(%struct.socket_info*, %struct.sockaddr*, i32, %struct.sockaddr_un*, i32, i32*) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, %struct.sockaddr*, i32, i32*, i32) #1

declare dso_local i32 @sockaddr_dup(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
