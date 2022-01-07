; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_set_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32, i64, i32, i32*, i32*, i32**, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS: Invalid Version length %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WPS: Invalid Message Type length %u\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"WPS: Invalid Enrollee Nonce length %u\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"WPS: Invalid Registrar Nonce length %u\00", align 1
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"WPS: Invalid UUID-E length %u\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"WPS: Invalid UUID-R length %u\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"WPS: Invalid Authentication Type Flags length %u\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"WPS: Invalid Encryption Type Flags length %u\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"WPS: Invalid Connection Type Flags length %u\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"WPS: Invalid Config Methods length %u\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"WPS: Invalid Selected Registrar Config Methods length %u\00", align 1
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"WPS: Invalid Primary Device Type length %u\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"WPS: Invalid RF Bands length %u\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"WPS: Invalid Association State length %u\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"WPS: Invalid Configuration Error length %u\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"WPS: Invalid Device Password ID length %u\00", align 1
@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i32 0, align 4
@WPS_OOB_DEVICE_PASSWORD_LEN = common dso_local global i32 0, align 4
@WPS_OOB_DEVICE_PASSWORD_MIN_LEN = common dso_local global i32 0, align 4
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"WPS: Invalid OOB Device Password length %u\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"WPS: Invalid OS Version length %u\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"WPS: Invalid Wi-Fi Protected Setup State length %u\00", align 1
@WPS_AUTHENTICATOR_LEN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"WPS: Invalid Authenticator length %u\00", align 1
@WPS_HASH_LEN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"WPS: Invalid R-Hash1 length %u\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"WPS: Invalid R-Hash2 length %u\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"WPS: Invalid E-Hash1 length %u\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"WPS: Invalid E-Hash2 length %u\00", align 1
@WPS_SECRET_NONCE_LEN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"WPS: Invalid R-SNonce1 length %u\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"WPS: Invalid R-SNonce2 length %u\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"WPS: Invalid E-SNonce1 length %u\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"WPS: Invalid E-SNonce2 length %u\00", align 1
@WPS_KWA_LEN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [46 x i8] c"WPS: Invalid Key Wrap Authenticator length %u\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"WPS: Invalid Authentication Type length %u\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"WPS: Invalid Encryption Type length %u\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"WPS: Invalid Network Index length %u\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"WPS: Invalid Network Key Index length %u\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [35 x i8] c"WPS: Invalid MAC Address length %u\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"WPS: Invalid Selected Registrar length %u\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"WPS: Invalid Request Type length %u\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"WPS: Invalid Response Type length %u\00", align 1
@WPS_MANUFACTURER_MAX_LEN = common dso_local global i32 0, align 4
@WPS_MODEL_NAME_MAX_LEN = common dso_local global i32 0, align 4
@WPS_MODEL_NUMBER_MAX_LEN = common dso_local global i32 0, align 4
@WPS_SERIAL_NUMBER_MAX_LEN = common dso_local global i32 0, align 4
@WPS_DEV_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [42 x i8] c"WPS: Ignore too long Device Name (len=%u)\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"WPS: Ignore Public Key with unexpected length %u\00", align 1
@MAX_CRED_COUNT = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [55 x i8] c"WPS: Skipped Credential attribute (max %d credentials)\00", align 1
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [35 x i8] c"WPS: Ignore too long SSID (len=%u)\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"WPS: Invalid AP Setup Locked length %u\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"WPS: Invalid Requested Device Type length %u\00", align 1
@MAX_REQ_DEV_TYPE_COUNT = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [60 x i8] c"WPS: Skipped Requested Device Type attribute (max %u types)\00", align 1
@WPS_SEC_DEV_TYPE_MAX_LEN = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [45 x i8] c"WPS: Invalid Secondary Device Type length %u\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"WPS: Invalid AP Channel length %u\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"WPS: Unsupported attribute type 0x%x len=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_parse_attr*, i32, i32*, i32)* @wps_set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_set_attr(%struct.wps_parse_attr* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_parse_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %700 [
    i32 129, label %11
    i32 154, label %22
    i32 164, label %33
    i32 146, label %45
    i32 132, label %57
    i32 131, label %69
    i32 174, label %81
    i32 165, label %92
    i32 171, label %103
    i32 172, label %114
    i32 135, label %125
    i32 148, label %136
    i32 142, label %148
    i32 177, label %159
    i32 173, label %170
    i32 168, label %181
    i32 150, label %192
    i32 149, label %230
    i32 128, label %241
    i32 176, label %252
    i32 141, label %264
    i32 140, label %276
    i32 163, label %288
    i32 162, label %300
    i32 139, label %312
    i32 138, label %324
    i32 161, label %336
    i32 160, label %348
    i32 159, label %360
    i32 175, label %372
    i32 166, label %383
    i32 153, label %394
    i32 151, label %405
    i32 158, label %416
    i32 136, label %428
    i32 144, label %439
    i32 143, label %450
    i32 157, label %461
    i32 156, label %477
    i32 155, label %493
    i32 134, label %509
    i32 169, label %525
    i32 147, label %540
    i32 167, label %557
    i32 170, label %564
    i32 133, label %596
    i32 152, label %611
    i32 178, label %618
    i32 145, label %629
    i32 137, label %661
    i32 130, label %681
    i32 179, label %689
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %5, align 4
  br label %706

