; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_logconfig_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_logconfig_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32*, i64, i64, i32*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i8*, i32*, i8* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_LOG_INFO = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@LCFG_MAGIC = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"default_syslog\00", align 1
@ISC_LOG_TOSYSLOG = common dso_local global i32 0, align 4
@stderr = common dso_local global i8* null, align 8
@ISC_LOG_ROLLNEVER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"default_stderr\00", align 1
@ISC_LOG_TOFILEDESC = common dso_local global i32 0, align 4
@ISC_LOG_PRINTTIME = common dso_local global i32 0, align 4
@default_channel = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"default_debug\00", align 1
@ISC_LOG_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@ISC_LOG_TONULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_logconfig_create(%struct.TYPE_17__* %0, %struct.TYPE_16__** %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__**, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %4, align 8
  %9 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @ISC_LOG_INFO, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  %12 = icmp ne %struct.TYPE_16__** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ false, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = call i32 @VALID_CONTEXT(%struct.TYPE_17__* %21)
  %23 = call i32 @REQUIRE(i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_16__* @isc_mem_get(i32 %26, i32 56)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %17
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @ISC_FALSE, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ISC_LIST_INIT(i32 %50)
  %52 = load i32, i32* @LCFG_MAGIC, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %57

55:                                               ; preds = %17
  %56 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %30
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @ISC_R_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @LOG_DAEMON, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = load i32, i32* @ISC_LOG_TOSYSLOG, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @isc_log_createchannel(%struct.TYPE_16__* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, %struct.TYPE_15__* %6, i32 0)
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @ISC_R_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i8*, i8** @stderr, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load i8*, i8** @ISC_LOG_ROLLNEVER, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = load i32, i32* @ISC_LOG_TOFILEDESC, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ISC_LOG_PRINTTIME, align 4
  %87 = call i64 @isc_log_createchannel(%struct.TYPE_16__* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, %struct.TYPE_15__* %6, i32 %86)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %72, %68
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @ISC_R_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ISC_LIST_HEAD(i32 %95)
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @default_channel, i32 0, i32 0), align 4
  %97 = load i8*, i8** @stderr, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load i8*, i8** @ISC_LOG_ROLLNEVER, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = load i32, i32* @ISC_LOG_TOFILEDESC, align 4
  %109 = load i32, i32* @ISC_LOG_DYNAMIC, align 4
  %110 = load i32, i32* @ISC_LOG_PRINTTIME, align 4
  %111 = call i64 @isc_log_createchannel(%struct.TYPE_16__* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109, %struct.TYPE_15__* %6, i32 %110)
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %92, %88
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @ISC_R_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = load i32, i32* @ISC_LOG_TONULL, align 4
  %119 = load i32, i32* @ISC_LOG_DYNAMIC, align 4
  %120 = call i64 @isc_log_createchannel(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119, %struct.TYPE_15__* null, i32 0)
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @ISC_R_SUCCESS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %127, align 8
  br label %134

128:                                              ; preds = %121
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = icmp ne %struct.TYPE_16__* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @isc_logconfig_destroy(%struct.TYPE_16__** %5)
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133, %125
  %135 = load i64, i64* %7, align 8
  ret i64 %135
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_CONTEXT(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i64 @isc_log_createchannel(%struct.TYPE_16__*, i8*, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @isc_logconfig_destroy(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
