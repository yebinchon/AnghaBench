; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_timer.c_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_timer.c_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8*, i32, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8*, i32, i32 }

@isc_timertype_inactive = common dso_local global i64 0, align 8
@isc_timertype_once = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_timertype_limited = common dso_local global i64 0, align 8
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_TIMER = common dso_local global i32 0, align 4
@ISC_MSG_SCHEDULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@ISC_FALSE = common dso_local global i64 0, align 8
@ISC_LOGCATEGORY_GENERAL = common dso_local global i32 0, align 4
@ISC_LOGMODULE_TIMER = common dso_local global i32 0, align 4
@ISC_LOG_WARNING = common dso_local global i32 0, align 4
@ISC_MSG_SIGNALSCHED = common dso_local global i32 0, align 4
@isc_lctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8**, i64)* @schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @schedule(%struct.TYPE_7__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @isc_timertype_inactive, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @UNUSED(i64 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @isc_timertype_once, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %3
  %30 = load i8**, i8*** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = call i64 @isc_time_add(i8** %30, i32* %32, i8** %10)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @ISC_R_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %174

39:                                               ; preds = %29
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @isc_timertype_limited, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = call i64 @isc_time_compare(i8** %47, i8** %10)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %50, %45, %39
  br label %91

55:                                               ; preds = %3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = call i64 @isc_time_isepoch(i8** %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  br label %90

64:                                               ; preds = %55
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i64 @isc_time_isepoch(i8** %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %10, align 8
  br label %89

73:                                               ; preds = %64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = call i64 @isc_time_compare(i8** %75, i8** %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %10, align 8
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = call i64 @isc_time_compare(i8** %10, i8** %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %11, align 4
  switch i32 %104, label %122 [
    i32 -1, label %105
    i32 1, label %113
    i32 0, label %121
  ]

105:                                              ; preds = %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @isc_heap_increased(i32 %108, i32 %111)
  br label %122

113:                                              ; preds = %96
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @isc_heap_decreased(i32 %116, i32 %119)
  br label %122

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %96, %121, %113, %105
  br label %147

123:                                              ; preds = %91
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = call i64 @isc_heap_insert(i32 %129, %struct.TYPE_7__* %130)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @ISC_R_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %123
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @ISC_R_NOMEMORY, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @INSIST(i32 %139)
  %141 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %141, i64* %4, align 8
  br label %174

142:                                              ; preds = %123
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %142, %122
  %148 = load i32, i32* @isc_msgcat, align 4
  %149 = load i32, i32* @ISC_MSGSET_TIMER, align 4
  %150 = load i32, i32* @ISC_MSG_SCHEDULE, align 4
  %151 = call i32 @isc_msgcat_get(i32 %148, i32 %149, i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @XTRACETIMER(i32 %151, %struct.TYPE_7__* %152, i8* %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %172

159:                                              ; preds = %147
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = call i64 @isc_time_compare(i8** %161, i8** %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %166, %159, %147
  %173 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %173, i64* %4, align 8
  br label %174

174:                                              ; preds = %172, %135, %37
  %175 = load i64, i64* %4, align 8
  ret i64 %175
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i64 @isc_time_add(i8**, i32*, i8**) #1

declare dso_local i64 @isc_time_compare(i8**, i8**) #1

declare dso_local i64 @isc_time_isepoch(i8**) #1

declare dso_local i32 @isc_heap_increased(i32, i32) #1

declare dso_local i32 @isc_heap_decreased(i32, i32) #1

declare dso_local i64 @isc_heap_insert(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @XTRACETIMER(i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @isc_msgcat_get(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