18:                                               ; preds = %11
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %21 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %20, i32 0, i32 64
  store i32* %19, i32** %21, align 8
  br label %705

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %5, align 4
  br label %706

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %32 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %31, i32 0, i32 63
  store i32* %30, i32** %32, align 8
  br label %705

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @WPS_NONCE_LEN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %5, align 4
  br label %706

41:                                               ; preds = %33
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 62
  store i32* %42, i32** %44, align 8
  br label %705

45:                                               ; preds = %4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @WPS_NONCE_LEN, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %5, align 4
  br label %706

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 61
  store i32* %54, i32** %56, align 8
  br label %705

57:                                               ; preds = %4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @WPS_UUID_LEN, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %5, align 4
  br label %706

65:                                               ; preds = %57
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 60
  store i32* %66, i32** %68, align 8
  br label %705

69:                                               ; preds = %4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @WPS_UUID_LEN, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  store i32 -1, i32* %5, align 4
  br label %706

77:                                               ; preds = %69
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 59
  store i32* %78, i32** %80, align 8
  br label %705

81:                                               ; preds = %4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %5, align 4
  br label %706

88:                                               ; preds = %81
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 58
  store i32* %89, i32** %91, align 8
  br label %705

92:                                               ; preds = %4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  store i32 -1, i32* %5, align 4
  br label %706

99:                                               ; preds = %92
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %102 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %101, i32 0, i32 57
  store i32* %100, i32** %102, align 8
  br label %705

103:                                              ; preds = %4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  store i32 -1, i32* %5, align 4
  br label %706

110:                                              ; preds = %103
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %113 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %112, i32 0, i32 56
  store i32* %111, i32** %113, align 8
  br label %705

114:                                              ; preds = %4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %5, align 4
  br label %706

121:                                              ; preds = %114
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %124 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %123, i32 0, i32 55
  store i32* %122, i32** %124, align 8
  br label %705

125:                                              ; preds = %4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 2
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  store i32 -1, i32* %5, align 4
  br label %706

132:                                              ; preds = %125
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %135 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %134, i32 0, i32 54
  store i32* %133, i32** %135, align 8
  br label %705

136:                                              ; preds = %4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %142)
  store i32 -1, i32* %5, align 4
  br label %706

144:                                              ; preds = %136
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %147 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %146, i32 0, i32 53
  store i32* %145, i32** %147, align 8
  br label %705

148:                                              ; preds = %4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @MSG_DEBUG, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  store i32 -1, i32* %5, align 4
  br label %706

155:                                              ; preds = %148
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %158 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %157, i32 0, i32 52
  store i32* %156, i32** %158, align 8
  br label %705

159:                                              ; preds = %4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 2
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %164)
  store i32 -1, i32* %5, align 4
  br label %706

166:                                              ; preds = %159
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %169 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %168, i32 0, i32 51
  store i32* %167, i32** %169, align 8
  br label %705

