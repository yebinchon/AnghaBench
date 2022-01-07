; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_add_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_add_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party_ack = type { %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_31__*, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_43__, %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_37__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_CONNED = common dso_local global i32 0, align 4
@UNI_IE_CONNEDSUB = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_add_party_ack*, %struct.unicx*)* @print_add_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_add_party_ack(%struct.uni_add_party_ack* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_add_party_ack*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_add_party_ack* %0, %struct.uni_add_party_ack** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %7 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_EPREF, align 4
  %16 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %17 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %16, i32 0, i32 10
  %18 = bitcast %struct.TYPE_37__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %23 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UNI_IE_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @UNI_IE_AAL, align 4
  %32 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %33 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %32, i32 0, i32 9
  %34 = bitcast %struct.TYPE_39__* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_print_ie_internal(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %39 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_BLLI, align 4
  %48 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %49 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %48, i32 0, i32 8
  %50 = bitcast %struct.TYPE_41__* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_print_ie_internal(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %55 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UNI_IE_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %64 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %65 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %64, i32 0, i32 7
  %66 = bitcast %struct.TYPE_43__* %65 to %union.uni_ieall*
  %67 = load %struct.unicx*, %struct.unicx** %4, align 8
  %68 = call i32 @uni_print_ie_internal(i32 %63, %union.uni_ieall* %66, %struct.unicx* %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %71 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @UNI_IE_PRESENT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i32, i32* @UNI_IE_EETD, align 4
  %80 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %81 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %80, i32 0, i32 6
  %82 = bitcast %struct.TYPE_23__* %81 to %union.uni_ieall*
  %83 = load %struct.unicx*, %struct.unicx** %4, align 8
  %84 = call i32 @uni_print_ie_internal(i32 %79, %union.uni_ieall* %82, %struct.unicx* %83)
  br label %85

85:                                               ; preds = %78, %69
  %86 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %87 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @UNI_IE_PRESENT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i32, i32* @UNI_IE_CONNED, align 4
  %96 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %97 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %96, i32 0, i32 5
  %98 = bitcast %struct.TYPE_25__* %97 to %union.uni_ieall*
  %99 = load %struct.unicx*, %struct.unicx** %4, align 8
  %100 = call i32 @uni_print_ie_internal(i32 %95, %union.uni_ieall* %98, %struct.unicx* %99)
  br label %101

101:                                              ; preds = %94, %85
  %102 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %103 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UNI_IE_PRESENT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  %112 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %113 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %112, i32 0, i32 4
  %114 = bitcast %struct.TYPE_27__* %113 to %union.uni_ieall*
  %115 = load %struct.unicx*, %struct.unicx** %4, align 8
  %116 = call i32 @uni_print_ie_internal(i32 %111, %union.uni_ieall* %114, %struct.unicx* %115)
  br label %117

117:                                              ; preds = %110, %101
  %118 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %119 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @UNI_IE_PRESENT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* @UNI_IE_UU, align 4
  %128 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %129 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %128, i32 0, i32 3
  %130 = bitcast %struct.TYPE_29__* %129 to %union.uni_ieall*
  %131 = load %struct.unicx*, %struct.unicx** %4, align 8
  %132 = call i32 @uni_print_ie_internal(i32 %127, %union.uni_ieall* %130, %struct.unicx* %131)
  br label %133

133:                                              ; preds = %126, %117
  store i64 0, i64* %5, align 8
  br label %134

134:                                              ; preds = %161, %133
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %134
  %139 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %140 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %139, i32 0, i32 2
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @UNI_IE_PRESENT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %138
  %151 = load i32, i32* @UNI_IE_GIT, align 4
  %152 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %153 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %152, i32 0, i32 2
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %153, align 8
  %155 = load i64, i64* %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i64 %155
  %157 = bitcast %struct.TYPE_31__* %156 to %union.uni_ieall*
  %158 = load %struct.unicx*, %struct.unicx** %4, align 8
  %159 = call i32 @uni_print_ie_internal(i32 %151, %union.uni_ieall* %157, %struct.unicx* %158)
  br label %160

160:                                              ; preds = %150, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %5, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %5, align 8
  br label %134

164:                                              ; preds = %134
  %165 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %166 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @UNI_IE_PRESENT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %175 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %176 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %175, i32 0, i32 1
  %177 = bitcast %struct.TYPE_34__* %176 to %union.uni_ieall*
  %178 = load %struct.unicx*, %struct.unicx** %4, align 8
  %179 = call i32 @uni_print_ie_internal(i32 %174, %union.uni_ieall* %177, %struct.unicx* %178)
  br label %180

180:                                              ; preds = %173, %164
  %181 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %182 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @UNI_IE_PRESENT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %180
  %190 = load i32, i32* @UNI_IE_UNREC, align 4
  %191 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %192 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %191, i32 0, i32 0
  %193 = bitcast %struct.TYPE_36__* %192 to %union.uni_ieall*
  %194 = load %struct.unicx*, %struct.unicx** %4, align 8
  %195 = call i32 @uni_print_ie_internal(i32 %190, %union.uni_ieall* %193, %struct.unicx* %194)
  br label %196

196:                                              ; preds = %189, %180
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
