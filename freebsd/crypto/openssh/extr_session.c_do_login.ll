; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.ssh = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, %struct.passwd* }
%struct.TYPE_6__ = type { i64 }
%struct.passwd = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"getpeername: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@use_privsep = common dso_local global i32 0, align 4
@utmp_len = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_login(%struct.ssh* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.passwd*, %struct.passwd** %12, align 8
  store %struct.passwd* %13, %struct.passwd** %9, align 8
  %14 = call i32 (...) @getpid()
  store i32 %14, i32* %10, align 4
  %15 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 4)
  store i32 4, i32* %7, align 4
  %16 = call i64 (...) @packet_connection_is_on_socket()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = call i32 (...) @packet_get_connection_in()
  %20 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %21 = call i64 @getpeername(i32 %19, %struct.sockaddr* %20, i32* %7)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @cleanup_exit(i32 255)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* @use_privsep, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.passwd*, %struct.passwd** %9, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.passwd*, %struct.passwd** %9, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ssh*, %struct.ssh** %4, align 8
  %44 = load i32, i32* @utmp_len, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 1), align 8
  %46 = call i32 @session_get_remote_name_or_ip(%struct.ssh* %43, i32 %44, i32 %45)
  %47 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @record_login(i32 %33, i32 %36, i32 %39, i32 %42, i32 %46, %struct.sockaddr* %47, i32 %48)
  br label %50

50:                                               ; preds = %32, %29
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @check_quietlogin(%struct.TYPE_7__* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  %57 = call i32 (...) @display_loginmsg()
  %58 = call i32 (...) @do_motd()
  br label %59

59:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @packet_connection_is_on_socket(...) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @packet_get_connection_in(...) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @record_login(i32, i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @session_get_remote_name_or_ip(%struct.ssh*, i32, i32) #1

declare dso_local i64 @check_quietlogin(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @display_loginmsg(...) #1

declare dso_local i32 @do_motd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
