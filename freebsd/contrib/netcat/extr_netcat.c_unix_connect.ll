; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_unix_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_unix_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@uflag = common dso_local global i64 0, align 8
@unix_dg_tmp_socket = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix_connect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @uflag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @unix_dg_tmp_socket, align 4
  %10 = call i32 @unix_bind(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %50

13:                                               ; preds = %8
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %50

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @F_SETFD, align 4
  %24 = load i32, i32* @FD_CLOEXEC, align 4
  %25 = call i32 @fcntl(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @memset(%struct.sockaddr_un* %4, i32 0, i32 8)
  %27 = load i32, i32* @AF_UNIX, align 4
  %28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strlcpy(i32 %30, i8* %31, i32 4)
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %38, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %50

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %42 = call i32 @SUN_LEN(%struct.sockaddr_un* %4)
  %43 = call i64 @connect(i32 %40, %struct.sockaddr* %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @close(i32 %46)
  store i32 -1, i32* %2, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %45, %35, %19, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @unix_bind(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @SUN_LEN(%struct.sockaddr_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