170:                                              ; preds = %4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 2
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %175)
  store i32 -1, i32* %5, align 4
  br label %706

177:                                              ; preds = %170
  %178 = load i32*, i32** %8, align 8
  %179 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %180 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %179, i32 0, i32 50
  store i32* %178, i32** %180, align 8
  br label %705

181:                                              ; preds = %4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 2
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %186)
  store i32 -1, i32* %5, align 4
  br label %706

188:                                              ; preds = %181
  %189 = load i32*, i32** %8, align 8
  %190 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %191 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %190, i32 0, i32 49
  store i32* %189, i32** %191, align 8
  br label %705

192:                                              ; preds = %4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %195 = add nsw i32 %194, 2
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %219, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %200 = add nsw i32 %199, 2
  %201 = load i32, i32* @WPS_OOB_DEVICE_PASSWORD_LEN, align 4
  %202 = add nsw i32 %200, %201
  %203 = icmp sgt i32 %198, %202
  br i1 %203, label %219, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %207 = add nsw i32 %206, 2
  %208 = load i32, i32* @WPS_OOB_DEVICE_PASSWORD_MIN_LEN, align 4
  %209 = add nsw i32 %207, %208
  %210 = icmp slt i32 %205, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %204
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32 @WPA_GET_BE16(i32* %215)
  %217 = load i32, i32* @DEV_PW_NFC_CONNECTION_HANDOVER, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %211, %197, %192
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %220, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %221)
  store i32 -1, i32* %5, align 4
  br label %706

223:                                              ; preds = %211, %204
  %224 = load i32*, i32** %8, align 8
  %225 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %226 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %225, i32 0, i32 48
  store i32* %224, i32** %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %229 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %705

230:                                              ; preds = %4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 4
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* @MSG_DEBUG, align 4
  %235 = load i32, i32* %9, align 4
  %236 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %235)
  store i32 -1, i32* %5, align 4
  br label %706

237:                                              ; preds = %230
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %240 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %239, i32 0, i32 47
  store i32* %238, i32** %240, align 8
  br label %705

241:                                              ; preds = %4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 1
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32, i32* @MSG_DEBUG, align 4
  %246 = load i32, i32* %9, align 4
  %247 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i32 %246)
  store i32 -1, i32* %5, align 4
  br label %706

248:                                              ; preds = %241
  %249 = load i32*, i32** %8, align 8
  %250 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %251 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %250, i32 0, i32 46
  store i32* %249, i32** %251, align 8
  br label %705

252:                                              ; preds = %4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @WPS_AUTHENTICATOR_LEN, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = load i32, i32* %9, align 4
  %259 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %257, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %258)
  store i32 -1, i32* %5, align 4
  br label %706

260:                                              ; preds = %252
  %261 = load i32*, i32** %8, align 8
  %262 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %263 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %262, i32 0, i32 45
  store i32* %261, i32** %263, align 8
  br label %705

264:                                              ; preds = %4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @WPS_HASH_LEN, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load i32, i32* @MSG_DEBUG, align 4
  %270 = load i32, i32* %9, align 4
  %271 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %269, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %270)
  store i32 -1, i32* %5, align 4
  br label %706

272:                                              ; preds = %264
  %273 = load i32*, i32** %8, align 8
  %274 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %275 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %274, i32 0, i32 44
  store i32* %273, i32** %275, align 8
  br label %705

276:                                              ; preds = %4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @WPS_HASH_LEN, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i32, i32* @MSG_DEBUG, align 4
  %282 = load i32, i32* %9, align 4
  %283 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %281, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %282)
  store i32 -1, i32* %5, align 4
  br label %706

284:                                              ; preds = %276
  %285 = load i32*, i32** %8, align 8
  %286 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %287 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %286, i32 0, i32 43
  store i32* %285, i32** %287, align 8
  br label %705

288:                                              ; preds = %4
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @WPS_HASH_LEN, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load i32, i32* @MSG_DEBUG, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %293, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %294)
  store i32 -1, i32* %5, align 4
  br label %706

296:                                              ; preds = %288
  %297 = load i32*, i32** %8, align 8
  %298 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %299 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %298, i32 0, i32 42
  store i32* %297, i32** %299, align 8
  br label %705

