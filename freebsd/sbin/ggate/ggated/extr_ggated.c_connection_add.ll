; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggd_connection = type { i32, i32, i32 }
%struct.g_gate_cinit = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GGATE_FLAG_SEND = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Send socket already exists [%s, %s].\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Receive socket already exists [%s, %s].\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Connection added [%s, %s].\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ggd_connection*, %struct.g_gate_cinit*, %struct.sockaddr*, i32)* @connection_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connection_add(%struct.ggd_connection* %0, %struct.g_gate_cinit* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ggd_connection*, align 8
  %7 = alloca %struct.g_gate_cinit*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ggd_connection* %0, %struct.ggd_connection** %6, align 8
  store %struct.g_gate_cinit* %1, %struct.g_gate_cinit** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %12 = bitcast %struct.sockaddr* %11 to i8*
  %13 = bitcast i8* %12 to %struct.sockaddr_in*
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @htonl(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %7, align 8
  %19 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GGATE_FLAG_SEND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %4
  %25 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %26 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @LOG_WARNING, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ip2str(i32 %31)
  %33 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %34 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @g_gate_log(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @EEXIST, align 4
  store i32 %37, i32* %5, align 4
  br label %68

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %41 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %60

42:                                               ; preds = %4
  %43 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %44 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ip2str(i32 %49)
  %51 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %52 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @g_gate_log(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* @EEXIST, align 4
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %59 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %38
  %61 = load i32, i32* @LOG_DEBUG, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ip2str(i32 %62)
  %64 = load %struct.ggd_connection*, %struct.ggd_connection** %6, align 8
  %65 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @g_gate_log(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %47, %29
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32, i32) #1

declare dso_local i32 @ip2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
