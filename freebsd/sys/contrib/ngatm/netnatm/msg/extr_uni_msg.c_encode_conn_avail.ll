; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_conn_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_conn_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_conn_avail = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
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

@UNI_CONN_AVAIL = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_conn_avail*, %struct.unicx*)* @encode_conn_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_conn_avail(%struct.uni_msg* %0, %struct.uni_conn_avail* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_conn_avail*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_conn_avail* %1, %struct.uni_conn_avail** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %12 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %11, i32 0, i32 4
  %13 = load i32, i32* @UNI_CONN_AVAIL, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %153

18:                                               ; preds = %3
  %19 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %20 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %31 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %30, i32 0, i32 3
  %32 = bitcast %struct.TYPE_10__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %37, i32* %4, align 4
  br label %153

38:                                               ; preds = %27, %18
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %75, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %45 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UNI_IE_PRESENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %43
  %56 = load i32, i32* @UNI_IE_GIT, align 4
  %57 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %58 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %59 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %61
  %63 = bitcast %struct.TYPE_12__* %62 to %union.uni_ieall*
  %64 = load %struct.unicx*, %struct.unicx** %7, align 8
  %65 = call i64 @uni_encode_ie(i32 %56, %struct.uni_msg* %57, %union.uni_ieall* %63, %struct.unicx* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load i64, i64* %9, align 8
  %69 = shl i64 %68, 16
  %70 = load i32, i32* @UNI_IE_GIT, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %153

74:                                               ; preds = %55, %43
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %39

78:                                               ; preds = %39
  %79 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %80 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_REPORT, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %91 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %90, i32 0, i32 1
  %92 = bitcast %struct.TYPE_14__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_REPORT, align 4
  store i32 %97, i32* %4, align 4
  br label %153

98:                                               ; preds = %87, %78
  %99 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %100 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @UNI_IE_PRESENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load i32, i32* @UNI_IE_UNREC, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %6, align 8
  %111 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %110, i32 0, i32 0
  %112 = bitcast %struct.TYPE_16__* %111 to %union.uni_ieall*
  %113 = load %struct.unicx*, %struct.unicx** %7, align 8
  %114 = call i64 @uni_encode_ie(i32 %108, %struct.uni_msg* %109, %union.uni_ieall* %112, %struct.unicx* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %117, i32* %4, align 4
  br label %153

118:                                              ; preds = %107, %98
  %119 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %120 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %123 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %121, %124
  %126 = load i64, i64* %8, align 8
  %127 = sub i64 %125, %126
  %128 = sub i64 %127, 2
  %129 = lshr i64 %128, 8
  %130 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %131 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add i64 %133, 0
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %129, i64* %135, align 8
  %136 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %137 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %140 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %138, %141
  %143 = load i64, i64* %8, align 8
  %144 = sub i64 %142, %143
  %145 = sub i64 %144, 2
  %146 = lshr i64 %145, 0
  %147 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %148 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %146, i64* %152, align 8
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %118, %116, %96, %67, %36, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
