; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_parse_add_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_parse_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sake_parse_attr = type { i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-SAKE: Parse: AT_RAND_S\00", align 1
@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"EAP-SAKE: AT_RAND_S with invalid payload length %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EAP-SAKE: Parse: AT_RAND_P\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"EAP-SAKE: AT_RAND_P with invalid payload length %d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"EAP-SAKE: Parse: AT_MIC_S\00", align 1
@EAP_SAKE_MIC_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"EAP-SAKE: AT_MIC_S with invalid payload length %d\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"EAP-SAKE: Parse: AT_MIC_P\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"EAP-SAKE: AT_MIC_P with invalid payload length %d\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: Parse: AT_SERVERID\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"EAP-SAKE: Parse: AT_PEERID\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"EAP-SAKE: Parse: AT_SPI_S\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"EAP-SAKE: Parse: AT_SPI_P\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"EAP-SAKE: Parse: AT_ANY_ID_REQ\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"EAP-SAKE: Invalid AT_ANY_ID_REQ payload length %d\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Parse: AT_PERM_ID_REQ\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"EAP-SAKE: Invalid AT_PERM_ID_REQ payload length %d\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"EAP-SAKE: Parse: AT_ENCR_DATA\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"EAP-SAKE: Parse: AT_IV\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"EAP-SAKE: Parse: AT_PADDING\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"EAP-SAKE: AT_PADDING with non-zero pad byte\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"EAP-SAKE: Parse: AT_NEXT_TMPID\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: Parse: AT_MSK_LIFE\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"EAP-SAKE: Invalid AT_MSK_LIFE payload length %d\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"EAP-SAKE: Unknown non-skippable attribute %d\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"EAP-SAKE: Ignoring unknown skippable attribute %d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"EAP-SAKE: AT_IV included without AT_ENCR_DATA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sake_parse_attr*, i32, i32, i32*)* @eap_sake_parse_add_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sake_parse_add_attr(%struct.eap_sake_parse_attr* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sake_parse_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sake_parse_attr* %0, %struct.eap_sake_parse_attr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %192 [
    i32 131, label %12
    i32 132, label %26
    i32 138, label %40
    i32 139, label %54
    i32 130, label %68
    i32 134, label %77
    i32 128, label %86
    i32 129, label %95
    i32 142, label %104
    i32 133, label %117
    i32 141, label %130
    i32 140, label %139
    i32 135, label %148
    i32 136, label %170
    i32 137, label %179
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %5, align 4
  br label %217

22:                                               ; preds = %12
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %25 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  br label %203

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %5, align 4
  br label %217

36:                                               ; preds = %26
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %39 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  br label %203

40:                                               ; preds = %4
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %5, align 4
  br label %217

50:                                               ; preds = %40
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %53 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  br label %203

54:                                               ; preds = %4
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  br label %217

64:                                               ; preds = %54
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %67 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  br label %203

68:                                               ; preds = %4
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %73 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %76 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  br label %203

77:                                               ; preds = %4
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %82 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %81, i32 0, i32 6
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %85 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  br label %203

86:                                               ; preds = %4
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %91 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %90, i32 0, i32 8
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %94 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  br label %203

95:                                               ; preds = %4
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %100 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %99, i32 0, i32 10
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %103 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  br label %203

104:                                              ; preds = %4
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 2
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %111)
  store i32 -1, i32* %5, align 4
  br label %217

113:                                              ; preds = %104
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %116 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %115, i32 0, i32 12
  store i32* %114, i32** %116, align 8
  br label %203

117:                                              ; preds = %4
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %124)
  store i32 -1, i32* %5, align 4
  br label %217

126:                                              ; preds = %117
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %129 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %128, i32 0, i32 13
  store i32* %127, i32** %129, align 8
  br label %203

130:                                              ; preds = %4
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %135 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %134, i32 0, i32 14
  store i32* %133, i32** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %138 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %137, i32 0, i32 15
  store i32 %136, i32* %138, align 8
  br label %203

139:                                              ; preds = %4
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %142 = load i32*, i32** %9, align 8
  %143 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %144 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %143, i32 0, i32 16
  store i32* %142, i32** %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %147 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %146, i32 0, i32 17
  store i32 %145, i32* %147, align 8
  br label %203

148:                                              ; preds = %4
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %151

151:                                              ; preds = %166, %148
  %152 = load i64, i64* %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp ult i64 %152, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load i32*, i32** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %217

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %151

169:                                              ; preds = %151
  br label %203

170:                                              ; preds = %4
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %173 = load i32*, i32** %9, align 8
  %174 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %175 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %174, i32 0, i32 18
  store i32* %173, i32** %175, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %178 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %177, i32 0, i32 19
  store i32 %176, i32* %178, align 8
  br label %203

179:                                              ; preds = %4
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 4
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i32 %186)
  store i32 -1, i32* %5, align 4
  br label %217

188:                                              ; preds = %179
  %189 = load i32*, i32** %9, align 8
  %190 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %191 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %190, i32 0, i32 20
  store i32* %189, i32** %191, align 8
  br label %203

192:                                              ; preds = %4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 128
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @MSG_DEBUG, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 %197)
  store i32 -1, i32* %5, align 4
  br label %217

199:                                              ; preds = %192
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %199, %188, %170, %169, %139, %130, %126, %113, %95, %86, %77, %68, %64, %50, %36, %22
  %204 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %205 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %204, i32 0, i32 16
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.eap_sake_parse_attr*, %struct.eap_sake_parse_attr** %6, align 8
  %210 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %209, i32 0, i32 14
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = call i32 (i32, i8*, ...) @wpa_printf(i32 %214, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %217

216:                                              ; preds = %208, %203
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %216, %213, %195, %184, %162, %122, %109, %60, %46, %32, %18
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
