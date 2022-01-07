; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parseopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parseopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }

@parseopen.notice = internal global i32 0, align 4
@DD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"parse: OPEN - q=%x\0A\00", align 1
@MODOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"parse: OPEN - FAILED - not MODOPEN\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"parse: OPEN - FAILED - EXCLUSIVE ONLY\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"parse: OPEN - parse area q=%x, q->q_ptr=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"parse: OPEN - WQ parse area q=%x, q->q_ptr=%x\0A\00", align 1
@PARSE_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"parse: OPEN - initializing io subsystem q=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"parse: OPEN - initializing stream q=%x\0A\00", align 1
@M_PARSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"parse: OPEN - SUCCEEDED\0A\00", align 1
@CE_CONT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"?%s: Copyright (c) 1993-2005, Frank Kardel\0A\00", align 1
@modlstrmod = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32, i32, i32*)* @parseopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseopen(%struct.TYPE_16__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @DD_OPEN, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = call i32 (i32, i8*, ...) @pprintf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %14)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MODOPEN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @DD_OPEN, align 4
  %21 = call i32 (i32, i8*, ...) @pprintf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  store i32 %22, i32* %6, align 4
  br label %131

23:                                               ; preds = %5
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @DD_OPEN, align 4
  %30 = call i32 (i32, i8*, ...) @pprintf(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  store i32 %31, i32* %6, align 4
  br label %131

32:                                               ; preds = %23
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i64 @kmem_alloc(i32 48, i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %6, align 4
  br label %131

43:                                               ; preds = %32
  %44 = load i32, i32* @DD_OPEN, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, ...) @pprintf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %45, i64 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = call %struct.TYPE_13__* @WR(%struct.TYPE_16__* %53)
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* @DD_OPEN, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = call %struct.TYPE_13__* @WR(%struct.TYPE_16__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = call %struct.TYPE_13__* @WR(%struct.TYPE_16__* %59)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @pprintf(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %58, i64 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %12, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = ptrtoint %struct.TYPE_17__* %68 to i64
  %70 = call i32 @bzero(i64 %69, i32 48)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %73, align 8
  %74 = load i32, i32* @PARSE_ENABLE, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = call i32 @qprocson(%struct.TYPE_16__* %88)
  %90 = load i32, i32* @DD_OPEN, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = call i32 (i32, i8*, ...) @pprintf(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_16__* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = call i32 @parse_ioinit(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %43
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = call i32 @qprocsoff(%struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = ptrtoint %struct.TYPE_17__* %100 to i64
  %102 = call i32 @kmem_free(i64 %101, i32 48)
  %103 = load i32, i32* @EIO, align 4
  store i32 %103, i32* %6, align 4
  br label %131

104:                                              ; preds = %43
  %105 = load i32, i32* @DD_OPEN, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = call i32 (i32, i8*, ...) @pprintf(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = load i32, i32* @M_PARSE, align 4
  %110 = call i64 @setup_stream(%struct.TYPE_16__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = call i32 @init_linemon(%struct.TYPE_16__* %113)
  %115 = load i32, i32* @DD_OPEN, align 4
  %116 = call i32 (i32, i8*, ...) @pprintf(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @parseopen.notice, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @CE_CONT, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @modlstrmod, i32 0, i32 0), align 4
  %122 = call i32 @cmn_err(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 1, i32* @parseopen.notice, align 4
  br label %123

123:                                              ; preds = %119, %112
  store i32 0, i32* %6, align 4
  br label %131

124:                                              ; preds = %104
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = call i32 @qprocsoff(%struct.TYPE_16__* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %128 = ptrtoint %struct.TYPE_17__* %127 to i64
  %129 = call i32 @kmem_free(i64 %128, i32 48)
  %130 = load i32, i32* @EIO, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %124, %123, %97, %41, %28, %19
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @pprintf(i32, i8*, ...) #1

declare dso_local i64 @kmem_alloc(i32, i32) #1

declare dso_local %struct.TYPE_13__* @WR(%struct.TYPE_16__*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @qprocson(%struct.TYPE_16__*) #1

declare dso_local i32 @parse_ioinit(i32*) #1

declare dso_local i32 @qprocsoff(%struct.TYPE_16__*) #1

declare dso_local i32 @kmem_free(i64, i32) #1

declare dso_local i64 @setup_stream(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @init_linemon(%struct.TYPE_16__*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
