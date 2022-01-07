; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_mm_record_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_mm_record_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.passwd = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@active_state = common dso_local global %struct.ssh* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"getpeername: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@utmp_len = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.passwd*)* @mm_record_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_record_login(%struct.TYPE_4__* %0, %struct.passwd* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.passwd* %1, %struct.passwd** %4, align 8
  %8 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %8, %struct.ssh** %5, align 8
  %9 = call i32 @memset(%struct.sockaddr_storage* %7, i32 0, i32 4)
  store i32 4, i32* %6, align 4
  %10 = call i64 (...) @packet_connection_is_on_socket()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = call i32 (...) @packet_get_connection_in()
  %14 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %15 = call i64 @getpeername(i32 %13, %struct.sockaddr* %14, i32* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @cleanup_exit(i32 255)
  br label %22

22:                                               ; preds = %17, %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.passwd*, %struct.passwd** %4, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.passwd*, %struct.passwd** %4, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ssh*, %struct.ssh** %5, align 8
  %37 = load i32, i32* @utmp_len, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 4
  %39 = call i32 @session_get_remote_name_or_ip(%struct.ssh* %36, i32 %37, i32 %38)
  %40 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @record_login(i32 %26, i32 %29, i32 %32, i32 %35, i32 %39, %struct.sockaddr* %40, i32 %41)
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @packet_connection_is_on_socket(...) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @packet_get_connection_in(...) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @record_login(i32, i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @session_get_remote_name_or_ip(%struct.ssh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
