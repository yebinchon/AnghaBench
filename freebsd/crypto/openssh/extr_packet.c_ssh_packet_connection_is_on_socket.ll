; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_connection_is_on_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_connection_is_on_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_connection_is_on_socket(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.session_state*, align 8
  %5 = alloca %struct.sockaddr_storage, align 8
  %6 = alloca %struct.sockaddr_storage, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %9 = load %struct.ssh*, %struct.ssh** %3, align 8
  %10 = icmp eq %struct.ssh* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.ssh*, %struct.ssh** %3, align 8
  %13 = getelementptr inbounds %struct.ssh, %struct.ssh* %12, i32 0, i32 0
  %14 = load %struct.session_state*, %struct.session_state** %13, align 8
  %15 = icmp eq %struct.session_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %79

17:                                               ; preds = %11
  %18 = load %struct.ssh*, %struct.ssh** %3, align 8
  %19 = getelementptr inbounds %struct.ssh, %struct.ssh* %18, i32 0, i32 0
  %20 = load %struct.session_state*, %struct.session_state** %19, align 8
  store %struct.session_state* %20, %struct.session_state** %4, align 8
  %21 = load %struct.session_state*, %struct.session_state** %4, align 8
  %22 = getelementptr inbounds %struct.session_state, %struct.session_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.session_state*, %struct.session_state** %4, align 8
  %27 = getelementptr inbounds %struct.session_state, %struct.session_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %17
  store i32 0, i32* %2, align 4
  br label %79

31:                                               ; preds = %25
  %32 = load %struct.session_state*, %struct.session_state** %4, align 8
  %33 = getelementptr inbounds %struct.session_state, %struct.session_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.session_state*, %struct.session_state** %4, align 8
  %36 = getelementptr inbounds %struct.session_state, %struct.session_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %79

40:                                               ; preds = %31
  store i32 8, i32* %7, align 4
  %41 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 8)
  %42 = load %struct.session_state*, %struct.session_state** %4, align 8
  %43 = getelementptr inbounds %struct.session_state, %struct.session_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %46 = call i64 @getpeername(i32 %44, %struct.sockaddr* %45, i32* %7)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %79

49:                                               ; preds = %40
  store i32 8, i32* %8, align 4
  %50 = call i32 @memset(%struct.sockaddr_storage* %6, i32 0, i32 8)
  %51 = load %struct.session_state*, %struct.session_state** %4, align 8
  %52 = getelementptr inbounds %struct.session_state, %struct.session_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %55 = call i64 @getpeername(i32 %53, %struct.sockaddr* %54, i32* %8)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %79

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @memcmp(%struct.sockaddr_storage* %5, %struct.sockaddr_storage* %6, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  store i32 0, i32* %2, align 4
  br label %79

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AF_INET6, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %79

78:                                               ; preds = %72, %67
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %66, %57, %48, %39, %30, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @memcmp(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
