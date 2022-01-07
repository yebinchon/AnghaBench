; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_connect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.unicx = type { i32, i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_CONNED = common dso_local global i32 0, align 4
@UNI_IE_CONNEDSUB = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_EXQOS = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_ABRSETUP = common dso_local global i32 0, align 4
@UNI_IE_ABRADD = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_connect*, %struct.unicx*)* @check_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_connect(%struct.uni_connect* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_connect*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_connect* %0, %struct.uni_connect** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_AAL, align 4
  %8 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %9 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %8, i32 0, i32 17
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_BLLI, align 4
  %16 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %17 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %16, i32 0, i32 16
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.unicx*, %struct.unicx** %4, align 8
  %24 = getelementptr inbounds %struct.unicx, %struct.unicx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %29 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IE_ISPRESENT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @UNI_IE_CONNID, align 4
  %36 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %37 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %36, i32 0, i32 15
  %38 = bitcast i32* %37 to %union.uni_ieall*
  %39 = load %struct.unicx*, %struct.unicx** %4, align 8
  %40 = call i32 @uni_check_ie(i32 %35, %union.uni_ieall* %38, %struct.unicx* %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %27
  %44 = load i32, i32* @UNI_IE_EPREF, align 4
  %45 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %46 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %45, i32 0, i32 14
  %47 = bitcast i32* %46 to %union.uni_ieall*
  %48 = load %struct.unicx*, %struct.unicx** %4, align 8
  %49 = call i32 @uni_check_ie(i32 %44, %union.uni_ieall* %47, %struct.unicx* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %53 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %54 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %53, i32 0, i32 13
  %55 = bitcast i32* %54 to %union.uni_ieall*
  %56 = load %struct.unicx*, %struct.unicx** %4, align 8
  %57 = call i32 @uni_check_ie(i32 %52, %union.uni_ieall* %55, %struct.unicx* %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @UNI_IE_CONNED, align 4
  %61 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %62 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %61, i32 0, i32 12
  %63 = bitcast i32* %62 to %union.uni_ieall*
  %64 = load %struct.unicx*, %struct.unicx** %4, align 8
  %65 = call i32 @uni_check_ie(i32 %60, %union.uni_ieall* %63, %struct.unicx* %64)
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  %69 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %70 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %69, i32 0, i32 11
  %71 = bitcast i32* %70 to %union.uni_ieall*
  %72 = load %struct.unicx*, %struct.unicx** %4, align 8
  %73 = call i32 @uni_check_ie(i32 %68, %union.uni_ieall* %71, %struct.unicx* %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @UNI_IE_EETD, align 4
  %77 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %78 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %77, i32 0, i32 10
  %79 = bitcast i32* %78 to %union.uni_ieall*
  %80 = load %struct.unicx*, %struct.unicx** %4, align 8
  %81 = call i32 @uni_check_ie(i32 %76, %union.uni_ieall* %79, %struct.unicx* %80)
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %100, %43
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32, i32* @UNI_IE_GIT, align 4
  %90 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %91 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %90, i32 0, i32 9
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = bitcast i32* %94 to %union.uni_ieall*
  %96 = load %struct.unicx*, %struct.unicx** %4, align 8
  %97 = call i32 @uni_check_ie(i32 %89, %union.uni_ieall* %95, %struct.unicx* %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %88
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %84

103:                                              ; preds = %84
  %104 = load %struct.unicx*, %struct.unicx** %4, align 8
  %105 = getelementptr inbounds %struct.unicx, %struct.unicx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %110 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @IE_ISPRESENT(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %124

115:                                              ; preds = %103
  %116 = load i32, i32* @UNI_IE_UU, align 4
  %117 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %118 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %117, i32 0, i32 8
  %119 = bitcast i32* %118 to %union.uni_ieall*
  %120 = load %struct.unicx*, %struct.unicx** %4, align 8
  %121 = call i32 @uni_check_ie(i32 %116, %union.uni_ieall* %119, %struct.unicx* %120)
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %115, %108
  %125 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %126 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %127 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %126, i32 0, i32 7
  %128 = bitcast i32* %127 to %union.uni_ieall*
  %129 = load %struct.unicx*, %struct.unicx** %4, align 8
  %130 = call i32 @uni_check_ie(i32 %125, %union.uni_ieall* %128, %struct.unicx* %129)
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* @UNI_IE_EXQOS, align 4
  %134 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %135 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %134, i32 0, i32 6
  %136 = bitcast i32* %135 to %union.uni_ieall*
  %137 = load %struct.unicx*, %struct.unicx** %4, align 8
  %138 = call i32 @uni_check_ie(i32 %133, %union.uni_ieall* %136, %struct.unicx* %137)
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load %struct.unicx*, %struct.unicx** %4, align 8
  %142 = getelementptr inbounds %struct.unicx, %struct.unicx* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %124
  %146 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %147 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @IE_ISPRESENT(i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %161

152:                                              ; preds = %124
  %153 = load i32, i32* @UNI_IE_FACILITY, align 4
  %154 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %155 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %154, i32 0, i32 5
  %156 = bitcast i32* %155 to %union.uni_ieall*
  %157 = load %struct.unicx*, %struct.unicx** %4, align 8
  %158 = call i32 @uni_check_ie(i32 %153, %union.uni_ieall* %156, %struct.unicx* %157)
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %152, %145
  %162 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  %163 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %164 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %163, i32 0, i32 4
  %165 = bitcast i32* %164 to %union.uni_ieall*
  %166 = load %struct.unicx*, %struct.unicx** %4, align 8
  %167 = call i32 @uni_check_ie(i32 %162, %union.uni_ieall* %165, %struct.unicx* %166)
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @UNI_IE_ABRADD, align 4
  %171 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %172 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %171, i32 0, i32 3
  %173 = bitcast i32* %172 to %union.uni_ieall*
  %174 = load %struct.unicx*, %struct.unicx** %4, align 8
  %175 = call i32 @uni_check_ie(i32 %170, %union.uni_ieall* %173, %struct.unicx* %174)
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load %struct.unicx*, %struct.unicx** %4, align 8
  %179 = getelementptr inbounds %struct.unicx, %struct.unicx* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %161
  %183 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %184 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @IE_ISPRESENT(i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %198

189:                                              ; preds = %161
  %190 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %191 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %192 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %191, i32 0, i32 2
  %193 = bitcast i32* %192 to %union.uni_ieall*
  %194 = load %struct.unicx*, %struct.unicx** %4, align 8
  %195 = call i32 @uni_check_ie(i32 %190, %union.uni_ieall* %193, %struct.unicx* %194)
  %196 = load i32, i32* %5, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %189, %182
  %199 = load %struct.unicx*, %struct.unicx** %4, align 8
  %200 = getelementptr inbounds %struct.unicx, %struct.unicx* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %205 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @IE_ISPRESENT(i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  br label %219

210:                                              ; preds = %198
  %211 = load i32, i32* @UNI_IE_REPORT, align 4
  %212 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %213 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %212, i32 0, i32 1
  %214 = bitcast i32* %213 to %union.uni_ieall*
  %215 = load %struct.unicx*, %struct.unicx** %4, align 8
  %216 = call i32 @uni_check_ie(i32 %211, %union.uni_ieall* %214, %struct.unicx* %215)
  %217 = load i32, i32* %5, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %210, %203
  %220 = load i32, i32* @UNI_IE_UNREC, align 4
  %221 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %222 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %221, i32 0, i32 0
  %223 = bitcast i32* %222 to %union.uni_ieall*
  %224 = load %struct.unicx*, %struct.unicx** %4, align 8
  %225 = call i32 @uni_check_ie(i32 %220, %union.uni_ieall* %223, %struct.unicx* %224)
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
