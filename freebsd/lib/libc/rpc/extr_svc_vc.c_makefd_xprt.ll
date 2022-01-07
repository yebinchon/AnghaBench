; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_makefd_xprt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_makefd_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, %struct.cf_conn* }
%struct.TYPE_9__ = type { i32 }
%struct.cf_conn = type { i32, i32, i32 }
%struct.__rpc_sockinfo = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"svc_vc: makefd_xprt: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"svc_tcp: makefd_xprt: out of memory\00", align 1
@XPRT_IDLE = common dso_local global i32 0, align 4
@read_vc = common dso_local global i32 0, align 4
@write_vc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i32, i32)* @makefd_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @makefd_xprt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.cf_conn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__rpc_sockinfo, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call %struct.TYPE_10__* (...) @svc_xprt_alloc()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %70

20:                                               ; preds = %3
  %21 = call %struct.cf_conn* @mem_alloc(i32 12)
  store %struct.cf_conn* %21, %struct.cf_conn** %8, align 8
  %22 = load %struct.cf_conn*, %struct.cf_conn** %8, align 8
  %23 = icmp eq %struct.cf_conn* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call i32 @svc_xprt_free(%struct.TYPE_10__* %26)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %70

28:                                               ; preds = %20
  %29 = load i32, i32* @XPRT_IDLE, align 4
  %30 = load %struct.cf_conn*, %struct.cf_conn** %8, align 8
  %31 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cf_conn*, %struct.cf_conn** %8, align 8
  %33 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %32, i32 0, i32 1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = load i32, i32* @read_vc, align 4
  %38 = load i32, i32* @write_vc, align 4
  %39 = call i32 @xdrrec_create(i32* %33, i32 %34, i32 %35, %struct.TYPE_10__* %36, i32 %37, i32 %38)
  %40 = load %struct.cf_conn*, %struct.cf_conn** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  store %struct.cf_conn* %40, %struct.cf_conn** %42, align 8
  %43 = load %struct.cf_conn*, %struct.cf_conn** %8, align 8
  %44 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = call i32 @svc_vc_ops(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @__rpc_fd2sockinfo(i32 %56, %struct.__rpc_sockinfo* %10)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %28
  %60 = call i64 @__rpc_sockinfo2netid(%struct.__rpc_sockinfo* %10, i8** %9)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strdup(i8* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %59, %28
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = call i32 @xprt_register(%struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %67, %24, %18
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @svc_xprt_alloc(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.cf_conn* @mem_alloc(i32) #1

declare dso_local i32 @svc_xprt_free(%struct.TYPE_10__*) #1

declare dso_local i32 @xdrrec_create(i32*, i32, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @svc_vc_ops(%struct.TYPE_10__*) #1

declare dso_local i64 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i64 @__rpc_sockinfo2netid(%struct.__rpc_sockinfo*, i8**) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @xprt_register(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
