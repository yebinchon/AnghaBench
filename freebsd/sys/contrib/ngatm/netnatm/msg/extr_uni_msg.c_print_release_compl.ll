; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_release_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_release_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release_compl = type { %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_release_compl*, %struct.unicx*)* @print_release_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_release_compl(%struct.uni_release_compl* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_release_compl*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  store %struct.uni_release_compl* %0, %struct.uni_release_compl** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %11 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %10, i32 0, i32 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNI_IE_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = load i32, i32* @UNI_IE_CAUSE, align 4
  %24 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %25 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %24, i32 0, i32 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = bitcast %struct.TYPE_13__* %29 to %union.uni_ieall*
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
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %44 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %43, i32 0, i32 3
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UNI_IE_PRESENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load i32, i32* @UNI_IE_GIT, align 4
  %57 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %58 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %57, i32 0, i32 3
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 %61
  %63 = bitcast %struct.TYPE_15__* %62 to %union.uni_ieall*
  %64 = load %struct.unicx*, %struct.unicx** %4, align 8
  %65 = call i32 @uni_print_ie_internal(i32 %56, %union.uni_ieall* %63, %struct.unicx* %64)
  br label %66

66:                                               ; preds = %55, %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %38

70:                                               ; preds = %38
  %71 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %72 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UNI_IE_PRESENT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load i32, i32* @UNI_IE_UU, align 4
  %81 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %82 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %81, i32 0, i32 2
  %83 = bitcast %struct.TYPE_17__* %82 to %union.uni_ieall*
  %84 = load %struct.unicx*, %struct.unicx** %4, align 8
  %85 = call i32 @uni_print_ie_internal(i32 %80, %union.uni_ieall* %83, %struct.unicx* %84)
  br label %86

86:                                               ; preds = %79, %70
  %87 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %88 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNI_IE_PRESENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %97 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %98 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %97, i32 0, i32 1
  %99 = bitcast %struct.TYPE_19__* %98 to %union.uni_ieall*
  %100 = load %struct.unicx*, %struct.unicx** %4, align 8
  %101 = call i32 @uni_print_ie_internal(i32 %96, %union.uni_ieall* %99, %struct.unicx* %100)
  br label %102

102:                                              ; preds = %95, %86
  %103 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %104 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UNI_IE_PRESENT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load i32, i32* @UNI_IE_UNREC, align 4
  %113 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %114 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %113, i32 0, i32 0
  %115 = bitcast %struct.TYPE_11__* %114 to %union.uni_ieall*
  %116 = load %struct.unicx*, %struct.unicx** %4, align 8
  %117 = call i32 @uni_print_ie_internal(i32 %112, %union.uni_ieall* %115, %struct.unicx* %116)
  br label %118

118:                                              ; preds = %111, %102
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
