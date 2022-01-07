; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_incoming.c_serf_incoming_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_incoming.c_serf_incoming_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32*, i32, i8*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 (i32, %struct.TYPE_14__*, %struct.TYPE_15__*)* }

@SERF_IO_CLIENT = common dso_local global i32 0, align 4
@APR_POLL_SOCKET = common dso_local global i32 0, align 4
@APR_POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf_incoming_create(%struct.TYPE_12__** %0, %struct.TYPE_13__* %1, i32* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = call %struct.TYPE_12__* @apr_palloc(i32* %15, i32 72)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %14, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %19, align 8
  %20 = load i32, i32* @SERF_IO_CLIENT, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @APR_POLL_SOCKET, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32* %44, i32** %48, align 8
  %49 = load i32, i32* @APR_POLLIN, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32 (i32, %struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, %struct.TYPE_15__*)** %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = call i32 %55(i32 %58, %struct.TYPE_14__* %60, %struct.TYPE_15__* %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %65, align 8
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_12__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
