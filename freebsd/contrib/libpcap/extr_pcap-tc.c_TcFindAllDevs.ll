; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcFindAllDevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcFindAllDevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32**, i64*)*, i64 (i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@TC_API_LOADED = common dso_local global i64 0, align 8
@g_TcFunctions = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TC_SUCCESS = common dso_local global i64 0, align 8
@devlistp = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TcFindAllDevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %79, %2
  %14 = call i64 (...) @LoadTcFunctions()
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TC_API_LOADED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %82

19:                                               ; preds = %13
  %20 = load i64 (i32**, i64*)*, i64 (i32**, i64*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 0), align 8
  %21 = call i64 %20(i32** %7, i64* %6)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @TC_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %82

26:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_5__* @TcCreatePcapIfFromPort(i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devlistp, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp eq %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devlistp, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devlistp, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %11, align 8
  br label %52

52:                                               ; preds = %58, %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %11, align 8
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %65, align 8
  br label %66

66:                                               ; preds = %62, %44
  br label %67

67:                                               ; preds = %66, %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %27

71:                                               ; preds = %27
  %72 = load i64, i64* %6, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64 (i32*)*, i64 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 1), align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 %75(i32* %76)
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* @FALSE, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %13, label %82

82:                                               ; preds = %79, %25, %18
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i64 @LoadTcFunctions(...) #1

declare dso_local %struct.TYPE_5__* @TcCreatePcapIfFromPort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
