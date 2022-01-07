; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_getdatasock.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_getdatasock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@data = common dso_local global i64 0, align 8
@data_dest = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"data setsockopt (SO_REUSEADDR): %m\00", align 1
@data_source = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ctrl_addr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dataport = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_5__* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@TCP_NOPUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @getdatasock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getdatasock(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load i64, i64* @data, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* @data, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fdopen(i32 %12, i8* %13)
  store i32* %14, i32** %2, align 8
  br label %72

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data_dest, i32 0, i32 0), align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SOL_SOCKET, align 4
  %25 = load i32, i32* @SO_REUSEADDR, align 4
  %26 = call i64 @setsockopt(i32 %23, i32 %24, i32 %25, i32* %4, i32 4)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = call i32 @syslog(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @data_source to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @ctrl_addr to i8*), i64 16, i1 false)
  %32 = load i32, i32* @dataport, align 4
  %33 = call i32 @htons(i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @data_source, i32 0, i32 2), align 4
  %34 = call i32 @seteuid(i32 0)
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %52, %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @data_source, i32 0, i32 1), align 8
  %38 = call i64 @bind(i32 %36, %struct.sockaddr* bitcast (%struct.TYPE_6__* @data_source to %struct.sockaddr*), i32 %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %55

41:                                               ; preds = %35
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EADDRINUSE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41
  br label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @sleep(i32 %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %35

55:                                               ; preds = %40
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @seteuid(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32* @fdopen(i32 %60, i8* %61)
  store i32* %62, i32** %2, align 8
  br label %72

63:                                               ; preds = %48, %21
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @seteuid(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* @errno, align 4
  store i32* null, i32** %2, align 8
  br label %72

72:                                               ; preds = %63, %55, %10
  %73 = load i32*, i32** %2, align 8
  ret i32* %73
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @seteuid(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
