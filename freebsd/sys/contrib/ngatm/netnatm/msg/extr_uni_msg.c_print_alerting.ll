; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_alerting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_alerting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_alerting = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_27__*, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_alerting*, %struct.unicx*)* @print_alerting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_alerting(%struct.uni_alerting* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_alerting*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_alerting* %0, %struct.uni_alerting** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %7 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_CONNID, align 4
  %16 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %17 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %16, i32 0, i32 6
  %18 = bitcast %struct.TYPE_21__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %23 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UNI_IE_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @UNI_IE_EPREF, align 4
  %32 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %33 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %32, i32 0, i32 5
  %34 = bitcast %struct.TYPE_23__* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_print_ie_internal(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %39 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %48 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %49 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %48, i32 0, i32 4
  %50 = bitcast %struct.TYPE_25__* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_print_ie_internal(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  br label %53

53:                                               ; preds = %46, %37
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %81, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %60 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %59, i32 0, i32 3
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UNI_IE_PRESENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  %71 = load i32, i32* @UNI_IE_GIT, align 4
  %72 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %73 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %72, i32 0, i32 3
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i64 %75
  %77 = bitcast %struct.TYPE_27__* %76 to %union.uni_ieall*
  %78 = load %struct.unicx*, %struct.unicx** %4, align 8
  %79 = call i32 @uni_print_ie_internal(i32 %71, %union.uni_ieall* %77, %struct.unicx* %78)
  br label %80

80:                                               ; preds = %70, %58
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %54

84:                                               ; preds = %54
  %85 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %86 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UNI_IE_PRESENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i32, i32* @UNI_IE_UU, align 4
  %95 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %96 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %95, i32 0, i32 2
  %97 = bitcast %struct.TYPE_15__* %96 to %union.uni_ieall*
  %98 = load %struct.unicx*, %struct.unicx** %4, align 8
  %99 = call i32 @uni_print_ie_internal(i32 %94, %union.uni_ieall* %97, %struct.unicx* %98)
  br label %100

100:                                              ; preds = %93, %84
  %101 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %102 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UNI_IE_PRESENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @UNI_IE_REPORT, align 4
  %111 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %112 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %111, i32 0, i32 1
  %113 = bitcast %struct.TYPE_17__* %112 to %union.uni_ieall*
  %114 = load %struct.unicx*, %struct.unicx** %4, align 8
  %115 = call i32 @uni_print_ie_internal(i32 %110, %union.uni_ieall* %113, %struct.unicx* %114)
  br label %116

116:                                              ; preds = %109, %100
  %117 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %118 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UNI_IE_PRESENT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load i32, i32* @UNI_IE_UNREC, align 4
  %127 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %128 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %127, i32 0, i32 0
  %129 = bitcast %struct.TYPE_19__* %128 to %union.uni_ieall*
  %130 = load %struct.unicx*, %struct.unicx** %4, align 8
  %131 = call i32 @uni_print_ie_internal(i32 %126, %union.uni_ieall* %129, %struct.unicx* %130)
  br label %132

132:                                              ; preds = %125, %116
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
