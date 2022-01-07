; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_setup_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_setup_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@TCP_SIDE_SERVER_LISTEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROTO_TCP_DEFAULT_PORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to set TCP_NOELAY\00", align 1
@TCP_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @tcp_setup_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_setup_new(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tcp_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
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
  %26 = load i8**, i8*** %7, align 8
  %27 = icmp ne i8** %26, null
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
  br label %101

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @PROTO_TCP_DEFAULT_PORT, align 4
  %38 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %38, i32 0, i32 3
  %40 = call i32 @tcp_addr(i8* %36, i32 %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %44 = call i32 @free(%struct.tcp_ctx* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %101

46:                                               ; preds = %35
  %47 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_UNSPEC, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @PJDLOG_ASSERT(i32 %53)
  %55 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @SOCK_STREAM, align 4
  %60 = call i32 @socket(i64 %58, i32 %59, i32 0)
  %61 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %70 = call i32 @free(%struct.tcp_ctx* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %101

72:                                               ; preds = %46
  %73 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AF_UNSPEC, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @PJDLOG_ASSERT(i32 %79)
  store i32 1, i32* %10, align 4
  %81 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IPPROTO_TCP, align 4
  %85 = load i32, i32* @TCP_NODELAY, align 4
  %86 = call i32 @setsockopt(i32 %83, i32 %84, i32 %85, i32* %10, i32 4)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @LOG_WARNING, align 4
  %90 = call i32 @pjdlog_errno(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %72
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @TCP_CTX_MAGIC, align 4
  %96 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %99 = bitcast %struct.tcp_ctx* %98 to i8*
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %67, %42, %33
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.tcp_ctx* @malloc(i32) #1

declare dso_local i32 @tcp_addr(i8*, i32, %struct.TYPE_2__*) #1

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
