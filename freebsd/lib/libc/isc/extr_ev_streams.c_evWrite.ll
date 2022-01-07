; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_streams.c_evWrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_streams.c_evWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*, i32, i64, i8*, i32 }
%struct.iovec = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@EV_WRITE = common dso_local global i32 0, align 4
@writable = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evWrite(%struct.TYPE_14__* %0, i32 %1, %struct.iovec* %2, i32 %3, i32 %4, i8* %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %19, align 8
  store i32 %1, i32* %10, align 4
  store %struct.iovec* %2, %struct.iovec** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %16, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %23 = call i32 @OKNEW(%struct.TYPE_13__* %22)
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @EV_WRITE, align 4
  %37 = load i32, i32* @writable, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = call i64 @evSelectFD(%struct.TYPE_14__* %42, i32 %35, i32 %36, i32 %37, %struct.TYPE_13__* %38, i32* %40)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %7
  br label %86

46:                                               ; preds = %7
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %48 = load %struct.iovec*, %struct.iovec** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @copyvec(%struct.TYPE_13__* %47, %struct.iovec* %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %86

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %67, align 8
  br label %68

68:                                               ; preds = %62, %53
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %84, align 8
  br label %85

85:                                               ; preds = %81, %68
  store i32 0, i32* %8, align 4
  br label %91

86:                                               ; preds = %52, %45
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %18, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %89 = call i32 @FREE(%struct.TYPE_13__* %88)
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @OKNEW(%struct.TYPE_13__*) #1

declare dso_local i64 @evSelectFD(%struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @copyvec(%struct.TYPE_13__*, %struct.iovec*, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
