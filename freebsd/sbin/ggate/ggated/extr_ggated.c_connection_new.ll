; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggd_connection = type { i32, i32, i32, i32*, i32, i64, i64, i32, i32 }
%struct.g_gate_cinit = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GGATE_FLAG_SEND = common dso_local global i32 0, align 4
@connections = common dso_local global i32 0, align 4
@c_next = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Connection created [%s, %s].\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ggd_connection* (%struct.g_gate_cinit*, %struct.sockaddr*, i32)* @connection_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ggd_connection* @connection_new(%struct.g_gate_cinit* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.ggd_connection*, align 8
  %5 = alloca %struct.g_gate_cinit*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ggd_connection*, align 8
  %9 = alloca i32, align 4
  store %struct.g_gate_cinit* %0, %struct.g_gate_cinit** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @connection_cleanups()
  %11 = call %struct.ggd_connection* @malloc(i32 56)
  store %struct.ggd_connection* %11, %struct.ggd_connection** %8, align 8
  %12 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %13 = icmp eq %struct.ggd_connection* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.ggd_connection* null, %struct.ggd_connection** %4, align 8
  br label %87

15:                                               ; preds = %3
  %16 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %5, align 8
  %17 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @strdup(i32 %18)
  %20 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %21 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %23 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %28 = call i32 @free(%struct.ggd_connection* %27)
  store %struct.ggd_connection* null, %struct.ggd_connection** %4, align 8
  br label %87

29:                                               ; preds = %15
  %30 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %5, align 8
  %31 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %34 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = bitcast %struct.sockaddr* %35 to i8*
  %37 = bitcast i8* %36 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @htonl(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %44 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %46 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %48 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %5, align 8
  %50 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GGATE_FLAG_SEND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %58 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %29
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %62 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %65 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %67 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %69 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %68, i32 0, i32 4
  %70 = call i32 @time(i32* %69)
  %71 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %5, align 8
  %72 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %75 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %77 = load i32, i32* @c_next, align 4
  %78 = call i32 @LIST_INSERT_HEAD(i32* @connections, %struct.ggd_connection* %76, i32 %77)
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ip2str(i32 %80)
  %82 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  %83 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @g_gate_log(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81, i32* %84)
  %86 = load %struct.ggd_connection*, %struct.ggd_connection** %8, align 8
  store %struct.ggd_connection* %86, %struct.ggd_connection** %4, align 8
  br label %87

87:                                               ; preds = %63, %26, %14
  %88 = load %struct.ggd_connection*, %struct.ggd_connection** %4, align 8
  ret %struct.ggd_connection* %88
}

declare dso_local i32 @connection_cleanups(...) #1

declare dso_local %struct.ggd_connection* @malloc(i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @free(%struct.ggd_connection*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ggd_connection*, i32) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32, i32*) #1

declare dso_local i32 @ip2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
