; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_register_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_register_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32** }
%struct.TYPE_8__ = type { i64, i32** }

@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ISC_R_UNEXPECTED = common dso_local global i32 0, align 4
@LSIGNAL = common dso_local global i64 0, align 8
@LBROADCAST = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_9__*, %struct.TYPE_8__**)* @register_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_thread(i64 %0, %struct.TYPE_9__* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %11 = icmp ne %struct.TYPE_8__** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @REQUIRE(i32 %18)
  %20 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %16
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32* @CreateEvent(i32* null, i32 %26, i32 %27, i32* null)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  %34 = load i32, i32* @ISC_R_UNEXPECTED, align 4
  store i32 %34, i32* %4, align 4
  br label %65

35:                                               ; preds = %25
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* @LSIGNAL, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @LSIGNAL, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  store i32* %41, i32** %46, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @LBROADCAST, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  store i32* %47, i32** %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = load i32, i32* @link, align 4
  %61 = call i32 @ISC_LIST_APPEND(i32 %58, %struct.TYPE_8__* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %63, align 8
  %64 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %35, %31, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