300:                                              ; preds = %4
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* @WPS_HASH_LEN, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load i32, i32* @MSG_DEBUG, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %305, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 %306)
  store i32 -1, i32* %5, align 4
  br label %706

308:                                              ; preds = %300
  %309 = load i32*, i32** %8, align 8
  %310 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %311 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %310, i32 0, i32 41
  store i32* %309, i32** %311, align 8
  br label %705

312:                                              ; preds = %4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = load i32, i32* @MSG_DEBUG, align 4
  %318 = load i32, i32* %9, align 4
  %319 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %317, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 %318)
  store i32 -1, i32* %5, align 4
  br label %706

320:                                              ; preds = %312
  %321 = load i32*, i32** %8, align 8
  %322 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %323 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %322, i32 0, i32 40
  store i32* %321, i32** %323, align 8
  br label %705

324:                                              ; preds = %4
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i32, i32* @MSG_DEBUG, align 4
  %330 = load i32, i32* %9, align 4
  %331 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %329, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 %330)
  store i32 -1, i32* %5, align 4
  br label %706

332:                                              ; preds = %324
  %333 = load i32*, i32** %8, align 8
  %334 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %335 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %334, i32 0, i32 39
  store i32* %333, i32** %335, align 8
  br label %705

336:                                              ; preds = %4
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i32, i32* @MSG_DEBUG, align 4
  %342 = load i32, i32* %9, align 4
  %343 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %341, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %342)
  store i32 -1, i32* %5, align 4
  br label %706

344:                                              ; preds = %336
  %345 = load i32*, i32** %8, align 8
  %346 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %347 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %346, i32 0, i32 38
  store i32* %345, i32** %347, align 8
  br label %705

348:                                              ; preds = %4
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load i32, i32* @MSG_DEBUG, align 4
  %354 = load i32, i32* %9, align 4
  %355 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %353, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %354)
  store i32 -1, i32* %5, align 4
  br label %706

356:                                              ; preds = %348
  %357 = load i32*, i32** %8, align 8
  %358 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %359 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %358, i32 0, i32 37
  store i32* %357, i32** %359, align 8
  br label %705

360:                                              ; preds = %4
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @WPS_KWA_LEN, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = load i32, i32* @MSG_DEBUG, align 4
  %366 = load i32, i32* %9, align 4
  %367 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %365, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %366)
  store i32 -1, i32* %5, align 4
  br label %706

368:                                              ; preds = %360
  %369 = load i32*, i32** %8, align 8
  %370 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %371 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %370, i32 0, i32 36
  store i32* %369, i32** %371, align 8
  br label %705

372:                                              ; preds = %4
  %373 = load i32, i32* %9, align 4
  %374 = icmp ne i32 %373, 2
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i32, i32* @MSG_DEBUG, align 4
  %377 = load i32, i32* %9, align 4
  %378 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %376, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i32 %377)
  store i32 -1, i32* %5, align 4
  br label %706

379:                                              ; preds = %372
  %380 = load i32*, i32** %8, align 8
  %381 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %382 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %381, i32 0, i32 35
  store i32* %380, i32** %382, align 8
  br label %705

383:                                              ; preds = %4
  %384 = load i32, i32* %9, align 4
  %385 = icmp ne i32 %384, 2
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i32, i32* @MSG_DEBUG, align 4
  %388 = load i32, i32* %9, align 4
  %389 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %387, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 %388)
  store i32 -1, i32* %5, align 4
  br label %706

390:                                              ; preds = %383
  %391 = load i32*, i32** %8, align 8
  %392 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %393 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %392, i32 0, i32 34
  store i32* %391, i32** %393, align 8
  br label %705

394:                                              ; preds = %4
  %395 = load i32, i32* %9, align 4
  %396 = icmp ne i32 %395, 1
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = load i32, i32* @MSG_DEBUG, align 4
  %399 = load i32, i32* %9, align 4
  %400 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %398, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0), i32 %399)
  store i32 -1, i32* %5, align 4
  br label %706

401:                                              ; preds = %394
  %402 = load i32*, i32** %8, align 8
  %403 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %404 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %403, i32 0, i32 33
  store i32* %402, i32** %404, align 8
  br label %705

