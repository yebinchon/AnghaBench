; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_parse_proposal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_parse_proposal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_proposal_data = type { i32 }
%struct.ikev2_proposal = type { i32, i32, i64, i32, i64, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IKEV2: Too short proposal\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"IKEV2: Invalid proposal length %d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"IKEV2: SAi1 Proposal # %d\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"IKEV2:   Type: %d  Proposal Length: %d  Protocol ID: %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"IKEV2:   SPI Size: %d  Transforms: %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"IKEV2: Unexpected Proposal type\00", align 1
@IKEV2_PROTOCOL_IKE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"IKEV2: Unexpected Protocol ID (only IKE allowed for EAP-IKEv2)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"IKEV2: Unexpected Proposal #\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"IKEV2: Not enough room for SPI in proposal\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"IKEV2:    SPI\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"IKEV2: Unexpected SPI Size\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"IKEV2: At least one transform required\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"IKEV2: Unexpected data after transforms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_proposal_data*, i32*, i32*)* @ikev2_parse_proposal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_parse_proposal(%struct.ikev2_proposal_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_proposal_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ikev2_proposal*, align 8
  %13 = alloca i32, align 4
  store %struct.ikev2_proposal_data* %0, %struct.ikev2_proposal_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = icmp slt i64 %19, 40
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = bitcast i32* %25 to %struct.ikev2_proposal*
  store %struct.ikev2_proposal* %26, %struct.ikev2_proposal** %12, align 8
  %27 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %28 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @WPA_GET_BE16(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 40
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = icmp sgt i64 %35, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33, %24
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %207

47:                                               ; preds = %33
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %50 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %55 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %59 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i64 %60)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %64 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %67 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %65, i64 %68)
  %70 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %71 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %47
  %75 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %76 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

82:                                               ; preds = %74, %47
  %83 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %84 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IKEV2_PROTOCOL_IKE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

91:                                               ; preds = %82
  %92 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %93 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %96 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %101 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %104 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %110 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %113 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %117

114:                                              ; preds = %99
  %115 = load i32, i32* @MSG_INFO, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %120 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %119, i64 1
  %121 = bitcast %struct.ikev2_proposal* %120 to i32*
  store i32* %121, i32** %9, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32* %125, i32** %8, align 8
  %126 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %127 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = icmp sgt i64 %129, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %118
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

140:                                              ; preds = %118
  %141 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %142 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %149 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @wpa_hexdump(i32 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %147, i32 %150)
  %152 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %153 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %9, align 8
  br label %158

158:                                              ; preds = %145, %140
  %159 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %160 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @MSG_INFO, align 4
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

166:                                              ; preds = %158
  %167 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %168 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @MSG_INFO, align 4
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

174:                                              ; preds = %166
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %195, %174
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %12, align 8
  %178 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %175
  %183 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @ikev2_parse_transform(%struct.ikev2_proposal_data* %183, i32* %184, i32* %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i32 -1, i32* %4, align 4
  br label %207

190:                                              ; preds = %182
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %9, align 8
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %175

198:                                              ; preds = %175
  %199 = load i32*, i32** %9, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = icmp ne i32* %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @MSG_INFO, align 4
  %204 = call i32 (i32, i8*, ...) @wpa_printf(i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

205:                                              ; preds = %198
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %202, %189, %171, %163, %137, %114, %88, %79, %43, %21
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @ikev2_parse_transform(%struct.ikev2_proposal_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
