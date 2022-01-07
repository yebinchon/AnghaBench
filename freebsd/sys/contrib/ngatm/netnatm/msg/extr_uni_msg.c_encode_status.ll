; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32, i32 }
%struct.uni_status = type { %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, i32 }
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

@UNI_STATUS = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CALLSTATE = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_EPSTATE = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_status*, %struct.unicx*)* @encode_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_status(%struct.uni_msg* %0, %struct.uni_status* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_status*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_status* %1, %struct.uni_status** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %9 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %10 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %11 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %10, i32 0, i32 5
  %12 = load i32, i32* @UNI_STATUS, align 4
  %13 = load %struct.unicx*, %struct.unicx** %7, align 8
  %14 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %9, i32* %11, i32 %12, %struct.unicx* %13, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %154

17:                                               ; preds = %3
  %18 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %19 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNI_IE_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i32, i32* @UNI_IE_CALLSTATE, align 4
  %28 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %29 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %30 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %29, i32 0, i32 4
  %31 = bitcast %struct.TYPE_13__* %30 to %union.uni_ieall*
  %32 = load %struct.unicx*, %struct.unicx** %7, align 8
  %33 = call i64 @uni_encode_ie(i32 %27, %struct.uni_msg* %28, %union.uni_ieall* %31, %struct.unicx* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @UNI_IE_CALLSTATE, align 4
  store i32 %36, i32* %4, align 4
  br label %154

37:                                               ; preds = %26, %17
  %38 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %39 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_CAUSE, align 4
  %48 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %49 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %50 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %49, i32 0, i32 3
  %51 = bitcast %struct.TYPE_15__* %50 to %union.uni_ieall*
  %52 = load %struct.unicx*, %struct.unicx** %7, align 8
  %53 = call i64 @uni_encode_ie(i32 %47, %struct.uni_msg* %48, %union.uni_ieall* %51, %struct.unicx* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @UNI_IE_CAUSE, align 4
  store i32 %56, i32* %4, align 4
  br label %154

57:                                               ; preds = %46, %37
  %58 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %59 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UNI_IE_PRESENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* @UNI_IE_EPREF, align 4
  %68 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %69 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %70 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %69, i32 0, i32 2
  %71 = bitcast %struct.TYPE_17__* %70 to %union.uni_ieall*
  %72 = load %struct.unicx*, %struct.unicx** %7, align 8
  %73 = call i64 @uni_encode_ie(i32 %67, %struct.uni_msg* %68, %union.uni_ieall* %71, %struct.unicx* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %76, i32* %4, align 4
  br label %154

77:                                               ; preds = %66, %57
  %78 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %79 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UNI_IE_PRESENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load i32, i32* @UNI_IE_EPSTATE, align 4
  %88 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %89 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %90 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %89, i32 0, i32 1
  %91 = bitcast %struct.TYPE_19__* %90 to %union.uni_ieall*
  %92 = load %struct.unicx*, %struct.unicx** %7, align 8
  %93 = call i64 @uni_encode_ie(i32 %87, %struct.uni_msg* %88, %union.uni_ieall* %91, %struct.unicx* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @UNI_IE_EPSTATE, align 4
  store i32 %96, i32* %4, align 4
  br label %154

97:                                               ; preds = %86, %77
  %98 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %99 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UNI_IE_PRESENT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %97
  %107 = load i32, i32* @UNI_IE_UNREC, align 4
  %108 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %109 = load %struct.uni_status*, %struct.uni_status** %6, align 8
  %110 = getelementptr inbounds %struct.uni_status, %struct.uni_status* %109, i32 0, i32 0
  %111 = bitcast %struct.TYPE_11__* %110 to %union.uni_ieall*
  %112 = load %struct.unicx*, %struct.unicx** %7, align 8
  %113 = call i64 @uni_encode_ie(i32 %107, %struct.uni_msg* %108, %union.uni_ieall* %111, %struct.unicx* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %116, i32* %4, align 4
  br label %154

117:                                              ; preds = %106, %97
  %118 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %119 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %122 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sub nsw i32 %126, 2
  %128 = ashr i32 %127, 8
  %129 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %130 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 0
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %128, i32* %135, align 4
  %136 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %137 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %140 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sub nsw i32 %144, 2
  %146 = ashr i32 %145, 0
  %147 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %148 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %146, i32* %153, align 4
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %117, %115, %95, %75, %55, %35, %16
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i32*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