405:                                              ; preds = %4
  %406 = load i32, i32* %9, align 4
  %407 = icmp ne i32 %406, 1
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i32, i32* @MSG_DEBUG, align 4
  %410 = load i32, i32* %9, align 4
  %411 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %409, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0), i32 %410)
  store i32 -1, i32* %5, align 4
  br label %706

412:                                              ; preds = %405
  %413 = load i32*, i32** %8, align 8
  %414 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %415 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %414, i32 0, i32 32
  store i32* %413, i32** %415, align 8
  br label %705

416:                                              ; preds = %4
  %417 = load i32, i32* %9, align 4
  %418 = load i32, i32* @ETH_ALEN, align 4
  %419 = icmp ne i32 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %416
  %421 = load i32, i32* @MSG_DEBUG, align 4
  %422 = load i32, i32* %9, align 4
  %423 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %421, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i32 %422)
  store i32 -1, i32* %5, align 4
  br label %706

424:                                              ; preds = %416
  %425 = load i32*, i32** %8, align 8
  %426 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %427 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %426, i32 0, i32 31
  store i32* %425, i32** %427, align 8
  br label %705

428:                                              ; preds = %4
  %429 = load i32, i32* %9, align 4
  %430 = icmp ne i32 %429, 1
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  %432 = load i32, i32* @MSG_DEBUG, align 4
  %433 = load i32, i32* %9, align 4
  %434 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %432, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0), i32 %433)
  store i32 -1, i32* %5, align 4
  br label %706

435:                                              ; preds = %428
  %436 = load i32*, i32** %8, align 8
  %437 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %438 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %437, i32 0, i32 30
  store i32* %436, i32** %438, align 8
  br label %705

439:                                              ; preds = %4
  %440 = load i32, i32* %9, align 4
  %441 = icmp ne i32 %440, 1
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load i32, i32* @MSG_DEBUG, align 4
  %444 = load i32, i32* %9, align 4
  %445 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %443, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i32 %444)
  store i32 -1, i32* %5, align 4
  br label %706

446:                                              ; preds = %439
  %447 = load i32*, i32** %8, align 8
  %448 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %449 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %448, i32 0, i32 29
  store i32* %447, i32** %449, align 8
  br label %705

450:                                              ; preds = %4
  %451 = load i32, i32* %9, align 4
  %452 = icmp ne i32 %451, 1
  br i1 %452, label %453, label %457

453:                                              ; preds = %450
  %454 = load i32, i32* @MSG_DEBUG, align 4
  %455 = load i32, i32* %9, align 4
  %456 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %454, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i32 %455)
  store i32 -1, i32* %5, align 4
  br label %706

457:                                              ; preds = %450
  %458 = load i32*, i32** %8, align 8
  %459 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %460 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %459, i32 0, i32 28
  store i32* %458, i32** %460, align 8
  br label %705

461:                                              ; preds = %4
  %462 = load i32*, i32** %8, align 8
  %463 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %464 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %463, i32 0, i32 27
  store i32* %462, i32** %464, align 8
  %465 = load i32, i32* %9, align 4
  %466 = load i32, i32* @WPS_MANUFACTURER_MAX_LEN, align 4
  %467 = icmp sgt i32 %465, %466
  br i1 %467, label %468, label %472

468:                                              ; preds = %461
  %469 = load i32, i32* @WPS_MANUFACTURER_MAX_LEN, align 4
  %470 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %471 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %470, i32 0, i32 1
  store i32 %469, i32* %471, align 4
  br label %476

472:                                              ; preds = %461
  %473 = load i32, i32* %9, align 4
  %474 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %475 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 4
  br label %476

476:                                              ; preds = %472, %468
  br label %705

477:                                              ; preds = %4
  %478 = load i32*, i32** %8, align 8
  %479 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %480 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %479, i32 0, i32 26
  store i32* %478, i32** %480, align 8
  %481 = load i32, i32* %9, align 4
  %482 = load i32, i32* @WPS_MODEL_NAME_MAX_LEN, align 4
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %484, label %488

