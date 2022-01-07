; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_setup_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_setup_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@TCP_SIDE_SERVER_LISTEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tcp:port\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to set TCP_NOELAY\00", align 1
@TCP_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.tcp_ctx**)* @tcp_setup_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_setup_new(i8* %0, i32 %1, %struct.tcp_ctx** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_ctx**, align 8
  %8 = alloca %struct.tcp_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcp_ctx** %2, %struct.tcp_ctx*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TCP_SIDE_SERVER_LISTEN, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ true, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.tcp_ctx**, %struct.tcp_ctx*** %7, align 8
  %27 = icmp ne %struct.tcp_ctx** %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @PJDLOG_ASSERT(i32 %28)
  %30 = call %struct.tcp_ctx* @malloc(i32 24)
  store %struct.tcp_ctx* %30, %struct.tcp_ctx** %8, align 8
  %31 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %32 = icmp eq %struct.tcp_ctx* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @atoi(i32 %37)
  %39 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %39, i32 0, i32 4
  %41 = call i32 @tcp_addr(i8* %36, i32 %38, %struct.TYPE_2__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %46 = call i32 @free(%struct.tcp_ctx* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %35
  %49 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_UNSPEC, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @PJDLOG_ASSERT(i32 %55)
  %57 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @SOCK_STREAM, align 4
  %62 = call i32 @socket(i64 %60, i32 %61, i32 0)
  %63 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %74

69:                                               ; preds = %48
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %9, align 4
  %71 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %72 = call i32 @free(%struct.tcp_ctx* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %48
  %75 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AF_UNSPEC, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @PJDLOG_ASSERT(i32 %81)
  store i32 1, i32* %10, align 4
  %83 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IPPROTO_TCP, align 4
  %87 = load i32, i32* @TCP_NODELAY, align 4
  %88 = call i32 @setsockopt(i32 %85, i32 %86, i32 %87, i32* %10, i32 4)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* @LOG_WARNING, align 4
  %92 = call i32 @pjdlog_errno(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %74
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @TCP_CTX_MAGIC, align 4
  %105 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %108 = load %struct.tcp_ctx**, %struct.tcp_ctx*** %7, align 8
  store %struct.tcp_ctx* %107, %struct.tcp_ctx** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %93, %69, %44, %33
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.tcp_ctx* @malloc(i32) #1

declare dso_local i32 @tcp_addr(i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @proto_get(i8*) #1

declare dso_local i32 @free(%struct.tcp_ctx*) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
