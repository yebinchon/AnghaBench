; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_get_from_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_get_from_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)*, i32, i32, i8* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i8* null, align 8
@ISC_R_QUEUEFULL = common dso_local global i64 0, align 8
@ISC_R_NOTBLOCKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @get_from_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_from_callback(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %112

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %35, align 8
  %37 = icmp ne i64 (%struct.TYPE_8__*, i32, i32)* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 %41(%struct.TYPE_8__* %42, i32 %45, i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @ISC_R_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %112

52:                                               ; preds = %38
  %53 = load i8*, i8** @ISC_TRUE, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %33, %28
  store i32 0, i32* %10, align 4
  %57 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %109, %56
  %59 = load i32, i32* %6, align 4
  %60 = icmp ugt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @ISC_R_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %67, label %110

67:                                               ; preds = %65
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 %70(%struct.TYPE_8__* %71, i32 %74, i32 %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @ISC_R_QUEUEFULL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %67
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = call i32 @crunchsamples(i32* %81, i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @ISC_MIN(i32 %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %95, i64* %12, align 8
  br label %109

96:                                               ; preds = %67
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @ISC_R_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @ISC_R_NOTBLOCKING, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8*, i8** @ISC_TRUE, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %100, %96
  br label %109

109:                                              ; preds = %108, %80
  br label %58

110:                                              ; preds = %65
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %51, %27, %21
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @crunchsamples(i32*, i32*) #1

declare dso_local i64 @ISC_MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
