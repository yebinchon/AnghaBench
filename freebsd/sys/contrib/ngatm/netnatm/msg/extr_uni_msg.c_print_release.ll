; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_25__*, %struct.TYPE_23__, %struct.TYPE_21__* }
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
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_release*, %struct.unicx*)* @print_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_release(%struct.uni_release* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_release*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  store %struct.uni_release* %0, %struct.uni_release** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %11 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %10, i32 0, i32 6
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNI_IE_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = load i32, i32* @UNI_IE_CAUSE, align 4
  %24 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %25 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %24, i32 0, i32 6
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i64 %28
  %30 = bitcast %struct.TYPE_21__* %29 to %union.uni_ieall*
  %31 = load %struct.unicx*, %struct.unicx** %4, align 8
  %32 = call i32 @uni_print_ie_internal(i32 %23, %union.uni_ieall* %30, %struct.unicx* %31)
  br label %33

33:                                               ; preds = %22, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %39 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %48 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %49 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %48, i32 0, i32 5
  %50 = bitcast %struct.TYPE_23__* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_print_ie_internal(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  br label %53

53:                                               ; preds = %46, %37
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %83, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %60 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %59, i32 0, i32 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UNI_IE_PRESENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %58
  %72 = load i32, i32* @UNI_IE_GIT, align 4
  %73 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %74 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %73, i32 0, i32 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i64 %77
  %79 = bitcast %struct.TYPE_25__* %78 to %union.uni_ieall*
  %80 = load %struct.unicx*, %struct.unicx** %4, align 8
  %81 = call i32 @uni_print_ie_internal(i32 %72, %union.uni_ieall* %79, %struct.unicx* %80)
  br label %82

82:                                               ; preds = %71, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %88 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNI_IE_PRESENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load i32, i32* @UNI_IE_UU, align 4
  %97 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %98 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %97, i32 0, i32 3
  %99 = bitcast %struct.TYPE_27__* %98 to %union.uni_ieall*
  %100 = load %struct.unicx*, %struct.unicx** %4, align 8
  %101 = call i32 @uni_print_ie_internal(i32 %96, %union.uni_ieall* %99, %struct.unicx* %100)
  br label %102

102:                                              ; preds = %95, %86
  %103 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %104 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UNI_IE_PRESENT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load i32, i32* @UNI_IE_FACILITY, align 4
  %113 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %114 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %113, i32 0, i32 2
  %115 = bitcast %struct.TYPE_15__* %114 to %union.uni_ieall*
  %116 = load %struct.unicx*, %struct.unicx** %4, align 8
  %117 = call i32 @uni_print_ie_internal(i32 %112, %union.uni_ieall* %115, %struct.unicx* %116)
  br label %118

118:                                              ; preds = %111, %102
  %119 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %120 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @UNI_IE_PRESENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %129 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %130 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %129, i32 0, i32 1
  %131 = bitcast %struct.TYPE_17__* %130 to %union.uni_ieall*
  %132 = load %struct.unicx*, %struct.unicx** %4, align 8
  %133 = call i32 @uni_print_ie_internal(i32 %128, %union.uni_ieall* %131, %struct.unicx* %132)
  br label %134

134:                                              ; preds = %127, %118
  %135 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %136 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @UNI_IE_PRESENT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load i32, i32* @UNI_IE_UNREC, align 4
  %145 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %146 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %145, i32 0, i32 0
  %147 = bitcast %struct.TYPE_19__* %146 to %union.uni_ieall*
  %148 = load %struct.unicx*, %struct.unicx** %4, align 8
  %149 = call i32 @uni_print_ie_internal(i32 %144, %union.uni_ieall* %147, %struct.unicx* %148)
  br label %150

150:                                              ; preds = %143, %134
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
