; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_parseopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_parseopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@parseopen.notice = internal global i32 0, align 4
@DD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"parse: OPEN\0A\00", align 1
@MODOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"parse: OPEN - FAILED - not MODOPEN\0A\00", align 1
@OPENFAIL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@u = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"parse: OPEN - FAILED - EXCLUSIVE ONLY\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"parse: OPEN - FAILED - no memory\0A\00", align 1
@PARSE_ENABLE = common dso_local global i32 0, align 4
@M_PARSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"parse: OPEN - SUCCEEDED\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: Copyright (C) 1991-2005, Frank Kardel\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"parsestreams.c,v 4.11 2005/04/16 17:32:10 kardel RELEASE_20050508_A\00", align 1
@parsebusy = common dso_local global i32 0, align 4
@parsesync_vd = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i32)* @parseopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseopen(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @DD_OPEN, align 4
  %12 = call i32 @parseprintf(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MODOPEN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @DD_OPEN, align 4
  %18 = call i32 @parseprintf(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @OPENFAIL, align 4
  store i32 %19, i32* %5, align 4
  br label %104

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @u, i32 0, i32 0), align 4
  %27 = load i32, i32* @DD_OPEN, align 4
  %28 = call i32 @parseprintf(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @OPENFAIL, align 4
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %20
  %31 = call i64 @kmem_alloc(i32 48)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @DD_OPEN, align 4
  %40 = call i32 @parseprintf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @OPENFAIL, align 4
  store i32 %41, i32* %5, align 4
  br label %104

42:                                               ; preds = %30
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call %struct.TYPE_12__* @WR(%struct.TYPE_15__* %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %10, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = ptrtoint %struct.TYPE_16__* %54 to i64
  %56 = call i32 @bzero(i64 %55, i32 48)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %59, align 8
  %60 = load i32, i32* @PARSE_ENABLE, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = call i32 @parse_ioinit(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %42
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = ptrtoint %struct.TYPE_16__* %79 to i64
  %81 = call i32 @kmem_free(i64 %80, i32 48)
  %82 = load i32, i32* @OPENFAIL, align 4
  store i32 %82, i32* %5, align 4
  br label %104

83:                                               ; preds = %42
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = load i32, i32* @M_PARSE, align 4
  %86 = call i64 @setup_stream(%struct.TYPE_15__* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = call i32 @init_linemon(%struct.TYPE_15__* %89)
  %91 = load i32, i32* @DD_OPEN, align 4
  %92 = call i32 @parseprintf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @parseopen.notice, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @parseopen.notice, align 4
  br label %97

97:                                               ; preds = %95, %88
  %98 = load i32, i32* @MODOPEN, align 4
  store i32 %98, i32* %5, align 4
  br label %104

99:                                               ; preds = %83
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = ptrtoint %struct.TYPE_16__* %100 to i64
  %102 = call i32 @kmem_free(i64 %101, i32 48)
  %103 = load i32, i32* @OPENFAIL, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %97, %78, %38, %25, %16
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @parseprintf(i32, i8*) #1

declare dso_local i64 @kmem_alloc(i32) #1

declare dso_local %struct.TYPE_12__* @WR(%struct.TYPE_15__*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @parse_ioinit(i32*) #1

declare dso_local i32 @kmem_free(i64, i32) #1

declare dso_local i64 @setup_stream(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @init_linemon(%struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
