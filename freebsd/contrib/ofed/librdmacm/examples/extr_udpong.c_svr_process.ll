; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.message = type { i32, i64, i32 }
%union.socket_addr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"client login from %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i64, %union.socket_addr*, i32)* @svr_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svr_process(%struct.message* %0, i64 %1, %union.socket_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.socket_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.socket_addr* %2, %union.socket_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.message*, %struct.message** %6, align 8
  %13 = getelementptr inbounds %struct.message, %struct.message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %73 [
    i32 129, label %15
    i32 128, label %46
    i32 131, label %53
    i32 130, label %62
  ]

15:                                               ; preds = %4
  %16 = load %union.socket_addr*, %union.socket_addr** %8, align 8
  %17 = bitcast %union.socket_addr* %16 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AF_INET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %union.socket_addr*, %union.socket_addr** %8, align 8
  %25 = bitcast %union.socket_addr* %24 to %struct.TYPE_10__*
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %29 = call i8* @inet_ntop(i32 %23, i32* %27, i8* %28, i32 64)
  %30 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %40

31:                                               ; preds = %15
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = load %union.socket_addr*, %union.socket_addr** %8, align 8
  %34 = bitcast %union.socket_addr* %33 to %struct.TYPE_12__*
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %38 = call i8* @inet_ntop(i32 %32, i32* %36, i8* %37, i32 64)
  %39 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* @id, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @id, align 4
  %43 = sext i32 %41 to i64
  %44 = load %struct.message*, %struct.message** %6, align 8
  %45 = getelementptr inbounds %struct.message, %struct.message* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %4, %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @clients, align 8
  %48 = load %struct.message*, %struct.message** %6, align 8
  %49 = getelementptr inbounds %struct.message, %struct.message* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %50
  %52 = call i32 @memset(%struct.TYPE_13__* %51, i32 0, i32 4)
  br label %82

53:                                               ; preds = %4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** @clients, align 8
  %55 = load %struct.message*, %struct.message** %6, align 8
  %56 = getelementptr inbounds %struct.message, %struct.message* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %82

62:                                               ; preds = %4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** @clients, align 8
  %64 = load %struct.message*, %struct.message** %6, align 8
  %65 = getelementptr inbounds %struct.message, %struct.message* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @htobe32(i32 %69)
  %71 = load %struct.message*, %struct.message** %6, align 8
  %72 = getelementptr inbounds %struct.message, %struct.message* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %82

73:                                               ; preds = %4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @clients, align 8
  %75 = load %struct.message*, %struct.message** %6, align 8
  %76 = getelementptr inbounds %struct.message, %struct.message* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %97

82:                                               ; preds = %62, %53, %46
  %83 = load %struct.message*, %struct.message** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %union.socket_addr*, %union.socket_addr** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @svr_send(%struct.message* %83, i64 %84, %union.socket_addr* %85, i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %95

92:                                               ; preds = %82
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  br label %95

95:                                               ; preds = %92, %91
  %96 = phi i32 [ 0, %91 ], [ %94, %92 ]
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %73
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i64 @svr_send(%struct.message*, i64, %union.socket_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
