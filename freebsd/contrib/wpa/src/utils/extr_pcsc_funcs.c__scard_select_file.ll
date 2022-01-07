; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c__scard_select_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c__scard_select_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i32 }

@SIM_CMD_SELECT = common dso_local global i8 0, align 1
@SIM_CMD_GET_RESPONSE = common dso_local global i8 0, align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@USIM_CLA = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SCARD: select file %04x\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SCARD: select file by AID\00", align 1
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"SCARD: SCardTransmit failed (err=0x%lx)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"SCARD: unexpected resp len %d (expected 2)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"SCARD: Security status not satisfied (PIN_WLAN)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SCARD: used CLA not supported\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"SCARD: unexpected response 0x%02x (expected 0x61, 0x6c, or 0x9f)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"SCARD: trying to get response (%d bytes)\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"SCARD: SCardTransmit err=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i16, i8*, i64*, i64, i8*, i64)* @_scard_select_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scard_select_file(%struct.scard_data* %0, i16 zeroext %1, i8* %2, i64* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.scard_data*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x i8], align 1
  %18 = alloca [50 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca [5 x i8], align 1
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %9, align 8
  store i16 %1, i16* %10, align 2
  store i8* %2, i8** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = bitcast [50 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 50, i1 false)
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  %25 = load i8, i8* @SIM_CMD_SELECT, align 1
  store i8 %25, i8* %24, align 1
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %27 = load i8, i8* @SIM_CMD_GET_RESPONSE, align 1
  store i8 %27, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %26, i64 1
  %29 = getelementptr inbounds i8, i8* %26, i64 5
  br label %30

30:                                               ; preds = %30, %7
  %31 = phi i8* [ %28, %7 ], [ %32, %30 ]
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = icmp eq i8* %32, %29
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @SCARD_USIM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8, i8* @USIM_CLA, align 1
  %40 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  store i8 %39, i8* %40, align 16
  %41 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 3
  store i8 4, i8* %41, align 1
  %42 = load i8, i8* @USIM_CLA, align 1
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i16, i16* %10, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %53, i64 %54)
  %56 = load i64, i64* %15, align 8
  %57 = add i64 5, %56
  %58 = icmp ugt i64 %57, 50
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  br label %184

60:                                               ; preds = %51
  %61 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 2
  store i8 4, i8* %61, align 2
  %62 = load i64, i64* %15, align 8
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 4
  store i8 %63, i8* %64, align 4
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8*, i8** %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @os_memcpy(i8* %66, i8* %67, i64 %68)
  %70 = load i64, i64* %15, align 8
  %71 = add i64 5, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %19, align 4
  br label %84

73:                                               ; preds = %44
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = ashr i32 %75, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 5
  store i8 %77, i8* %78, align 1
  %79 = load i16, i16* %10, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 6
  store i8 %82, i8* %83, align 2
  store i32 7, i32* %19, align 4
  br label %84

84:                                               ; preds = %73, %60
  store i64 3, i64* %21, align 8
  %85 = load %struct.scard_data*, %struct.scard_data** %9, align 8
  %86 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  %87 = load i32, i32* %19, align 4
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %89 = call i64 @scard_transmit(%struct.scard_data* %85, i8* %86, i32 %87, i8* %88, i64* %21)
  store i64 %89, i64* %16, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @MSG_WARNING, align 4
  %95 = load i64, i64* %16, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  store i32 -1, i32* %8, align 4
  br label %184

97:                                               ; preds = %84
  %98 = load i64, i64* %21, align 8
  %99 = icmp ne i64 %98, 2
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @MSG_WARNING, align 4
  %102 = load i64, i64* %21, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %8, align 4
  br label %184

105:                                              ; preds = %97
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 152
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @MSG_WARNING, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %184

118:                                              ; preds = %110, %105
  %119 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 110
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %184

126:                                              ; preds = %118
  %127 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 108
  br i1 %130, label %131, label %147

131:                                              ; preds = %126
  %132 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %134, 159
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 97
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* @MSG_WARNING, align 4
  %143 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  store i32 -1, i32* %8, align 4
  br label %184

147:                                              ; preds = %136, %131, %126
  %148 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 4
  store i8 %149, i8* %150, align 1
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %22, align 8
  %158 = load %struct.scard_data*, %struct.scard_data** %9, align 8
  %159 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %160 = load i8*, i8** %11, align 8
  %161 = call i64 @scard_transmit(%struct.scard_data* %158, i8* %159, i32 5, i8* %160, i64* %22)
  store i64 %161, i64* %16, align 8
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %147
  %166 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  %169 = load i64, i64* %22, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i64
  br label %177

175:                                              ; preds = %165
  %176 = load i64, i64* %22, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = phi i64 [ %174, %171 ], [ %176, %175 ]
  %179 = load i64*, i64** %12, align 8
  store i64 %178, i64* %179, align 8
  store i32 0, i32* %8, align 4
  br label %184

180:                                              ; preds = %147
  %181 = load i32, i32* @MSG_WARNING, align 4
  %182 = load i64, i64* %16, align 8
  %183 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %182)
  store i32 -1, i32* %8, align 4
  br label %184

184:                                              ; preds = %180, %177, %141, %123, %115, %100, %93, %59
  %185 = load i32, i32* %8, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

declare dso_local i64 @scard_transmit(%struct.scard_data*, i8*, i32, i8*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
