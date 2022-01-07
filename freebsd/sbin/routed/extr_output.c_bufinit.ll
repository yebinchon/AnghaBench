; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_bufinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_bufinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32* }

@RIPCMD_RESPONSE = common dso_local global i8* null, align 8
@ripv12_buf = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@v12buf = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@rip_v2_buf = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@RIPv2 = common dso_local global i32 0, align 4
@v2buf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufinit() #0 {
  %1 = load i8*, i8** @RIPCMD_RESPONSE, align 8
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ripv12_buf, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ripv12_buf, i32 0, i32 0), %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v12buf, i32 0, i32 0), align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v12buf, i32 0, i32 0), align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32* %5, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v12buf, i32 0, i32 1), align 8
  %6 = load i8*, i8** @RIPCMD_RESPONSE, align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rip_v2_buf, i32 0, i32 0, i32 2), align 8
  %7 = load i32, i32* @RIPv2, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rip_v2_buf, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rip_v2_buf, i32 0, i32 0), %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @v2buf, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @v2buf, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32* %11, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @v2buf, i32 0, i32 1), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
