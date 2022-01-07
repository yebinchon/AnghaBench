; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_call_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_call_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32, i32 }
%struct.uni_call_proc = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_CALL_PROC = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_call_proc*, %struct.unicx*)* @encode_call_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_call_proc(%struct.uni_msg* %0, %struct.uni_call_proc* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_call_proc*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_call_proc* %1, %struct.uni_call_proc** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %9 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %10 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %11 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %10, i32 0, i32 4
  %12 = load i32, i32* @UNI_CALL_PROC, align 4
  %13 = load %struct.unicx*, %struct.unicx** %7, align 8
  %14 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %9, i32* %11, i32 %12, %struct.unicx* %13, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %134

17:                                               ; preds = %3
  %18 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %19 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNI_IE_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i32, i32* @UNI_IE_CONNID, align 4
  %28 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %29 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %30 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %29, i32 0, i32 3
  %31 = bitcast %struct.TYPE_10__* %30 to %union.uni_ieall*
  %32 = load %struct.unicx*, %struct.unicx** %7, align 8
  %33 = call i64 @uni_encode_ie(i32 %27, %struct.uni_msg* %28, %union.uni_ieall* %31, %struct.unicx* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @UNI_IE_CONNID, align 4
  store i32 %36, i32* %4, align 4
  br label %134

37:                                               ; preds = %26, %17
  %38 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %39 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_EPREF, align 4
  %48 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %49 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %50 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %49, i32 0, i32 2
  %51 = bitcast %struct.TYPE_12__* %50 to %union.uni_ieall*
  %52 = load %struct.unicx*, %struct.unicx** %7, align 8
  %53 = call i64 @uni_encode_ie(i32 %47, %struct.uni_msg* %48, %union.uni_ieall* %51, %struct.unicx* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %56, i32* %4, align 4
  br label %134

57:                                               ; preds = %46, %37
  %58 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %59 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UNI_IE_PRESENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %68 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %69 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %70 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %69, i32 0, i32 1
  %71 = bitcast %struct.TYPE_14__* %70 to %union.uni_ieall*
  %72 = load %struct.unicx*, %struct.unicx** %7, align 8
  %73 = call i64 @uni_encode_ie(i32 %67, %struct.uni_msg* %68, %union.uni_ieall* %71, %struct.unicx* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %76, i32* %4, align 4
  br label %134

77:                                               ; preds = %66, %57
  %78 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %79 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UNI_IE_PRESENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load i32, i32* @UNI_IE_UNREC, align 4
  %88 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %89 = load %struct.uni_call_proc*, %struct.uni_call_proc** %6, align 8
  %90 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_16__* %90 to %union.uni_ieall*
  %92 = load %struct.unicx*, %struct.unicx** %7, align 8
  %93 = call i64 @uni_encode_ie(i32 %87, %struct.uni_msg* %88, %union.uni_ieall* %91, %struct.unicx* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %96, i32* %4, align 4
  br label %134

97:                                               ; preds = %86, %77
  %98 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %99 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %102 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sub nsw i32 %106, 2
  %108 = ashr i32 %107, 8
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 0
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %108, i32* %115, align 4
  %116 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %117 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %120 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %122, %123
  %125 = sub nsw i32 %124, 2
  %126 = ashr i32 %125, 0
  %127 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %128 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %126, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %97, %95, %75, %55, %35, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i32*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
