; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_perform_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_perform_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_3__*, i32, i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"accept failed\00", align 1
@comm_tcp_accept = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"accept rejected\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"connection limit exceeded\00", align 1
@ECONNABORTED = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@NETEVENT_SLOW_ACCEPT_TIME = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i32 0, align 4
@UB_EV_TIMEOUT = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@comm_base_handle_slow_accept = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comm_point_perform_accept(%struct.comm_point* %0, %struct.sockaddr_storage* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  store i64 4, i64* %9, align 8
  %10 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %11 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 @accept(i32 %12, %struct.sockaddr* %14, i64* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EAGAIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 -1, i32* %4, align 4
  br label %77

28:                                               ; preds = %23
  %29 = load i64, i64* @errno, align 8
  %30 = call i8* @strerror(i64 %29)
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @log_err_addr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %30, %struct.sockaddr_storage* %31, i64 %33)
  store i32 -1, i32* %4, align 4
  br label %77

35:                                               ; preds = %3
  %36 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @comm_tcp_accept, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %40
  %47 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @tcl_addr_lookup(i64 %49, %struct.sockaddr_storage* %50, i64 %52)
  %54 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %57 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tcl_new_connection(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 3
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @log_err_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.sockaddr_storage* %65, i64 %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @close(i32 %70)
  store i32 -1, i32* %4, align 4
  br label %77

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72, %40, %35
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @fd_set_nonblock(i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %69, %28, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i64*) #1

declare dso_local i32 @log_err_addr(i8*, i8*, %struct.sockaddr_storage*, i64) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @tcl_addr_lookup(i64, %struct.sockaddr_storage*, i64) #1

declare dso_local i32 @tcl_new_connection(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
