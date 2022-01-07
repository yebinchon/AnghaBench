; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_parse_proposal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_parse_proposal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.ikev2_proposal_data*, i32*, i32*)* @ikev2_parse_proposal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_parse_proposal(%struct.ikev2_initiator_data* %0, %struct.ikev2_proposal_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ikev2_initiator_data*, align 8
  %7 = alloca %struct.ikev2_proposal_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ikev2_proposal*, align 8
  %15 = alloca i32, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %6, align 8
  store %struct.ikev2_proposal_data* %1, %struct.ikev2_proposal_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp slt i64 %21, 40
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to %struct.ikev2_proposal*
  store %struct.ikev2_proposal* %28, %struct.ikev2_proposal** %14, align 8
  %29 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %30 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @WPA_GET_BE16(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 40
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp sgt i64 %37, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35, %26
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %5, align 4
  br label %210

49:                                               ; preds = %35
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %52 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %57 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %61 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59, i64 %62)
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %66 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %69 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %73 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %49
  %77 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %78 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

84:                                               ; preds = %76, %49
  %85 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %86 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IKEV2_PROTOCOL_IKE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

93:                                               ; preds = %84
  %94 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %95 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %98 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %93
  %102 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %103 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %106 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %112 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %115 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %119

116:                                              ; preds = %101
  %117 = load i32, i32* @MSG_INFO, align 4
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %122 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %121, i64 1
  %123 = bitcast %struct.ikev2_proposal* %122 to i32*
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32* %127, i32** %10, align 8
  %128 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %129 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = ptrtoint i32* %132 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = icmp sgt i64 %131, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %120
  %140 = load i32, i32* @MSG_INFO, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

142:                                              ; preds = %120
  %143 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %144 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %151 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @wpa_hexdump(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %149, i32 %152)
  %154 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %155 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %11, align 8
  br label %160

160:                                              ; preds = %147, %142
  %161 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %162 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @MSG_INFO, align 4
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

168:                                              ; preds = %160
  %169 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %170 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

176:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %198, %176
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %14, align 8
  %180 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %177
  %185 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %186 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @ikev2_parse_transform(%struct.ikev2_initiator_data* %185, %struct.ikev2_proposal_data* %186, i32* %187, i32* %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 -1, i32* %5, align 4
  br label %210

193:                                              ; preds = %184
  %194 = load i32, i32* %15, align 4
  %195 = load i32*, i32** %11, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %11, align 8
  br label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %177

201:                                              ; preds = %177
  %202 = load i32*, i32** %11, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = icmp ne i32* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* @MSG_INFO, align 4
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %206, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %210

208:                                              ; preds = %201
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %208, %205, %192, %173, %165, %139, %116, %90, %81, %45, %23
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @ikev2_parse_transform(%struct.ikev2_initiator_data*, %struct.ikev2_proposal_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
