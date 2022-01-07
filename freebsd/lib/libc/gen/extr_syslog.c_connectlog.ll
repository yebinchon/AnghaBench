; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_syslog.c_connectlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_syslog.c_connectlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@LogFile = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@NOCONN = common dso_local global i64 0, align 8
@_PATH_LOG_PRIV = common dso_local global i32 0, align 4
@CONNPRIV = common dso_local global i64 0, align 8
@_PATH_LOG = common dso_local global i32 0, align 4
@CONNDEF = common dso_local global i64 0, align 8
@_PATH_OLDLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @connectlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connectlog() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = load i32, i32* @LogFile, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32, i32* @AF_UNIX, align 4
  %6 = load i32, i32* @SOCK_DGRAM, align 4
  %7 = load i32, i32* @SOCK_CLOEXEC, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @_socket(i32 %5, i32 %8, i32 0)
  store i32 %9, i32* @LogFile, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %74

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %0
  %14 = load i32, i32* @LogFile, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %74

16:                                               ; preds = %13
  %17 = load i64, i64* @status, align 8
  %18 = load i64, i64* @NOCONN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 0
  store i32 12, i32* %21, align 4
  %22 = load i32, i32* @AF_UNIX, align 4
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @_PATH_LOG_PRIV, align 4
  %27 = call i32 @strncpy(i32 %25, i32 %26, i32 4)
  %28 = load i32, i32* @LogFile, align 4
  %29 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %30 = call i32 @_connect(i32 %28, %struct.sockaddr* %29, i32 12)
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i64, i64* @CONNPRIV, align 8
  store i64 %33, i64* @status, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i64, i64* @status, align 8
  %36 = load i64, i64* @NOCONN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @_PATH_LOG, align 4
  %42 = call i32 @strncpy(i32 %40, i32 %41, i32 4)
  %43 = load i32, i32* @LogFile, align 4
  %44 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %45 = call i32 @_connect(i32 %43, %struct.sockaddr* %44, i32 12)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @CONNDEF, align 8
  store i64 %48, i64* @status, align 8
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i64, i64* @status, align 8
  %52 = load i64, i64* @NOCONN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @_PATH_OLDLOG, align 4
  %58 = call i32 @strncpy(i32 %56, i32 %57, i32 4)
  %59 = load i32, i32* @LogFile, align 4
  %60 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %61 = call i32 @_connect(i32 %59, %struct.sockaddr* %60, i32 12)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @CONNDEF, align 8
  store i64 %64, i64* @status, align 8
  br label %65

65:                                               ; preds = %63, %54
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i64, i64* @status, align 8
  %68 = load i64, i64* @NOCONN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @LogFile, align 4
  %72 = call i32 @_close(i32 %71)
  store i32 -1, i32* @LogFile, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %11, %73, %16, %13
  ret void
}

declare dso_local i32 @_socket(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
