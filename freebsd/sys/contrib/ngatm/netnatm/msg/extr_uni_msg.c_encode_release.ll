; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32, i32 }
%struct.uni_release = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_25__*, %struct.TYPE_23__, %struct.TYPE_21__*, i32 }
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

@UNI_RELEASE = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_release*, %struct.unicx*)* @encode_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_release(%struct.uni_msg* %0, %struct.uni_release* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_release*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_release* %1, %struct.uni_release** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %12 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %11, i32 0, i32 7
  %13 = load i32, i32* @UNI_RELEASE, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %234

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %24 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %23, i32 0, i32 6
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNI_IE_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %22
  %36 = load i32, i32* @UNI_IE_CAUSE, align 4
  %37 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %38 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %39 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %38, i32 0, i32 6
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i64 %42
  %44 = bitcast %struct.TYPE_21__* %43 to %union.uni_ieall*
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
  br label %234

53:                                               ; preds = %35, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %59 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @UNI_IE_PRESENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %68 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %69 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %70 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %69, i32 0, i32 5
  %71 = bitcast %struct.TYPE_23__* %70 to %union.uni_ieall*
  %72 = load %struct.unicx*, %struct.unicx** %7, align 8
  %73 = call i64 @uni_encode_ie(i32 %67, %struct.uni_msg* %68, %union.uni_ieall* %71, %struct.unicx* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %76, i32* %4, align 4
  br label %234

77:                                               ; preds = %66, %57
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %114, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %84 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %83, i32 0, i32 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNI_IE_PRESENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %82
  %96 = load i32, i32* @UNI_IE_GIT, align 4
  %97 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %98 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %99 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %98, i32 0, i32 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i64 %102
  %104 = bitcast %struct.TYPE_25__* %103 to %union.uni_ieall*
  %105 = load %struct.unicx*, %struct.unicx** %7, align 8
  %106 = call i64 @uni_encode_ie(i32 %96, %struct.uni_msg* %97, %union.uni_ieall* %104, %struct.unicx* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 16
  %111 = load i32, i32* @UNI_IE_GIT, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %4, align 4
  br label %234

113:                                              ; preds = %95, %82
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %78

117:                                              ; preds = %78
  %118 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %119 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @UNI_IE_PRESENT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load i32, i32* @UNI_IE_UU, align 4
  %128 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %129 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %130 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %129, i32 0, i32 3
  %131 = bitcast %struct.TYPE_27__* %130 to %union.uni_ieall*
  %132 = load %struct.unicx*, %struct.unicx** %7, align 8
  %133 = call i64 @uni_encode_ie(i32 %127, %struct.uni_msg* %128, %union.uni_ieall* %131, %struct.unicx* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %136, i32* %4, align 4
  br label %234

137:                                              ; preds = %126, %117
  %138 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %139 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @UNI_IE_PRESENT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %137
  %147 = load i32, i32* @UNI_IE_FACILITY, align 4
  %148 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %149 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %150 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %149, i32 0, i32 2
  %151 = bitcast %struct.TYPE_15__* %150 to %union.uni_ieall*
  %152 = load %struct.unicx*, %struct.unicx** %7, align 8
  %153 = call i64 @uni_encode_ie(i32 %147, %struct.uni_msg* %148, %union.uni_ieall* %151, %struct.unicx* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @UNI_IE_FACILITY, align 4
  store i32 %156, i32* %4, align 4
  br label %234

157:                                              ; preds = %146, %137
  %158 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %159 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @UNI_IE_PRESENT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %157
  %167 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %168 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %169 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %170 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %169, i32 0, i32 1
  %171 = bitcast %struct.TYPE_17__* %170 to %union.uni_ieall*
  %172 = load %struct.unicx*, %struct.unicx** %7, align 8
  %173 = call i64 @uni_encode_ie(i32 %167, %struct.uni_msg* %168, %union.uni_ieall* %171, %struct.unicx* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  store i32 %176, i32* %4, align 4
  br label %234

177:                                              ; preds = %166, %157
  %178 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %179 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @UNI_IE_PRESENT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %177
  %187 = load i32, i32* @UNI_IE_UNREC, align 4
  %188 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %189 = load %struct.uni_release*, %struct.uni_release** %6, align 8
  %190 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %189, i32 0, i32 0
  %191 = bitcast %struct.TYPE_19__* %190 to %union.uni_ieall*
  %192 = load %struct.unicx*, %struct.unicx** %7, align 8
  %193 = call i64 @uni_encode_ie(i32 %187, %struct.uni_msg* %188, %union.uni_ieall* %191, %struct.unicx* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %196, i32* %4, align 4
  br label %234

197:                                              ; preds = %186, %177
  %198 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %199 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %202 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %200, %203
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 %204, %205
  %207 = sub nsw i32 %206, 2
  %208 = ashr i32 %207, 8
  %209 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %210 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 0
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %208, i32* %215, align 4
  %216 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %217 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %220 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sub nsw i32 %224, 2
  %226 = ashr i32 %225, 0
  %227 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %228 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %226, i32* %233, align 4
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %197, %195, %175, %155, %135, %108, %75, %48, %17
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i32*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
