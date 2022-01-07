; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_verify_eapol_key_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_verify_eapol_key_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, %struct.TYPE_9__, %struct.wpa_eapol_key, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.wpa_eapol_key = type { %struct.wpa_eapol_key*, i32, i32 }

@WPA_EAPOL_KEY_MIC_MAX_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"WPA: Invalid EAPOL-Key MIC when using TPTK - ignoring TPTK\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPA: Invalid EAPOL-Key MIC - dropping packet\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"WPA: Could not verify EAPOL-Key MIC - dropping packet\00", align 1
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, %struct.TYPE_9__*, i64)* @wpa_supplicant_verify_eapol_key_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2, %struct.TYPE_9__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca %struct.wpa_eapol_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @WPA_EAPOL_KEY_MIC_MAX_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.TYPE_9__, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %22 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @wpa_mic_len(i32 %23, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %29 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %28, i64 1
  %30 = load i64, i64* %15, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @os_memcpy(%struct.TYPE_9__* %20, %struct.wpa_eapol_key* %29, i32 %31)
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %5
  %38 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %39 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %38, i64 1
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @os_memset(%struct.wpa_eapol_key* %39, i32 0, i64 %40)
  %42 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %43 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %47 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %51 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %57 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %56, i64 1
  %58 = bitcast %struct.wpa_eapol_key* %57 to %struct.TYPE_9__*
  %59 = call i64 @wpa_eapol_key_mic(i32 %45, i32 %49, i32 %52, i32 %53, %struct.TYPE_9__* %54, i64 %55, %struct.TYPE_9__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %37
  %62 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %63 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %62, i64 1
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @os_memcmp_const(%struct.TYPE_9__* %20, %struct.wpa_eapol_key* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61, %37
  %68 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %69 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MSG_WARNING, align 4
  %74 = call i32 @wpa_msg(i32 %72, i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %90

75:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  %76 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %77 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %76, i32 0, i32 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %79 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %81 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %80, i32 0, i32 6
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %82, i32 0, i32 7
  %84 = call i32 @os_memcpy(%struct.TYPE_9__* %81, %struct.wpa_eapol_key* %83, i32 8)
  %85 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %86 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %85, i32 0, i32 7
  %87 = call i32 @os_memset(%struct.wpa_eapol_key* %86, i32 0, i64 16)
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %67
  br label %91

91:                                               ; preds = %90, %5
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %138, label %94

94:                                               ; preds = %91
  %95 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %96 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %94
  %100 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %101 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %100, i64 1
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @os_memset(%struct.wpa_eapol_key* %101, i32 0, i64 %102)
  %104 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %105 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %109 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %113 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %119 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %118, i64 1
  %120 = bitcast %struct.wpa_eapol_key* %119 to %struct.TYPE_9__*
  %121 = call i64 @wpa_eapol_key_mic(i32 %107, i32 %111, i32 %114, i32 %115, %struct.TYPE_9__* %116, i64 %117, %struct.TYPE_9__* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %99
  %124 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %125 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %124, i64 1
  %126 = load i64, i64* %15, align 8
  %127 = call i64 @os_memcmp_const(%struct.TYPE_9__* %20, %struct.wpa_eapol_key* %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123, %99
  %130 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %131 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %130, i32 0, i32 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MSG_WARNING, align 4
  %136 = call i32 @wpa_msg(i32 %134, i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %160

137:                                              ; preds = %123
  store i32 1, i32* %14, align 4
  br label %138

138:                                              ; preds = %137, %94, %91
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %143 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %142, i32 0, i32 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MSG_WARNING, align 4
  %148 = call i32 @wpa_msg(i32 %146, i32 %147, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %160

149:                                              ; preds = %138
  %150 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %151 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %150, i32 0, i32 3
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %154 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %153, i32 0, i32 0
  %155 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %154, align 8
  %156 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %157 = call i32 @os_memcpy(%struct.TYPE_9__* %152, %struct.wpa_eapol_key* %155, i32 %156)
  %158 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %159 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %160

160:                                              ; preds = %149, %141, %129
  %161 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wpa_mic_len(i32, i32) #2

declare dso_local i32 @os_memcpy(%struct.TYPE_9__*, %struct.wpa_eapol_key*, i32) #2

declare dso_local i32 @os_memset(%struct.wpa_eapol_key*, i32, i64) #2

declare dso_local i64 @wpa_eapol_key_mic(i32, i32, i32, i32, %struct.TYPE_9__*, i64, %struct.TYPE_9__*) #2

declare dso_local i64 @os_memcmp_const(%struct.TYPE_9__*, %struct.wpa_eapol_key*, i64) #2

declare dso_local i32 @wpa_msg(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
