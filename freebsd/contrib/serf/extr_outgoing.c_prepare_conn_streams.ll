; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_prepare_conn_streams.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_prepare_conn_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32, i32, i32*, i32*, i32*, i64, i64 }

@SERF_CONN_CONNECTED = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32**, i32**, i32**)* @prepare_conn_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prepare_conn_streams(%struct.TYPE_4__* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = call i64 (...) @apr_time_now()
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %15, %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SERF_CONN_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = call i64 @do_conn_setup(%struct.TYPE_4__* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %77

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32**, i32*** %8, align 8
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %9, align 8
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32**, i32*** %7, align 8
  store i32* %53, i32** %54, align 8
  br label %75

55:                                               ; preds = %23
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @serf_bucket_socket_create(i32 %63, i32 %66)
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %60, %55
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32**, i32*** %9, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i32**, i32*** %8, align 8
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %69, %42
  %76 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %39
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i64 @apr_time_now(...) #1

declare dso_local i64 @do_conn_setup(%struct.TYPE_4__*) #1

declare dso_local i32* @serf_bucket_socket_create(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
