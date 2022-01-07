; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_authorize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.url = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"NULL usr or pass\0A\00", align 1
@HTTPAS_DIGEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Digest auth in env, not supported by peer\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.url*)* @http_authorize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_authorize(i32* %0, i8* %1, %struct.TYPE_9__* %2, %struct.TYPE_8__* %3, %struct.url* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.url*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store %struct.url* %4, %struct.url** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %5
  %24 = call i32 @DEBUGF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %103

25:                                               ; preds = %18
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HTTPAS_DIGEST, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %12, align 8
  br label %52

52:                                               ; preds = %44, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @strcasecmp(i64 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @DEBUGF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %103

72:                                               ; preds = %64, %59, %56
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @strcasecmp(i64 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80, %72
  %87 = load i32*, i32** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @http_basic_auth(i32* %87, i8* %88, i32 %91, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %103

96:                                               ; preds = %80, %75
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = load %struct.url*, %struct.url** %11, align 8
  %102 = call i32 @http_digest_auth(i32* %97, i8* %98, %struct.TYPE_10__* %99, %struct.TYPE_8__* %100, %struct.url* %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %96, %86, %70, %23
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @DEBUGF(i8*) #1

declare dso_local i64 @strcasecmp(i64, i8*) #1

declare dso_local i32 @http_basic_auth(i32*, i8*, i32, i32) #1

declare dso_local i32 @http_digest_auth(i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
