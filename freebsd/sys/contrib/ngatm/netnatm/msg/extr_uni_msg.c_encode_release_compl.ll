; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_release_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_release_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32, i32 }
%struct.uni_release_compl = type { %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_13__*, i32 }
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

@UNI_RELEASE_COMPL = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_release_compl*, %struct.unicx*)* @encode_release_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_release_compl(%struct.uni_msg* %0, %struct.uni_release_compl* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_release_compl*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_release_compl* %1, %struct.uni_release_compl** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %12 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %11, i32 0, i32 5
  %13 = load i32, i32* @UNI_RELEASE_COMPL, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %194

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %24 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNI_IE_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %22
  %36 = load i32, i32* @UNI_IE_CAUSE, align 4
  %37 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %38 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %39 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %38, i32 0, i32 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = bitcast %struct.TYPE_13__* %43 to %union.uni_ieall*
  %45 = load %struct.unicx*, %struct.unicx** %7, align 8
  %46 = call i64 @uni_encode_ie(i32 %36, %struct.uni_msg* %37, %union.uni_ieall* %44, %struct.unicx* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* @UNI_IE_CAUSE, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %194

53:                                               ; preds = %35, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %19

57:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %64 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %63, i32 0, i32 3
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UNI_IE_PRESENT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %62
  %76 = load i32, i32* @UNI_IE_GIT, align 4
  %77 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %78 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %79 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %78, i32 0, i32 3
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %82
  %84 = bitcast %struct.TYPE_15__* %83 to %union.uni_ieall*
  %85 = load %struct.unicx*, %struct.unicx** %7, align 8
  %86 = call i64 @uni_encode_ie(i32 %76, %struct.uni_msg* %77, %union.uni_ieall* %84, %struct.unicx* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* @UNI_IE_GIT, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %194

93:                                               ; preds = %75, %62
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %99 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @UNI_IE_PRESENT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %97
  %107 = load i32, i32* @UNI_IE_UU, align 4
  %108 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %109 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %110 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %109, i32 0, i32 2
  %111 = bitcast %struct.TYPE_17__* %110 to %union.uni_ieall*
  %112 = load %struct.unicx*, %struct.unicx** %7, align 8
  %113 = call i64 @uni_encode_ie(i32 %107, %struct.uni_msg* %108, %union.uni_ieall* %111, %struct.unicx* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %116, i32* %4, align 4
  br label %194

117:                                              ; preds = %106, %97
  %118 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %119 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @UNI_IE_PRESENT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %128 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %129 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %130 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %129, i32 0, i32 1
  %131 = bitcast %struct.TYPE_19__* %130 to %union.uni_ieall*
  %132 = load %struct.unicx*, %struct.unicx** %7, align 8
  %133 = call i64 @uni_encode_ie(i32 %127, %struct.uni_msg* %128, %union.uni_ieall* %131, %struct.unicx* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  store i32 %136, i32* %4, align 4
  br label %194

137:                                              ; preds = %126, %117
  %138 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %139 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @UNI_IE_PRESENT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %137
  %147 = load i32, i32* @UNI_IE_UNREC, align 4
  %148 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %149 = load %struct.uni_release_compl*, %struct.uni_release_compl** %6, align 8
  %150 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %149, i32 0, i32 0
  %151 = bitcast %struct.TYPE_11__* %150 to %union.uni_ieall*
  %152 = load %struct.unicx*, %struct.unicx** %7, align 8
  %153 = call i64 @uni_encode_ie(i32 %147, %struct.uni_msg* %148, %union.uni_ieall* %151, %struct.unicx* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %156, i32* %4, align 4
  br label %194

157:                                              ; preds = %146, %137
  %158 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %159 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %162 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %160, %163
  %165 = load i32, i32* %8, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sub nsw i32 %166, 2
  %168 = ashr i32 %167, 8
  %169 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %170 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 0
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %168, i32* %175, align 4
  %176 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %177 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %180 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %178, %181
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sub nsw i32 %184, 2
  %186 = ashr i32 %185, 0
  %187 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %188 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %186, i32* %193, align 4
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %157, %155, %135, %115, %88, %48, %17
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i32*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
