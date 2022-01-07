; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_wait_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_wait_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to build socket for %s's logging port\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to bind %s's logging port\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to listen %s's logging port\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to get address of local socket for %s\00", align 1
@eSetLoggingSocket = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to accept local socket for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*)* @wait_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_log(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %2, align 8
  store i32 4, i32* %5, align 4
  %9 = call i32 @memset(%struct.sockaddr_storage* %4, i32 0, i32 4)
  %10 = load %struct.client*, %struct.client** %2, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 4, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.client*, %struct.client** %2, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = call i32 @socket(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.client*, %struct.client** %2, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.client*, %struct.client** %2, align 8
  %33 = getelementptr inbounds %struct.client, %struct.client* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %41 = load %struct.client*, %struct.client** %2, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bind(i32 %39, %struct.sockaddr* %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.client*, %struct.client** %2, align 8
  %49 = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %31
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SOMAXCONN, align 4
  %55 = call i64 @listen(i32 %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.client*, %struct.client** %2, align 8
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  store i32 4, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %65 = call i32 @getsockname(i32 %63, %struct.sockaddr* %64, i32* %5)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.client*, %struct.client** %2, align 8
  %70 = getelementptr inbounds %struct.client, %struct.client* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %75 = call i32 @socket_get_port(%struct.sockaddr* %74)
  store i32 %75, i32* %3, align 4
  %76 = load %struct.client*, %struct.client** %2, align 8
  %77 = load i32, i32* @eSetLoggingSocket, align 4
  %78 = call i32 @put32(%struct.client* %76, i32 %77)
  %79 = load %struct.client*, %struct.client** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ntohs(i32 %80)
  %82 = call i32 @put32(%struct.client* %79, i32 %81)
  store i32 4, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %85 = call i32 @accept(i32 %83, %struct.sockaddr* %84, i32* %5)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.client*, %struct.client** %2, align 8
  %90 = getelementptr inbounds %struct.client, %struct.client* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %73
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @socket_get_port(%struct.sockaddr*) #1

declare dso_local i32 @put32(%struct.client*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
