; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_findlocalinterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_findlocalinterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Finding interface for addr %s in list of addresses\0A\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"findlocalinterface: kernel maps %s to %s\0A\00", align 1
@INT_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i32, i32)* @findlocalinterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @findlocalinterface(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32 @stoa(%struct.TYPE_12__* %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DPRINTF(i32 4, i8* %17)
  %19 = load i64, i64* @AF_UNSPEC, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i64 @AF(%struct.TYPE_12__* %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %103

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = call i64 @AF(%struct.TYPE_12__* %25)
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = call i64 @socket(i64 %26, i32 %27, i32 0)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* @INVALID_SOCKET, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %103

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  %37 = load i32, i32* @SOCKET_ERROR, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_BROADCAST, align 4
  %41 = bitcast i32* %13 to i8*
  %42 = call i32 @setsockopt(i64 %38, i32 %39, i32 %40, i8* %41, i32 4)
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @closesocket(i64 %45)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %103

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call i32 @SOCKLEN(%struct.TYPE_12__* %52)
  %54 = call i32 @connect(i64 %49, i32* %51, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @SOCKET_ERROR, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @closesocket(i64 %59)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %103

61:                                               ; preds = %48
  store i32 4, i32* %8, align 4
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %64 = call i32 @getsockname(i64 %62, i32* %63, i32* %8)
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @closesocket(i64 %65)
  %67 = load i32, i32* @SOCKET_ERROR, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %103

71:                                               ; preds = %61
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = call i32 @stoa(%struct.TYPE_12__* %72)
  %74 = call i32 @stoa(%struct.TYPE_12__* %10)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @DPRINTF(i32 4, i8* %76)
  %78 = load i32, i32* %6, align 4
  %79 = call %struct.TYPE_13__* @getinterface(%struct.TYPE_12__* %10, i32 %78)
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = icmp eq %struct.TYPE_13__* null, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %71
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @INT_LOOPBACK, align 4
  %90 = or i32 %88, %89
  %91 = call %struct.TYPE_13__* @findclosestinterface(%struct.TYPE_12__* %10, i32 %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %9, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = icmp ne %struct.TYPE_13__* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %101

101:                                              ; preds = %100, %95, %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %4, align 8
  br label %103

103:                                              ; preds = %101, %70, %58, %44, %32, %23
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %104
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(%struct.TYPE_12__*) #1

declare dso_local i64 @AF(%struct.TYPE_12__*) #1

declare dso_local i64 @socket(i64, i32, i32) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @connect(i64, i32*, i32) #1

declare dso_local i32 @SOCKLEN(%struct.TYPE_12__*) #1

declare dso_local i32 @getsockname(i64, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @getinterface(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @findclosestinterface(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
