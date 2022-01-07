; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_parse_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_parse_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_proposal_data*, i32*, i32*)* @ikev2_parse_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_parse_transform(%struct.ikev2_proposal_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_proposal_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ikev2_transform*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.ikev2_proposal_data* %0, %struct.ikev2_proposal_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = icmp slt i64 %17, 24
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %24, %struct.ikev2_transform** %9, align 8
  %25 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %26 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @WPA_GET_BE16(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 24
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = icmp sgt i64 %33, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31, %22
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %4, align 4
  br label %174

45:                                               ; preds = %31
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %11, align 8
  %50 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %51 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @WPA_GET_BE16(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %10, align 8
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %60 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %64 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62, i32 %65, i8* %66)
  %68 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %69 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %45
  %73 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %74 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

80:                                               ; preds = %72, %45
  %81 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %82 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %81, i64 1
  %83 = bitcast %struct.ikev2_transform* %82 to i32*
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ult i32* %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @wpa_hexdump(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* %89, i32 %96)
  br label %98

98:                                               ; preds = %87, %80
  %99 = load %struct.ikev2_transform*, %struct.ikev2_transform** %9, align 8
  %100 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %172 [
    i32 130, label %102
    i32 128, label %145
    i32 129, label %154
    i32 131, label %163
  ]

102:                                              ; preds = %98
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @ikev2_get_encr(i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** @ENCR_AES_CBC, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = icmp ne i64 %116, 4
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %172

121:                                              ; preds = %110
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @WPA_GET_BE16(i32* %122)
  %124 = icmp ne i32 %123, 32782
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %172

128:                                              ; preds = %121
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = call i32 @WPA_GET_BE16(i32* %130)
  %132 = icmp ne i32 %131, 128
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = call i32 @WPA_GET_BE16(i32* %136)
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  br label %172

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %106
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %143 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %102
  br label %172

145:                                              ; preds = %98
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @ikev2_get_prf(i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8*, i8** %10, align 8
  %151 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %152 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %145
  br label %172

154:                                              ; preds = %98
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 @ikev2_get_integ(i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %161 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %158, %154
  br label %172

163:                                              ; preds = %98
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 @dh_groups_get(i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.ikev2_proposal_data*, %struct.ikev2_proposal_data** %5, align 8
  %170 = getelementptr inbounds %struct.ikev2_proposal_data, %struct.ikev2_proposal_data* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %167, %163
  br label %172

172:                                              ; preds = %98, %171, %162, %153, %144, %133, %125, %118
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %77, %41, %19
  %175 = load i32, i32* %4, align 4
  ret i32 %175
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
