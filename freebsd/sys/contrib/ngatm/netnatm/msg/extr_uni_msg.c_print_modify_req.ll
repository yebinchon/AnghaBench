; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_modify_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_modify_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_modify_req = type { %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
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
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_ATRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_MINTRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_modify_req*, %struct.unicx*)* @print_modify_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_modify_req(%struct.uni_modify_req* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_modify_req*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_modify_req* %0, %struct.uni_modify_req** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %7 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %16 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %17 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %16, i32 0, i32 5
  %18 = bitcast %struct.TYPE_17__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %23 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UNI_IE_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %32 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %33 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %32, i32 0, i32 4
  %34 = bitcast %struct.TYPE_19__* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_print_ie_internal(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %39 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %48 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %49 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %48, i32 0, i32 3
  %50 = bitcast %struct.TYPE_21__* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_print_ie_internal(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %55 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UNI_IE_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %64 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %65 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %64, i32 0, i32 2
  %66 = bitcast %struct.TYPE_23__* %65 to %union.uni_ieall*
  %67 = load %struct.unicx*, %struct.unicx** %4, align 8
  %68 = call i32 @uni_print_ie_internal(i32 %63, %union.uni_ieall* %66, %struct.unicx* %67)
  br label %69

69:                                               ; preds = %62, %53
  store i64 0, i64* %5, align 8
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %76 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UNI_IE_PRESENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* @UNI_IE_GIT, align 4
  %88 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %89 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %91
  %93 = bitcast %struct.TYPE_13__* %92 to %union.uni_ieall*
  %94 = load %struct.unicx*, %struct.unicx** %4, align 8
  %95 = call i32 @uni_print_ie_internal(i32 %87, %union.uni_ieall* %93, %struct.unicx* %94)
  br label %96

96:                                               ; preds = %86, %74
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %70

100:                                              ; preds = %70
  %101 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %102 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @UNI_IE_PRESENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @UNI_IE_UNREC, align 4
  %111 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %112 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %111, i32 0, i32 0
  %113 = bitcast %struct.TYPE_15__* %112 to %union.uni_ieall*
  %114 = load %struct.unicx*, %struct.unicx** %4, align 8
  %115 = call i32 @uni_print_ie_internal(i32 %110, %union.uni_ieall* %113, %struct.unicx* %114)
  br label %116

116:                                              ; preds = %109, %100
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
