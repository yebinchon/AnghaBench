; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf__provide_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf__provide_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (i8**, i8**, %struct.TYPE_8__*, i32, i32, i8*, i8*, i32*)* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@SERF_CONN_SETUP_SSLTUNNEL = common dso_local global i64 0, align 8
@APR_EGENERAL = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf__provide_credentials(%struct.TYPE_9__* %0, i8** %1, i8** %2, %struct.TYPE_8__* %3, i8* %4, i32 %5, i8* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i8** %2, i8*** %13, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %20, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %21, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %60

32:                                               ; preds = %9
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SERF_CONN_SETUP_SSLTUNNEL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %21, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* @APR_EGENERAL, align 8
  store i64 %45, i64* %10, align 8
  br label %81

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %53 = call i64 @setup_request(%struct.TYPE_8__* %52)
  store i64 %53, i64* %23, align 8
  %54 = load i64, i64* %23, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %23, align 8
  store i64 %57, i64* %10, align 8
  br label %81

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %32, %9
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64 (i8**, i8**, %struct.TYPE_8__*, i32, i32, i8*, i8*, i32*)*, i64 (i8**, i8**, %struct.TYPE_8__*, i32, i32, i8*, i8*, i32*)** %62, align 8
  %64 = load i8**, i8*** %12, align 8
  %65 = load i8**, i8*** %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i64 %63(i8** %64, i8** %65, %struct.TYPE_8__* %66, i32 %69, i32 %70, i8* %71, i8* %72, i32* %73)
  store i64 %74, i64* %22, align 8
  %75 = load i64, i64* %22, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i64, i64* %22, align 8
  store i64 %78, i64* %10, align 8
  br label %81

79:                                               ; preds = %60
  %80 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %79, %77, %56, %44
  %82 = load i64, i64* %10, align 8
  ret i64 %82
}

declare dso_local i64 @setup_request(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