484:                                              ; preds = %477
  %485 = load i32, i32* @WPS_MODEL_NAME_MAX_LEN, align 4
  %486 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %487 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %486, i32 0, i32 2
  store i32 %485, i32* %487, align 8
  br label %492

488:                                              ; preds = %477
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %491 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  br label %492

492:                                              ; preds = %488, %484
  br label %705

493:                                              ; preds = %4
  %494 = load i32*, i32** %8, align 8
  %495 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %496 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %495, i32 0, i32 25
  store i32* %494, i32** %496, align 8
  %497 = load i32, i32* %9, align 4
  %498 = load i32, i32* @WPS_MODEL_NUMBER_MAX_LEN, align 4
  %499 = icmp sgt i32 %497, %498
  br i1 %499, label %500, label %504

500:                                              ; preds = %493
  %501 = load i32, i32* @WPS_MODEL_NUMBER_MAX_LEN, align 4
  %502 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %503 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %502, i32 0, i32 3
  store i32 %501, i32* %503, align 4
  br label %508

504:                                              ; preds = %493
  %505 = load i32, i32* %9, align 4
  %506 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %507 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %506, i32 0, i32 3
  store i32 %505, i32* %507, align 4
  br label %508

508:                                              ; preds = %504, %500
  br label %705

509:                                              ; preds = %4
  %510 = load i32*, i32** %8, align 8
  %511 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %512 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %511, i32 0, i32 24
  store i32* %510, i32** %512, align 8
  %513 = load i32, i32* %9, align 4
  %514 = load i32, i32* @WPS_SERIAL_NUMBER_MAX_LEN, align 4
  %515 = icmp sgt i32 %513, %514
  br i1 %515, label %516, label %520

516:                                              ; preds = %509
  %517 = load i32, i32* @WPS_SERIAL_NUMBER_MAX_LEN, align 4
  %518 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %519 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %518, i32 0, i32 4
  store i32 %517, i32* %519, align 8
  br label %524

520:                                              ; preds = %509
  %521 = load i32, i32* %9, align 4
  %522 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %523 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %522, i32 0, i32 4
  store i32 %521, i32* %523, align 8
  br label %524

524:                                              ; preds = %520, %516
  br label %705

525:                                              ; preds = %4
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* @WPS_DEV_NAME_MAX_LEN, align 4
  %528 = icmp sgt i32 %526, %527
  br i1 %528, label %529, label %533

529:                                              ; preds = %525
  %530 = load i32, i32* @MSG_DEBUG, align 4
  %531 = load i32, i32* %9, align 4
  %532 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %530, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i32 %531)
  br label %705

533:                                              ; preds = %525
  %534 = load i32*, i32** %8, align 8
  %535 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %536 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %535, i32 0, i32 23
  store i32* %534, i32** %536, align 8
  %537 = load i32, i32* %9, align 4
  %538 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %539 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %538, i32 0, i32 5
  store i32 %537, i32* %539, align 4
  br label %705

540:                                              ; preds = %4
  %541 = load i32, i32* %9, align 4
  %542 = icmp slt i32 %541, 190
  br i1 %542, label %546, label %543

543:                                              ; preds = %540
  %544 = load i32, i32* %9, align 4
  %545 = icmp sgt i32 %544, 192
  br i1 %545, label %546, label %550

546:                                              ; preds = %543, %540
  %547 = load i32, i32* @MSG_DEBUG, align 4
  %548 = load i32, i32* %9, align 4
  %549 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %547, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 %548)
  br label %705

550:                                              ; preds = %543
  %551 = load i32*, i32** %8, align 8
  %552 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %553 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %552, i32 0, i32 22
  store i32* %551, i32** %553, align 8
  %554 = load i32, i32* %9, align 4
  %555 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %556 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %555, i32 0, i32 6
  store i32 %554, i32* %556, align 8
  br label %705

557:                                              ; preds = %4
  %558 = load i32*, i32** %8, align 8
  %559 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %560 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %559, i32 0, i32 21
  store i32* %558, i32** %560, align 8
  %561 = load i32, i32* %9, align 4
  %562 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %563 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %562, i32 0, i32 7
  store i32 %561, i32* %563, align 4
  br label %705

