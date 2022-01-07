; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i8*, i32, i32, i32* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Line %d: Invalid passphrase length %lu (expected: 8..63) '%s'.\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PSK (ASCII passphrase)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Line %d: Invalid passphrase character\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Line %d: Invalid PSK '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)* @wpa_config_parse_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_psk(%struct.parse_data* %0, %struct.wpa_ssid* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_data*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.parse_data* %0, %struct.parse_data** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %98

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @os_strrchr(i8* %19, i8 signext 34)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %11, align 8
  br label %32

29:                                               ; preds = %16
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @os_strlen(i8* %30)
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %33, 8
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = icmp ugt i64 %36, 63
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i8* %42)
  store i32 -1, i32* %5, align 4
  br label %135

44:                                               ; preds = %35
  %45 = load i32, i32* @MSG_MSGDUMP, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @wpa_hexdump_ascii_key(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %47, i64 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @has_ctrl_char(i32* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* @MSG_ERROR, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %5, align 4
  br label %135

59:                                               ; preds = %44
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @os_strlen(i8* %67)
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %73 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @os_memcmp(i8* %74, i8* %75, i64 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %135

80:                                               ; preds = %71, %64, %59
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %82 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %84 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @str_clear_free(i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i8* @dup_binstr(i8* %87, i64 %88)
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %93 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %135

97:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %135

98:                                               ; preds = %4
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %101 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PMK_LEN, align 4
  %104 = call i64 @hexstr2bin(i8* %99, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %98
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* @PMK_LEN, align 4
  %109 = mul nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106, %98
  %116 = load i32, i32* @MSG_ERROR, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %117, i8* %118)
  store i32 -1, i32* %5, align 4
  br label %135

120:                                              ; preds = %106
  %121 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %122 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @str_clear_free(i8* %123)
  %125 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %126 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %125, i32 0, i32 0
  store i8* null, i8** %126, align 8
  %127 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %128 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* @MSG_MSGDUMP, align 4
  %130 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %131 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PMK_LEN, align 4
  %134 = call i32 @wpa_hexdump_key(i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %120, %115, %97, %96, %79, %55, %38
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @has_ctrl_char(i32*, i64) #1

declare dso_local i64 @os_memcmp(i8*, i8*, i64) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i8* @dup_binstr(i8*, i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
