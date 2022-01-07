; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcCreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32**, i64*)*, i32 (i32*)*, i32 (i32)* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@TC_API_LOADED = common dso_local global i64 0, align 8
@g_TcFunctions = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TC_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TcActivate = common dso_local global i32 0, align 4
@TcGetNonBlock = common dso_local global i32 0, align 4
@TcSetNonBlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @TcCreate(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = call i64 (...) @LoadTcFunctions()
  %15 = load i64, i64* @TC_API_LOADED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %79

19:                                               ; preds = %3
  %20 = load i64 (i32**, i64*)*, i64 (i32**, i64*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 0), align 8
  %21 = call i64 %20(i32** %9, i64* %8)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @TC_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %79

27:                                               ; preds = %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %46, %27
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 2), align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %11, align 4
  br label %49

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %29

49:                                               ; preds = %43, %29
  %50 = load i64, i64* %8, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 1), align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 %53(i32* %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %79

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  store i32 1, i32* %62, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call %struct.TYPE_5__* @pcap_create_common(i8* %63, i32 4)
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %13, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = icmp eq %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %79

68:                                               ; preds = %61
  %69 = load i32, i32* @TcActivate, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @TcGetNonBlock, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @TcSetNonBlock, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %4, align 8
  br label %79

79:                                               ; preds = %68, %67, %59, %25, %17
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %80
}

declare dso_local i64 @LoadTcFunctions(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @pcap_create_common(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