564:                                              ; preds = %4
  %565 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %566 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %565, i32 0, i32 8
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @MAX_CRED_COUNT, align 8
  %569 = icmp uge i64 %567, %568
  br i1 %569, label %570, label %575

570:                                              ; preds = %564
  %571 = load i32, i32* @MSG_DEBUG, align 4
  %572 = load i64, i64* @MAX_CRED_COUNT, align 8
  %573 = trunc i64 %572 to i32
  %574 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %571, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0), i32 %573)
  br label %705

575:                                              ; preds = %564
  %576 = load i32*, i32** %8, align 8
  %577 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %578 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %577, i32 0, i32 20
  %579 = load i32**, i32*** %578, align 8
  %580 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %581 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %580, i32 0, i32 8
  %582 = load i64, i64* %581, align 8
  %583 = getelementptr inbounds i32*, i32** %579, i64 %582
  store i32* %576, i32** %583, align 8
  %584 = load i32, i32* %9, align 4
  %585 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %586 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %585, i32 0, i32 9
  %587 = load i32*, i32** %586, align 8
  %588 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %589 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %588, i32 0, i32 8
  %590 = load i64, i64* %589, align 8
  %591 = getelementptr inbounds i32, i32* %587, i64 %590
  store i32 %584, i32* %591, align 4
  %592 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %593 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %592, i32 0, i32 8
  %594 = load i64, i64* %593, align 8
  %595 = add i64 %594, 1
  store i64 %595, i64* %593, align 8
  br label %705

596:                                              ; preds = %4
  %597 = load i32, i32* %9, align 4
  %598 = load i32, i32* @SSID_MAX_LEN, align 4
  %599 = icmp sgt i32 %597, %598
  br i1 %599, label %600, label %604

600:                                              ; preds = %596
  %601 = load i32, i32* @MSG_DEBUG, align 4
  %602 = load i32, i32* %9, align 4
  %603 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %601, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0), i32 %602)
  br label %705

604:                                              ; preds = %596
  %605 = load i32*, i32** %8, align 8
  %606 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %607 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %606, i32 0, i32 19
  store i32* %605, i32** %607, align 8
  %608 = load i32, i32* %9, align 4
  %609 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %610 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %609, i32 0, i32 10
  store i32 %608, i32* %610, align 8
  br label %705

611:                                              ; preds = %4
  %612 = load i32*, i32** %8, align 8
  %613 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %614 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %613, i32 0, i32 18
  store i32* %612, i32** %614, align 8
  %615 = load i32, i32* %9, align 4
  %616 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %617 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %616, i32 0, i32 11
  store i32 %615, i32* %617, align 4
  br label %705

618:                                              ; preds = %4
  %619 = load i32, i32* %9, align 4
  %620 = icmp ne i32 %619, 1
  br i1 %620, label %621, label %625

621:                                              ; preds = %618
  %622 = load i32, i32* @MSG_DEBUG, align 4
  %623 = load i32, i32* %9, align 4
  %624 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %622, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i32 %623)
  store i32 -1, i32* %5, align 4
  br label %706

625:                                              ; preds = %618
  %626 = load i32*, i32** %8, align 8
  %627 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %628 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %627, i32 0, i32 17
  store i32* %626, i32** %628, align 8
  br label %705

629:                                              ; preds = %4
  %630 = load i32, i32* %9, align 4
  %631 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %632 = icmp ne i32 %630, %631
  br i1 %632, label %633, label %637

633:                                              ; preds = %629
  %634 = load i32, i32* @MSG_DEBUG, align 4
  %635 = load i32, i32* %9, align 4
  %636 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %634, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i64 0, i64 0), i32 %635)
  store i32 -1, i32* %5, align 4
  br label %706

637:                                              ; preds = %629
  %638 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %639 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %638, i32 0, i32 12
  %640 = load i64, i64* %639, align 8
  %641 = load i64, i64* @MAX_REQ_DEV_TYPE_COUNT, align 8
  %642 = icmp uge i64 %640, %641
  br i1 %642, label %643, label %648

