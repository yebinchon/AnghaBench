; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_log_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_log_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i32, i64, i64, i32*, i64, i32*, i32* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@LCTX_MAGIC = common dso_local global i32 0, align 4
@isc_categories = common dso_local global i32 0, align 4
@isc_modules = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_log_create(i32* %0, %struct.TYPE_9__** %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %16 = icmp ne %struct.TYPE_9__** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load i32**, i32*** %7, align 8
  %26 = icmp eq i32** %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ true, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @REQUIRE(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_9__* @isc_mem_get(i32* %35, i32 72)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 9
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 8
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ISC_LIST_INIT(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = call i64 @isc_mutex_init(i32* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @ISC_R_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %39
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i32 @isc_mem_put(i32* %64, %struct.TYPE_9__* %65, i32 72)
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %4, align 8
  br label %118

68:                                               ; preds = %39
  %69 = load i32, i32* @LCTX_MAGIC, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = load i32, i32* @isc_categories, align 4
  %74 = call i32 @isc_log_registercategories(%struct.TYPE_9__* %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = load i32, i32* @isc_modules, align 4
  %77 = call i32 @isc_log_registermodules(%struct.TYPE_9__* %75, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = call i64 @isc_logconfig_create(%struct.TYPE_9__* %78, i32** %9)
  store i64 %79, i64* %10, align 8
  br label %82

80:                                               ; preds = %31
  %81 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %80, %68
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @ISC_R_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @sync_channellist(i32* %87)
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @ISC_R_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %98, align 8
  %99 = load i32**, i32*** %7, align 8
  %100 = icmp ne i32** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32*, i32** %9, align 8
  %103 = load i32**, i32*** %7, align 8
  store i32* %102, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %93
  br label %116

105:                                              ; preds = %89
  %106 = load i32*, i32** %9, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @isc_logconfig_destroy(i32** %9)
  br label %110

110:                                              ; preds = %108, %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @isc_log_destroy(%struct.TYPE_9__** %8)
  br label %115

115:                                              ; preds = %113, %110
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i64, i64* %10, align 8
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %116, %63
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_9__* @isc_mem_get(i32*, i32) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @isc_log_registercategories(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @isc_log_registermodules(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @isc_logconfig_create(%struct.TYPE_9__*, i32**) #1

declare dso_local i64 @sync_channellist(i32*) #1

declare dso_local i32 @isc_logconfig_destroy(i32**) #1

declare dso_local i32 @isc_log_destroy(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
