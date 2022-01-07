; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_new_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_new_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.event_base = type { i32 }
%struct.sockaddr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_EXEC = common dso_local global i32 0, align 4
@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE_PORT = common dso_local global i32 0, align 4
@LEV_OPT_DEFERRED_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca %struct.evconnlistener*, align 8
  %9 = alloca %struct.event_base*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.evconnlistener*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.sockaddr* %5, %struct.sockaddr** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %18, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %22 = icmp ne %struct.sockaddr* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @AF_UNSPEC, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %121

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @LEV_OPT_CLOSE_ON_EXEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %44 = load i32, i32* %20, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %20, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @evutil_socket_(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %121

53:                                               ; preds = %46
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @SOL_SOCKET, align 4
  %56 = load i32, i32* @SO_KEEPALIVE, align 4
  %57 = bitcast i32* %18 to i8*
  %58 = call i64 @setsockopt(i32 %54, i32 %55, i32 %56, i8* %57, i32 4)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %118

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @evutil_make_listen_socket_reuseable(i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %118

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @LEV_OPT_REUSEABLE_PORT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @evutil_make_listen_socket_reuseable_port(i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %118

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @LEV_OPT_DEFERRED_ACCEPT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @evutil_make_tcp_listen_socket_deferred(i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %118

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %83
  %95 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %96 = icmp ne %struct.sockaddr* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @bind(i32 %98, %struct.sockaddr* %99, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %118

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.event_base*, %struct.event_base** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call %struct.evconnlistener* @evconnlistener_new(%struct.event_base* %106, i32 %107, i8* %108, i32 %109, i32 %110, i32 %111)
  store %struct.evconnlistener* %112, %struct.evconnlistener** %16, align 8
  %113 = load %struct.evconnlistener*, %struct.evconnlistener** %16, align 8
  %114 = icmp ne %struct.evconnlistener* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %118

116:                                              ; preds = %105
  %117 = load %struct.evconnlistener*, %struct.evconnlistener** %16, align 8
  store %struct.evconnlistener* %117, %struct.evconnlistener** %8, align 8
  br label %121

118:                                              ; preds = %115, %103, %92, %81, %70, %60
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @evutil_closesocket(i32 %119)
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %121

121:                                              ; preds = %118, %116, %52, %36
  %122 = load %struct.evconnlistener*, %struct.evconnlistener** %8, align 8
  ret %struct.evconnlistener* %122
}

declare dso_local i32 @evutil_socket_(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @evutil_make_listen_socket_reuseable(i32) #1

declare dso_local i64 @evutil_make_listen_socket_reuseable_port(i32) #1

declare dso_local i64 @evutil_make_tcp_listen_socket_deferred(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local %struct.evconnlistener* @evconnlistener_new(%struct.event_base*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
