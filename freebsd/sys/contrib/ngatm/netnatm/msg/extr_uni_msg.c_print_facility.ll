; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_facility.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_facility = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_facility*, %struct.unicx*)* @print_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_facility(%struct.uni_facility* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_facility*, align 8
  %4 = alloca %struct.unicx*, align 8
  store %struct.uni_facility* %0, %struct.uni_facility** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %5 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %6 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNI_IE_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @UNI_IE_FACILITY, align 4
  %15 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %16 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %15, i32 0, i32 5
  %17 = bitcast %struct.TYPE_17__* %16 to %union.uni_ieall*
  %18 = load %struct.unicx*, %struct.unicx** %4, align 8
  %19 = call i32 @uni_print_ie_internal(i32 %14, %union.uni_ieall* %17, %struct.unicx* %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %22 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UNI_IE_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @UNI_IE_CALLED, align 4
  %31 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %32 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %31, i32 0, i32 4
  %33 = bitcast %struct.TYPE_19__* %32 to %union.uni_ieall*
  %34 = load %struct.unicx*, %struct.unicx** %4, align 8
  %35 = call i32 @uni_print_ie_internal(i32 %30, %union.uni_ieall* %33, %struct.unicx* %34)
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %38 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UNI_IE_PRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %47 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %48 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %47, i32 0, i32 3
  %49 = bitcast %struct.TYPE_21__* %48 to %union.uni_ieall*
  %50 = load %struct.unicx*, %struct.unicx** %4, align 8
  %51 = call i32 @uni_print_ie_internal(i32 %46, %union.uni_ieall* %49, %struct.unicx* %50)
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %54 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UNI_IE_PRESENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* @UNI_IE_CALLING, align 4
  %63 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %64 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %63, i32 0, i32 2
  %65 = bitcast %struct.TYPE_23__* %64 to %union.uni_ieall*
  %66 = load %struct.unicx*, %struct.unicx** %4, align 8
  %67 = call i32 @uni_print_ie_internal(i32 %62, %union.uni_ieall* %65, %struct.unicx* %66)
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %70 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UNI_IE_PRESENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %79 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %80 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_13__* %80 to %union.uni_ieall*
  %82 = load %struct.unicx*, %struct.unicx** %4, align 8
  %83 = call i32 @uni_print_ie_internal(i32 %78, %union.uni_ieall* %81, %struct.unicx* %82)
  br label %84

84:                                               ; preds = %77, %68
  %85 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %86 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @UNI_IE_PRESENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i32, i32* @UNI_IE_UNREC, align 4
  %95 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %96 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_15__* %96 to %union.uni_ieall*
  %98 = load %struct.unicx*, %struct.unicx** %4, align 8
  %99 = call i32 @uni_print_ie_internal(i32 %94, %union.uni_ieall* %97, %struct.unicx* %98)
  br label %100

100:                                              ; preds = %93, %84
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
