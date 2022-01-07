; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_doLogin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_doLogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32* }

@LON_PHASE = common dso_local global i32 0, align 4
@SN_PHASE = common dso_local global i32 0, align 4
@SESS_NEGODONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"count=%d csg=%d\00", align 1
@FF_PHASE = common dso_local global i32 0, align 4
@SESS_INITIALLOGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"status=%d\00", align 1
@SESS_LOGGEDIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@T5 = common dso_local global i32 0, align 4
@SESS_REDIRECT = common dso_local global i32 0, align 4
@SESS_INITIALLOGIN1 = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"target sent REDIRECT\00", align 1
@T7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @doLogin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doLogin(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = call i32 @debug_called(i32 3)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @LON_PHASE, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %28

24:                                               ; preds = %15, %1
  %25 = load i32, i32* @SN_PHASE, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SESS_NEGODONE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %33, %28
  store i32 10, i32* %6, align 4
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = call i32 @loginPhase(%struct.TYPE_6__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FF_PHASE, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %43, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* @SESS_INITIALLOGIN, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  switch i32 %76, label %116 [
    i32 0, label %77
    i32 1, label %95
    i32 2, label %112
    i32 3, label %113
  ]

77:                                               ; preds = %67
  %78 = load i32, i32* @SESS_LOGGEDIN, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strcmp(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = call i32 @doDiscovery(%struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* @T5, align 4
  store i32 %94, i32* %2, align 4
  br label %117

95:                                               ; preds = %67
  %96 = load i32, i32* @SESS_NEGODONE, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @SESS_REDIRECT, align 4
  %103 = load i32, i32* @SESS_INITIALLOGIN1, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @LOG_DEBUG, align 4
  %110 = call i32 @syslog(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @T7, align 4
  store i32 %111, i32* %2, align 4
  br label %117

112:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %117

113:                                              ; preds = %67
  %114 = call i32 @sleep(i32 5)
  %115 = load i32, i32* @T7, align 4
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %113, %112, %95, %93
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @loginPhase(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @doDiscovery(%struct.TYPE_6__*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