643:                                              ; preds = %637
  %644 = load i32, i32* @MSG_DEBUG, align 4
  %645 = load i64, i64* @MAX_REQ_DEV_TYPE_COUNT, align 8
  %646 = trunc i64 %645 to i32
  %647 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %644, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i64 0, i64 0), i32 %646)
  br label %705

648:                                              ; preds = %637
  %649 = load i32*, i32** %8, align 8
  %650 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %651 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %650, i32 0, i32 16
  %652 = load i32**, i32*** %651, align 8
  %653 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %654 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %653, i32 0, i32 12
  %655 = load i64, i64* %654, align 8
  %656 = getelementptr inbounds i32*, i32** %652, i64 %655
  store i32* %649, i32** %656, align 8
  %657 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %658 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %657, i32 0, i32 12
  %659 = load i64, i64* %658, align 8
  %660 = add i64 %659, 1
  store i64 %660, i64* %658, align 8
  br label %705

661:                                              ; preds = %4
  %662 = load i32, i32* %9, align 4
  %663 = load i32, i32* @WPS_SEC_DEV_TYPE_MAX_LEN, align 4
  %664 = icmp sgt i32 %662, %663
  br i1 %664, label %670, label %665

665:                                              ; preds = %661
  %666 = load i32, i32* %9, align 4
  %667 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %668 = srem i32 %666, %667
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %665, %661
  %671 = load i32, i32* @MSG_DEBUG, align 4
  %672 = load i32, i32* %9, align 4
  %673 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %671, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0), i32 %672)
  store i32 -1, i32* %5, align 4
  br label %706

674:                                              ; preds = %665
  %675 = load i32*, i32** %8, align 8
  %676 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %677 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %676, i32 0, i32 15
  store i32* %675, i32** %677, align 8
  %678 = load i32, i32* %9, align 4
  %679 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %680 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %679, i32 0, i32 13
  store i32 %678, i32* %680, align 8
  br label %705

681:                                              ; preds = %4
  %682 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %683 = load i32*, i32** %8, align 8
  %684 = load i32, i32* %9, align 4
  %685 = call i32 @wps_parse_vendor_ext(%struct.wps_parse_attr* %682, i32* %683, i32 %684)
  %686 = icmp slt i32 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %681
  store i32 -1, i32* %5, align 4
  br label %706

688:                                              ; preds = %681
  br label %705

689:                                              ; preds = %4
  %690 = load i32, i32* %9, align 4
  %691 = icmp ne i32 %690, 2
  br i1 %691, label %692, label %696

692:                                              ; preds = %689
  %693 = load i32, i32* @MSG_DEBUG, align 4
  %694 = load i32, i32* %9, align 4
  %695 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %693, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i32 %694)
  store i32 -1, i32* %5, align 4
  br label %706

696:                                              ; preds = %689
  %697 = load i32*, i32** %8, align 8
  %698 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %699 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %698, i32 0, i32 14
  store i32* %697, i32** %699, align 8
  br label %705

700:                                              ; preds = %4
  %701 = load i32, i32* @MSG_DEBUG, align 4
  %702 = load i32, i32* %7, align 4
  %703 = load i32, i32* %9, align 4
  %704 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %701, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 %702, i32 %703)
  br label %705

705:                                              ; preds = %700, %696, %688, %674, %648, %643, %625, %611, %604, %600, %575, %570, %557, %550, %546, %533, %529, %524, %508, %492, %476, %457, %446, %435, %424, %412, %401, %390, %379, %368, %356, %344, %332, %320, %308, %296, %284, %272, %260, %248, %237, %223, %188, %177, %166, %155, %144, %132, %121, %110, %99, %88, %77, %65, %53, %41, %29, %18
  store i32 0, i32* %5, align 4
  br label %706

706:                                              ; preds = %705, %692, %687, %670, %633, %621, %453, %442, %431, %420, %408, %397, %386, %375, %364, %352, %340, %328, %316, %304, %292, %280, %268, %256, %244, %233, %219, %184, %173, %162, %151, %140, %128, %117, %106, %95, %84, %73, %61, %49, %37, %25, %14
  %707 = load i32, i32* %5, align 4
  ret i32 %707
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wps_parse_vendor_ext(%struct.wps_parse_attr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
