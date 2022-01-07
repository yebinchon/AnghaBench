; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_fd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_fd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.sockaddr_in }
%struct.TYPE_9__ = type { i32*, i64, i64 }
%struct.TYPE_8__ = type { i32*, i64, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_storage = type { i64, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"svc_fd_create: could not retrieve local addr\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"svc_fd_create: no mem for local addr\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"svc_fd_create: could not retrieve remote addr\00", align 1
@rep = common dso_local global %struct.TYPE_12__* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svc_fd_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_11__* @makefd_xprt(i32 %15, i32 %16, i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %117

22:                                               ; preds = %3
  store i32 16, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = bitcast %struct.sockaddr_storage* %8 to i8*
  %25 = bitcast i8* %24 to %struct.sockaddr*
  %26 = call i64 @_getsockname(i32 %23, %struct.sockaddr* %25, i32* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %100

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i64 %32, i64* %38, align 8
  %39 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @mem_alloc(i64 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %100

53:                                               ; preds = %30
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memcpy(i32* %57, %struct.sockaddr_storage* %8, i64 %59)
  store i32 16, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = bitcast %struct.sockaddr_storage* %8 to i8*
  %63 = bitcast i8* %62 to %struct.sockaddr*
  %64 = call i64 @_getpeername(i32 %61, %struct.sockaddr* %63, i32* %9)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %100

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i64 %70, i64* %76, align 8
  %77 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @mem_alloc(i64 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %100

91:                                               ; preds = %68
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memcpy(i32* %95, %struct.sockaddr_storage* %8, i64 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %4, align 8
  br label %117

100:                                              ; preds = %89, %66, %51, %28
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rep, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mem_free(i32* %110, i32 %114)
  br label %116

116:                                              ; preds = %106, %100
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %117

117:                                              ; preds = %116, %91, %21
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @makefd_xprt(i32, i32, i32) #1

declare dso_local i64 @_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @mem_alloc(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @mem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
