; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_networking.c_sendpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_networking.c_sendpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pkt = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"sntp sendpkt: Sending packet to %s ...\0A\00", align 1
@SOCKET_ERROR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Send to %s failed, %m\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Packet sent.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendpkt(i32 %0, %struct.TYPE_5__* %1, %struct.pkt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store %struct.pkt* %2, %struct.pkt** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = call i32 @sptoa(%struct.TYPE_5__* %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @TRACE(i32 1, i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pkt*, %struct.pkt** %8, align 8
  %18 = bitcast %struct.pkt* %17 to i8*
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = call i32 @SOCKLEN(%struct.TYPE_5__* %22)
  %24 = call i32 @sendto(i32 %16, i8* %18, i32 %19, i32 0, i32* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @SOCKET_ERROR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = call i32 @sptoa(%struct.TYPE_5__* %30)
  %32 = call i32 @msyslog(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %4
  %35 = call i32 @TRACE(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @sptoa(%struct.TYPE_5__*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @SOCKLEN(%struct.TYPE_5__*) #1

declare dso_local i32 @msyslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
