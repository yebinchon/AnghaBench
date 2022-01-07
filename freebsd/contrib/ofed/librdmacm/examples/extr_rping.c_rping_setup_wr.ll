; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__*, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i8* }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32 }

@IBV_WR_SEND = common dso_local global i32 0, align 4
@IBV_SEND_SIGNALED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rping_cb*)* @rping_setup_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rping_setup_wr(%struct.rping_cb* %0) #0 {
  %2 = alloca %struct.rping_cb*, align 8
  store %struct.rping_cb* %0, %struct.rping_cb** %2, align 8
  %3 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %4 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %3, i32 0, i32 11
  %5 = ptrtoint i32* %4 to i64
  %6 = inttoptr i64 %5 to i8*
  %7 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %8 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %6, i8** %9, align 8
  %10 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %11 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %14 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %13, i32 0, i32 10
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %19 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %22 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %21, i32 0, i32 9
  %23 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %24 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %27 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %30 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %29, i32 0, i32 7
  %31 = ptrtoint i32* %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %37 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %40 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %39, i32 0, i32 6
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %45 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @IBV_WR_SEND, align 4
  %48 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %49 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** @IBV_SEND_SIGNALED, align 8
  %52 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %53 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %56 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %55, i32 0, i32 5
  %57 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %58 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %59, align 8
  %60 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %61 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %64 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %68 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %71 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %70, i32 0, i32 2
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %76 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i8*, i8** @IBV_SEND_SIGNALED, align 8
  %79 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %80 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %83 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %82, i32 0, i32 1
  %84 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %85 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %86, align 8
  %87 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %88 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
