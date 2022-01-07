; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_parse_fsp_templ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_parse_fsp_templ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USIM_FSP_TEMPL_TAG = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"SCARD: file header did not start with FSP template tag\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SCARD: file header FSP template\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"SCARD: file header TLV 0x%02x len=%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SCARD: File Descriptor TLV\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SCARD: File Identifier TLV\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"SCARD: DF name (AID) TLV\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SCARD: Proprietary information TLV\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"SCARD: Life Cycle Status Integer TLV\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SCARD: File size TLV\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SCARD: file_size=%d\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SCARD: Total file size TLV\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"SCARD: PIN Status Template DO TLV\00", align 1
@USIM_PS_DO_TAG = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"SCARD: PS_DO=0x%02x\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"SCARD: Short File Identifier (SFI) TLV\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"SCARD: Security attribute TLV\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SCARD: Unrecognized TLV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i32*)* @scard_parse_fsp_templ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_parse_fsp_templ(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @USIM_FSP_TEMPL_TAG, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %241

37:                                               ; preds = %23
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp uge i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %241

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %55, %44
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i8
  %75 = call i32 @wpa_hexdump(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8 zeroext %74)
  br label %76

76:                                               ; preds = %239, %64
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = icmp sge i64 %81, 2
  br i1 %82, label %83, label %240

83:                                               ; preds = %76
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %12, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %13, align 1
  %90 = load i32, i32* @MSG_MSGDUMP, align 4
  %91 = load i8, i8* %12, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %13, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %10, align 8
  %98 = load i8, i8* %13, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = icmp ugt i32 %99, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %83
  br label %240

108:                                              ; preds = %83
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  switch i32 %110, label %224 [
    i32 138, label %111
    i32 137, label %116
    i32 139, label %121
    i32 133, label %126
    i32 135, label %131
    i32 136, label %136
    i32 128, label %171
    i32 134, label %176
    i32 129, label %214
    i32 132, label %219
    i32 131, label %219
    i32 130, label %219
  ]

111:                                              ; preds = %108
  %112 = load i32, i32* @MSG_MSGDUMP, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %13, align 1
  %115 = call i32 @wpa_hexdump(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8 zeroext %114)
  br label %229

116:                                              ; preds = %108
  %117 = load i32, i32* @MSG_MSGDUMP, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %13, align 1
  %120 = call i32 @wpa_hexdump(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8 zeroext %119)
  br label %229

121:                                              ; preds = %108
  %122 = load i32, i32* @MSG_MSGDUMP, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %13, align 1
  %125 = call i32 @wpa_hexdump(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8 zeroext %124)
  br label %229

126:                                              ; preds = %108
  %127 = load i32, i32* @MSG_MSGDUMP, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i8, i8* %13, align 1
  %130 = call i32 @wpa_hexdump(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %128, i8 zeroext %129)
  br label %229

131:                                              ; preds = %108
  %132 = load i32, i32* @MSG_MSGDUMP, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = load i8, i8* %13, align 1
  %135 = call i32 @wpa_hexdump(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %133, i8 zeroext %134)
  br label %229

136:                                              ; preds = %108
  %137 = load i32, i32* @MSG_MSGDUMP, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %13, align 1
  %140 = call i32 @wpa_hexdump(i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %138, i8 zeroext %139)
  %141 = load i8, i8* %13, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %148, label %144

144:                                              ; preds = %136
  %145 = load i8, i8* %13, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %170

148:                                              ; preds = %144, %136
  %149 = load i32*, i32** %9, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %170

151:                                              ; preds = %148
  %152 = load i8, i8* %13, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load i32*, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  br label %165

161:                                              ; preds = %151
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @WPA_GET_BE16(i8* %162)
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %165, %148, %144
  br label %229

171:                                              ; preds = %108
  %172 = load i32, i32* @MSG_MSGDUMP, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = load i8, i8* %13, align 1
  %175 = call i32 @wpa_hexdump(i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %173, i8 zeroext %174)
  br label %229

176:                                              ; preds = %108
  %177 = load i32, i32* @MSG_MSGDUMP, align 4
  %178 = load i8*, i8** %10, align 8
  %179 = load i8, i8* %13, align 1
  %180 = call i32 @wpa_hexdump(i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %178, i8 zeroext %179)
  %181 = load i8, i8* %13, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp sge i32 %182, 2
  br i1 %183, label %184, label %213

184:                                              ; preds = %176
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8, i8* @USIM_PS_DO_TAG, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %184
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp sge i32 %196, 1
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %206)
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32*, i32** %8, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %201, %198, %192, %184, %176
  br label %229

214:                                              ; preds = %108
  %215 = load i32, i32* @MSG_MSGDUMP, align 4
  %216 = load i8*, i8** %10, align 8
  %217 = load i8, i8* %13, align 1
  %218 = call i32 @wpa_hexdump(i32 %215, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %216, i8 zeroext %217)
  br label %229

219:                                              ; preds = %108, %108, %108
  %220 = load i32, i32* @MSG_MSGDUMP, align 4
  %221 = load i8*, i8** %10, align 8
  %222 = load i8, i8* %13, align 1
  %223 = call i32 @wpa_hexdump(i32 %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %221, i8 zeroext %222)
  br label %229

224:                                              ; preds = %108
  %225 = load i32, i32* @MSG_MSGDUMP, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = load i8, i8* %13, align 1
  %228 = call i32 @wpa_hexdump(i32 %225, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %226, i8 zeroext %227)
  br label %229

229:                                              ; preds = %224, %219, %214, %213, %171, %170, %131, %126, %121, %116, %111
  %230 = load i8, i8* %13, align 1
  %231 = zext i8 %230 to i32
  %232 = load i8*, i8** %10, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %10, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = load i8*, i8** %11, align 8
  %237 = icmp eq i8* %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  br label %241

239:                                              ; preds = %229
  br label %76

240:                                              ; preds = %107, %76
  store i32 -1, i32* %5, align 4
  br label %241

241:                                              ; preds = %240, %238, %43, %34
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i8 zeroext) #1

declare dso_local i32 @WPA_GET_BE16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
