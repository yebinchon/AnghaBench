; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_heim_sipc_service_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_heim_sipc_service_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.client* }
%struct.client = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"/var/run/.heim_%s-socket\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOMAXCONN = common dso_local global i32 0, align 4
@HEIM_SIPC_TYPE_IPC = common dso_local global i32 0, align 4
@UNIX_SOCKET = common dso_local global i32 0, align 4
@LOCAL_CREDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_sipc_service_unix(i8* %0, i32 %1, i8* %2, %struct.TYPE_4__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.sockaddr_un, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.client*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__** %3, %struct.TYPE_4__*** %9, align 8
  %14 = load i32, i32* @AF_UNIX, align 4
  %15 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @snprintf(i32 %17, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %5, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @socket_set_reuseaddr(i32 %28, i32 1)
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @unlink(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = bitcast %struct.sockaddr_un* %10 to %struct.sockaddr*
  %35 = call i64 @bind(i32 %33, %struct.sockaddr* %34, i32 8)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %5, align 4
  br label %74

41:                                               ; preds = %27
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SOMAXCONN, align 4
  %44 = call i64 @listen(i32 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %5, align 4
  br label %74

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @chmod(i32 %52, i32 438)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @HEIM_SIPC_TYPE_IPC, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %59 = call i32 @heim_sipc_stream_listener(i32 %54, i32 %55, i32 %56, i8* %57, %struct.TYPE_4__** %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.client*, %struct.client** %65, align 8
  store %struct.client* %66, %struct.client** %13, align 8
  %67 = load i32, i32* @UNIX_SOCKET, align 4
  %68 = load %struct.client*, %struct.client** %13, align 8
  %69 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %62, %50
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %46, %37, %25
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @socket_set_reuseaddr(i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @heim_sipc_stream_listener(i32, i32, i32, i8*, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
