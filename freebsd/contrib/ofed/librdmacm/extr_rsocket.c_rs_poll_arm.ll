; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_arm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i64, i32, i32 }
%struct.rsocket = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@idm = common dso_local global i32 0, align 4
@rs_is_cq_armed = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_connected = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, %struct.pollfd*, i32)* @rs_poll_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_poll_arm(%struct.pollfd* %0, %struct.pollfd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca %struct.pollfd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store %struct.pollfd* %1, %struct.pollfd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %131, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %134

14:                                               ; preds = %10
  %15 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i64 %17
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %20)
  store %struct.rsocket* %21, %struct.rsocket** %8, align 8
  %22 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %23 = icmp ne %struct.rsocket* %22, null
  br i1 %23, label %24, label %102

24:                                               ; preds = %14
  %25 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %26 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i64 %28
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @rs_is_cq_armed, align 4
  %33 = call i64 @rs_poll_rs(%struct.rsocket* %25, i32 %31, i32 0, i32 %32)
  %34 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i64 %36
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i64 %41
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %135

47:                                               ; preds = %24
  %48 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %49 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SOCK_STREAM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  %54 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %55 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @rs_connected, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %61 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i64 %69
  %71 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 4
  br label %85

72:                                               ; preds = %53
  %73 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %74 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %80, i64 %82
  %84 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %59
  br label %95

86:                                               ; preds = %47
  %87 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %88 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %90, i64 %92
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i32 0, i32 2
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %85
  %96 = load i32, i32* @POLLIN, align 4
  %97 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %97, i64 %99
  %101 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 8
  br label %125

102:                                              ; preds = %14
  %103 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %103, i64 %105
  %107 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %109, i64 %111
  %113 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %112, i32 0, i32 2
  store i32 %108, i32* %113, align 4
  %114 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %114, i64 %116
  %118 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %120, i64 %122
  %124 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 8
  br label %125

125:                                              ; preds = %102, %95
  %126 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %126, i64 %128
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %10

134:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %46
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i64 @rs_poll_rs(%struct.rsocket*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
