; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_parse_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_parse_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ikev2_proposal_data = type { i8*, i8*, i8*, i8* }
%struct.ikev2_transform = type { i32, i32, i32*, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IKEV2: Too short transform\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"IKEV2: Invalid transform length %d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"IKEV2:   Transform:\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"IKEV2:     Type: %d  Transform Length: %d  Transform Type: %d  Transform ID: %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"IKEV2: Unexpected Transform type\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"IKEV2:     Transform Attributes\00", align 1
@ENCR_AES_CBC = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"IKEV2: No Transform Attr for AES\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"IKEV2: Not a Key Size attribute for AES\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"IKEV2: Unsupported AES key size %d bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.ikev2_proposal_data*, i32*, i32*)* @ikev2_parse_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_parse_transform(%struct.ikev2_initiator_data* %0, %struct.ikev2_proposal_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ikev2_initiator_data*, align 8
  %7 = alloca %struct.ikev2_proposal_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ikev2_transform*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %6, align 8
  store %struct.ikev2_proposal_data* %1, %struct.ikev2_proposal_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = icmp slt i64 %19, 24
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %204

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %26, %struct.ikev2_transform** %11, align 8
  %27 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %28 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @WPA_GET_BE16(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 24
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = icmp sgt i64 %35, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33, %24
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %5, align 4
  br label %204

47:                                               ; preds = %33
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %13, align 8
  %52 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %53 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @WPA_GET_BE16(i32* %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %12, align 8
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %62 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %66 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64, i32 %67, i8* %68)
  %70 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %71 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %47
  %75 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %76 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %204

82:                                               ; preds = %74, %47
  %83 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %84 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %83, i64 1
  %85 = bitcast %struct.ikev2_transform* %84 to i32*
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = icmp ult i32* %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @wpa_hexdump(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* %91, i32 %98)
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.ikev2_transform*, %struct.ikev2_transform** %11, align 8
  %102 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %202 [
    i32 130, label %104
    i32 128, label %154
    i32 129, label %170
    i32 131, label %186
  ]

104:                                              ; preds = %100
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @ikev2_get_encr(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %104
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %111 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %109, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %108
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** @ENCR_AES_CBC, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %115
  %120 = load i32*, i32** %13, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = icmp ne i64 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %202

130:                                              ; preds = %119
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @WPA_GET_BE16(i32* %131)
  %133 = icmp ne i32 %132, 32782
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %202

137:                                              ; preds = %130
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = call i32 @WPA_GET_BE16(i32* %139)
  %141 = icmp ne i32 %140, 128
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = call i32 @WPA_GET_BE16(i32* %145)
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  br label %202

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %115
  %150 = load i8*, i8** %12, align 8
  %151 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %152 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %108, %104
  br label %202

154:                                              ; preds = %100
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @ikev2_get_prf(i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i8*, i8** %12, align 8
  %160 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %161 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = icmp eq i8* %159, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i8*, i8** %12, align 8
  %167 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %168 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %165, %158, %154
  br label %202

170:                                              ; preds = %100
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @ikev2_get_integ(i8* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i8*, i8** %12, align 8
  %176 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %177 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp eq i8* %175, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i8*, i8** %12, align 8
  %183 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %184 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %174, %170
  br label %202

186:                                              ; preds = %100
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @dh_groups_get(i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i8*, i8** %12, align 8
  %192 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %193 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = icmp eq i8* %191, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i8*, i8** %12, align 8
  %199 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %7, align 8
  %200 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %197, %190, %186
  br label %202

202:                                              ; preds = %100, %201, %185, %169, %153, %142, %134, %127
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %79, %43, %21
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @ikev2_get_encr(i8*) #1

declare dso_local i32 @ikev2_get_prf(i8*) #1

declare dso_local i32 @ikev2_get_integ(i8*) #1

declare dso_local i32 @dh_groups_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
