; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm_eap = type { i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No room for EAP Method fixed fields\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No room for EAP Method subfield\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP Method: len=%u method=%u auth_count=%u\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"No room for Authentication Parameter subfield header\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"No room for Authentication Parameter subfield\00", align 1
@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"EAP-TTLS/PAP\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EAP-TTLS/CHAP\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"EAP-TTLS/MSCHAP\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"EAP-TTLS/MSCHAPV2\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Inner EAP method: %u\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Credential Type: %u\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Tunneled EAP Method Credential Type: %u\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Unsupported Authentication Parameter: id=%u len=%u\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Authentication Parameter Value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nai_realm_eap*, i32*, i32*)* @nai_realm_parse_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nai_realm_parse_eap(%struct.nai_realm_eap* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nai_realm_eap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nai_realm_eap* %0, %struct.nai_realm_eap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = icmp slt i64 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %191

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = icmp sgt i64 %29, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %24
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %191

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  %51 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %52 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %59 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %186, %43
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %189

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = icmp slt i64 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %191

78:                                               ; preds = %67
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = icmp sgt i64 %86, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %191

97:                                               ; preds = %78
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %172 [
    i32 133, label %99
    i32 134, label %130
    i32 135, label %144
    i32 132, label %158
  ]

99:                                               ; preds = %97
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %181

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %107 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %109 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %181

114:                                              ; preds = %103
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %129 [
    i32 128, label %117
    i32 131, label %120
    i32 130, label %123
    i32 129, label %126
  ]

117:                                              ; preds = %114
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %129

120:                                              ; preds = %114
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %129

123:                                              ; preds = %114
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %129

126:                                              ; preds = %114
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %129

129:                                              ; preds = %114, %126, %123, %120, %117
  br label %181

130:                                              ; preds = %97
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %181

134:                                              ; preds = %130
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %138 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %141 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %142)
  br label %181

144:                                              ; preds = %97
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %181

148:                                              ; preds = %144
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %152 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %155 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %156)
  br label %181

158:                                              ; preds = %97
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %181

162:                                              ; preds = %158
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %166 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %169 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  br label %181

172:                                              ; preds = %97
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* @MSG_DEBUG, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @wpa_hexdump(i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %172, %162, %161, %148, %147, %134, %133, %129, %113, %102
  %182 = load i32, i32* %13, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %6, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %63

189:                                              ; preds = %63
  %190 = load i32*, i32** %11, align 8
  store i32* %190, i32** %4, align 8
  br label %191

191:                                              ; preds = %189, %94, %75, %40, %21
  %192 = load i32*, i32** %4, align 8
  ret i32* %192
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
