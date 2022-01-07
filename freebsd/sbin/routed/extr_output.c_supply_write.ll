; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_supply_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_supply_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ws_buf = type { i32, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"skip multicast to %s because impossible\00", align 1
@ws = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RIP_AUTH_MD5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ws_buf*)* @supply_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @supply_write(%struct.ws_buf* %0) #0 {
  %2 = alloca %struct.ws_buf*, align 8
  store %struct.ws_buf* %0, %struct.ws_buf** %2, align 8
  %3 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %4 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %11 [
    i32 129, label %6
    i32 128, label %10
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 3, i32 0, i32 0), align 8
  %8 = call i32 @naddr_ntoa(i32 %7)
  %9 = call i32 @trace_pkt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %55

10:                                               ; preds = %1
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 0), align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RIP_AUTH_MD5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 0), align 8
  %23 = call i32 @end_md5_auth(%struct.ws_buf* %21, %struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %20, %14, %11
  %25 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %26 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 2), align 8
  %29 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %30 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %33 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %37 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = ptrtoint i8* %35 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @output(i32 %27, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 3), i32* %28, i64 %31, i32 %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %24
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 2), align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 2), align 8
  %51 = call i32 @if_sick(i32* %50)
  br label %52

52:                                               ; preds = %49, %46, %24
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 1), align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 1), align 8
  br label %55

55:                                               ; preds = %52, %10, %6
  %56 = load %struct.ws_buf*, %struct.ws_buf** %2, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ws, i32 0, i32 0), align 8
  %58 = call i32 @clr_ws_buf(%struct.ws_buf* %56, %struct.TYPE_9__* %57)
  ret void
}

declare dso_local i32 @trace_pkt(i8*, i32) #1

declare dso_local i32 @naddr_ntoa(i32) #1

declare dso_local i32 @end_md5_auth(%struct.ws_buf*, %struct.TYPE_9__*) #1

declare dso_local i32 @output(i32, %struct.TYPE_8__*, i32*, i64, i32) #1

declare dso_local i32 @if_sick(i32*) #1

declare dso_local i32 @clr_ws_buf(%struct.ws_buf*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
