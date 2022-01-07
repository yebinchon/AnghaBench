; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_get_authentication_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_get_authentication_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@SSH_AUTHSOCKET_ENV_NAME = common dso_local global i32 0, align 4
@SSH_ERR_AGENT_NOT_PRESENT = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_get_authentication_socket(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_un, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  store i32 -1, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @SSH_AUTHSOCKET_ENV_NAME, align 4
  %14 = call i8* @getenv(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @SSH_ERR_AGENT_NOT_PRESENT, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %12
  %20 = call i32 @memset(%struct.sockaddr_un* %7, i32 0, i32 8)
  %21 = load i32, i32* @AF_UNIX, align 4
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlcpy(i32 %24, i8* %25, i32 4)
  %27 = load i32, i32* @AF_UNIX, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = call i32 @socket(i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @F_SETFD, align 4
  %36 = load i32, i32* @FD_CLOEXEC, align 4
  %37 = call i32 @fcntl(i32 %34, i32 %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %42 = call i64 @connect(i32 %40, %struct.sockaddr* %41, i32 8)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %33
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* @errno, align 4
  %49 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %49, i32* %2, align 4
  br label %60

50:                                               ; preds = %39
  %51 = load i32*, i32** %3, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  store i32 %54, i32* %55, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %44, %31, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
