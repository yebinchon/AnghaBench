; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_make_signal_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_make_signal_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"socket AF_UNIX\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bind %s\00", align 1
@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @make_signal_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_signal_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @kadm5_log_signal_socket(i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* @AF_UNIX, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i64 @socket(i32 %8, i32 %9, i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %14, i32 1, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %1
  %18 = call i32 @memset(%struct.sockaddr_un* %3, i32 0, i32 8)
  %19 = load i32, i32* @AF_UNIX, align 4
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlcpy(i32 %22, i8* %23, i32 4)
  %25 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @unlink(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %30 = call i64 @bind(i64 %28, %struct.sockaddr* %29, i32 8)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %33, i32 1, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %17
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i8* @kadm5_log_signal_socket(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
