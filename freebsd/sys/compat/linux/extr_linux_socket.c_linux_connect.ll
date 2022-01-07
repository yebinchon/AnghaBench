; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_connect_args = type { i32, i32, i32 }
%struct.socket = type { i32, i8* }
%struct.sockaddr = type { i32 }
%struct.file = type { %struct.socket* }

@AT_FDCWD = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@cap_connect_rights = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_connect(%struct.thread* %0, %struct.linux_connect_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_connect_args*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_connect_args* %1, %struct.linux_connect_args** %5, align 8
  %11 = load %struct.linux_connect_args*, %struct.linux_connect_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_connect_args, %struct.linux_connect_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PTRIN(i32 %13)
  %15 = load %struct.linux_connect_args*, %struct.linux_connect_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_connect_args, %struct.linux_connect_args* %15, i32 0, i32 1
  %17 = call i32 @linux_to_bsd_sockaddr(i32 %14, %struct.sockaddr** %7, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load i32, i32* @AT_FDCWD, align 4
  %25 = load %struct.linux_connect_args*, %struct.linux_connect_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_connect_args, %struct.linux_connect_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = call i32 @kern_connectat(%struct.thread* %23, i32 %24, i32 %27, %struct.sockaddr* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = load i32, i32* @M_SONAME, align 4
  %32 = call i32 @free(%struct.sockaddr* %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EISCONN, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %22
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = load %struct.linux_connect_args*, %struct.linux_connect_args** %5, align 8
  %41 = getelementptr inbounds %struct.linux_connect_args, %struct.linux_connect_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @getsock_cap(%struct.thread* %39, i32 %42, i32* @cap_connect_rights, %struct.file** %8, i32* %9, i32* null)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %38
  %49 = load i32, i32* @EISCONN, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.file*, %struct.file** %8, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load %struct.socket*, %struct.socket** %51, align 8
  store %struct.socket* %52, %struct.socket** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @FNONBLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load %struct.socket*, %struct.socket** %6, align 8
  %59 = call i32 @SOCK_LOCK(%struct.socket* %58)
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.socket*, %struct.socket** %6, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.socket*, %struct.socket** %6, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %70, align 8
  %71 = load %struct.socket*, %struct.socket** %6, align 8
  %72 = call i32 @SOCK_UNLOCK(%struct.socket* %71)
  br label %73

73:                                               ; preds = %68, %48
  %74 = load %struct.file*, %struct.file** %8, align 8
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = call i32 @fdrop(%struct.file* %74, %struct.thread* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %46, %36, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @linux_to_bsd_sockaddr(i32, %struct.sockaddr**, i32*) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @kern_connectat(%struct.thread*, i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
