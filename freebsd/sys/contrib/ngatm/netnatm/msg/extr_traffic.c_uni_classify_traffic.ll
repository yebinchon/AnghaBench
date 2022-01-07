; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_traffic.c_uni_classify_traffic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_traffic.c_uni_classify_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_ie_bearer = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uni_ie_traffic = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@UNI_BEARER_ATC_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bad ATC=%#02x for BCOB-A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad ATC=%#02x for BCOB-C\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bad ATC=%#02x for BCOB-X\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unsupported bearer class tVP\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad bearer class %#02x\00", align 1
@fmask = common dso_local global i32 0, align 4
@bmask = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BEST_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_MOPT_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"illegal BE for CBR.1\00", align 1
@UNI_TRAFFIC_FPCR1_P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"bad forward CRs for CBR.1\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"illegal forward tag in CBR.1\00", align 1
@UNI_TRAFFIC_BPCR1_P = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"bad backward CRs for CBR.1\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"illegal backward tag in CBR.1\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"illegal BE for CBR.2/3\00", align 1
@UNI_TRAFFIC_FPCR0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_CBR2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"illegal forward tag in CBR.2\00", align 1
@fcbr3 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_CBR3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"need forward tagging for CBR.3\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"bad forward CRs for CBR.2/3\00", align 1
@UNI_TRAFFIC_BPCR0_P = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"illegal backward tag in CBR.2\00", align 1
@bcbr3 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"need backward tagging for CBR.3\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"bad backward CRs for CBR.2/3\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"illegal BE for rtVBR.1\00", align 1
@fvbr16 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"bad forward CRs for rtVBR.1\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"illegal forward tag in rtVBR.1\00", align 1
@bvbr16 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"bad backward CRs for rtVBR.1\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"illegal backward tag in rtVBR.1\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"illegal BE for rtVBR.2/3/6\00", align 1
@fvbr23 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_rtVBR3 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_rtVBR2 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_rtVBR6 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"illegal forward tag in rtVBR.6\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"bad forward CRs for rtVBR.2/3/6\00", align 1
@bvbr23 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [32 x i8] c"illegal backward tag in rtVBR.6\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"bad backward CRs for rtVBR.2/3/6\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"illegal BE for rtVBR.2-6\00", align 1
@fvbr4 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_rtVBR4 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_rtVBR5 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"illegal forward tag in rtVBR.5\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"bad forward CRs for rtVBR.2-6\00", align 1
@bvbr4 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [32 x i8] c"illegal backward tag in rtVBR.5\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"bad backward CRs for rtVBR.2-6\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"illegal BE for nrtVBR.1\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"bad forward CRs for nrtVBR.1\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"illegal forward tag in nrtVBR.1\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"bad backward CRs for nrtVBR.1\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"illegal backward tag in nrtVBR.1\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"bad forward CRs for UBR.1/2\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"bad backward CRs for UBR.1/2\00", align 1
@UNI_TRAFFIC_UBR2 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_UBR1 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_nrtVBR3 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_nrtVBR2 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_nrtVBR4 = common dso_local global i32 0, align 4
@UNI_TRAFFIC_nrtVBR5 = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [32 x i8] c"illegal forward tag in nrtVBR.5\00", align 1
@UNI_TRAFFIC_nrtVBR6 = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [32 x i8] c"illegal forward tag in nrtVBR.6\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"bad forward CRs for nrtVBR.2-6\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"illegal backward tag in nrtVBR.5\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"illegal backward tag in nrtVBR.6\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"bad backward CRs for nrtVBR.2-6\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"illegal BE for ABR\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"bad forward CRs for ABR\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"bad backward CRs for ABR\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"illegal forward tag in ABR\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"illegal backward tag in ABR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_classify_traffic(%struct.uni_ie_bearer* %0, %struct.uni_ie_traffic* %1, i32* %2, i32* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.uni_ie_bearer*, align 8
  %9 = alloca %struct.uni_ie_traffic*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.uni_ie_bearer* %0, %struct.uni_ie_bearer** %8, align 8
  store %struct.uni_ie_traffic* %1, %struct.uni_ie_traffic** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %21 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %102 [
    i32 148, label %23
    i32 134, label %45
    i32 132, label %70
    i32 133, label %98
  ]

23:                                               ; preds = %6
  %24 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %25 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UNI_BEARER_ATC_P, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 152, i32* %14, align 4
  br label %109

32:                                               ; preds = %23
  %33 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %34 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %37 [
    i32 139, label %36
  ]

36:                                               ; preds = %32
  store i32 130, i32* %14, align 4
  br label %44

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %41 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %7, align 4
  br label %777

44:                                               ; preds = %36
  br label %109

45:                                               ; preds = %6
  %46 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %47 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UNI_BEARER_ATC_P, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 151, i32* %14, align 4
  br label %109

54:                                               ; preds = %45
  %55 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %56 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %62 [
    i32 135, label %58
    i32 136, label %59
    i32 137, label %60
    i32 141, label %61
  ]

58:                                               ; preds = %54
  store i32 128, i32* %14, align 4
  br label %69

59:                                               ; preds = %54
  store i32 150, i32* %14, align 4
  br label %69

60:                                               ; preds = %54
  store i32 129, i32* %14, align 4
  br label %69

61:                                               ; preds = %54
  store i32 131, i32* %14, align 4
  br label %69

62:                                               ; preds = %54
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %66 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 -1, i32* %7, align 4
  br label %777

69:                                               ; preds = %61, %60, %59, %58
  br label %109

70:                                               ; preds = %6
  %71 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %72 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @UNI_BEARER_ATC_P, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  store i32 151, i32* %14, align 4
  br label %109

79:                                               ; preds = %70
  %80 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %81 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %90 [
    i32 139, label %83
    i32 140, label %84
    i32 144, label %84
    i32 143, label %84
    i32 135, label %85
    i32 146, label %86
    i32 136, label %86
    i32 137, label %87
    i32 147, label %88
    i32 145, label %88
    i32 142, label %88
    i32 138, label %88
    i32 141, label %89
  ]

83:                                               ; preds = %79
  store i32 130, i32* %14, align 4
  br label %97

84:                                               ; preds = %79, %79, %79
  store i32 152, i32* %14, align 4
  br label %97

85:                                               ; preds = %79
  store i32 128, i32* %14, align 4
  br label %97

86:                                               ; preds = %79, %79
  store i32 149, i32* %14, align 4
  br label %97

87:                                               ; preds = %79
  store i32 129, i32* %14, align 4
  br label %97

88:                                               ; preds = %79, %79, %79, %79
  store i32 151, i32* %14, align 4
  br label %97

89:                                               ; preds = %79
  store i32 131, i32* %14, align 4
  br label %97

90:                                               ; preds = %79
  %91 = load i8*, i8** %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %94 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %91, i64 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  store i32 -1, i32* %7, align 4
  br label %777

97:                                               ; preds = %89, %88, %87, %86, %85, %84, %83
  br label %109

98:                                               ; preds = %6
  %99 = load i8*, i8** %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %99, i64 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

102:                                              ; preds = %6
  %103 = load i8*, i8** %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.uni_ie_bearer*, %struct.uni_ie_bearer** %8, align 8
  %106 = getelementptr inbounds %struct.uni_ie_bearer, %struct.uni_ie_bearer* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %103, i64 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %7, align 4
  br label %777

109:                                              ; preds = %97, %78, %69, %53, %44, %31
  %110 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %111 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @fmask, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %117 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @bmask, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %16, align 4
  %122 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %123 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @UNI_TRAFFIC_BEST_P, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %17, align 4
  %128 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %129 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @UNI_TRAFFIC_MOPT_P, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %109
  %136 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %137 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %135, %109
  %142 = phi i1 [ false, %109 ], [ %140, %135 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %18, align 4
  %144 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %145 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @UNI_TRAFFIC_MOPT_P, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %141
  %152 = load %struct.uni_ie_traffic*, %struct.uni_ie_traffic** %9, align 8
  %153 = getelementptr inbounds %struct.uni_ie_traffic, %struct.uni_ie_traffic* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %151, %141
  %158 = phi i1 [ false, %141 ], [ %156, %151 ]
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %14, align 4
  switch i32 %160, label %776 [
    i32 130, label %161
    i32 152, label %205
    i32 128, label %283
    i32 150, label %327
    i32 149, label %405
    i32 129, label %529
    i32 151, label %573
    i32 131, label %732
  ]

161:                                              ; preds = %157
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i8*, i8** %12, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %165, i64 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

168:                                              ; preds = %161
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172
  %174 = load i8*, i8** %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %174, i64 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

177:                                              ; No predecessors!
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %12, align 8
  %183 = load i64, i64* %13, align 8
  %184 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %182, i64 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

185:                                              ; preds = %178
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189
  %191 = load i8*, i8** %12, align 8
  %192 = load i64, i64* %13, align 8
  %193 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %191, i64 %192, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

194:                                              ; No predecessors!
  br label %195

195:                                              ; preds = %194, %185
  %196 = load i32, i32* %19, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i8*, i8** %12, align 8
  %200 = load i64, i64* %13, align 8
  %201 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %199, i64 %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

202:                                              ; preds = %195
  %203 = load i32*, i32** %11, align 8
  store i32 130, i32* %203, align 4
  %204 = load i32*, i32** %10, align 8
  store i32 130, i32* %204, align 4
  br label %776

205:                                              ; preds = %157
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i8*, i8** %12, align 8
  %210 = load i64, i64* %13, align 8
  %211 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %209, i64 %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

212:                                              ; preds = %205
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @UNI_TRAFFIC_FPCR0_P, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = load i32, i32* @UNI_TRAFFIC_CBR2, align 4
  %218 = load i32*, i32** %10, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load i8*, i8** %12, align 8
  %223 = load i64, i64* %13, align 8
  %224 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %222, i64 %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

225:                                              ; preds = %216
  br label %247

226:                                              ; preds = %212
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @fcbr3, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %226
  %231 = load i32, i32* @UNI_TRAFFIC_CBR3, align 4
  %232 = load i32*, i32** %10, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** %12, align 8
  %237 = load i64, i64* %13, align 8
  %238 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %236, i64 %237, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

239:                                              ; preds = %230
  br label %246

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240
  %242 = load i8*, i8** %12, align 8
  %243 = load i64, i64* %13, align 8
  %244 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %242, i64 %243, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

245:                                              ; No predecessors!
  br label %246

246:                                              ; preds = %245, %239
  br label %247

247:                                              ; preds = %246, %225
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* @UNI_TRAFFIC_BPCR0_P, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load i32, i32* @UNI_TRAFFIC_CBR2, align 4
  %253 = load i32*, i32** %11, align 8
  store i32 %252, i32* %253, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load i8*, i8** %12, align 8
  %258 = load i64, i64* %13, align 8
  %259 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %257, i64 %258, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

260:                                              ; preds = %251
  br label %282

261:                                              ; preds = %247
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* @bcbr3, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load i32, i32* @UNI_TRAFFIC_CBR3, align 4
  %267 = load i32*, i32** %11, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* %19, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = load i8*, i8** %12, align 8
  %272 = load i64, i64* %13, align 8
  %273 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %271, i64 %272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

274:                                              ; preds = %265
  br label %281

275:                                              ; preds = %261
  br label %276

276:                                              ; preds = %275
  %277 = load i8*, i8** %12, align 8
  %278 = load i64, i64* %13, align 8
  %279 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %277, i64 %278, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

280:                                              ; No predecessors!
  br label %281

281:                                              ; preds = %280, %274
  br label %282

282:                                              ; preds = %281, %260
  br label %776

283:                                              ; preds = %157
  %284 = load i32, i32* %17, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load i8*, i8** %12, align 8
  %288 = load i64, i64* %13, align 8
  %289 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %287, i64 %288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

290:                                              ; preds = %283
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* @fvbr16, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  br label %295

295:                                              ; preds = %294
  %296 = load i8*, i8** %12, align 8
  %297 = load i64, i64* %13, align 8
  %298 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %296, i64 %297, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

299:                                              ; No predecessors!
  br label %300

300:                                              ; preds = %299, %290
  %301 = load i32, i32* %18, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i8*, i8** %12, align 8
  %305 = load i64, i64* %13, align 8
  %306 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %304, i64 %305, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

307:                                              ; preds = %300
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* @bvbr16, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311
  %313 = load i8*, i8** %12, align 8
  %314 = load i64, i64* %13, align 8
  %315 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %313, i64 %314, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

316:                                              ; No predecessors!
  br label %317

317:                                              ; preds = %316, %307
  %318 = load i32, i32* %19, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load i8*, i8** %12, align 8
  %322 = load i64, i64* %13, align 8
  %323 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %321, i64 %322, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

324:                                              ; preds = %317
  %325 = load i32*, i32** %11, align 8
  store i32 128, i32* %325, align 4
  %326 = load i32*, i32** %10, align 8
  store i32 128, i32* %326, align 4
  br label %776

327:                                              ; preds = %157
  %328 = load i32, i32* %17, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i8*, i8** %12, align 8
  %332 = load i64, i64* %13, align 8
  %333 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %331, i64 %332, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

334:                                              ; preds = %327
  %335 = load i32, i32* %15, align 4
  %336 = load i32, i32* @fvbr23, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %334
  %339 = load i32, i32* %18, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, i32* @UNI_TRAFFIC_rtVBR3, align 4
  %343 = load i32*, i32** %10, align 8
  store i32 %342, i32* %343, align 4
  br label %347

344:                                              ; preds = %338
  %345 = load i32, i32* @UNI_TRAFFIC_rtVBR2, align 4
  %346 = load i32*, i32** %10, align 8
  store i32 %345, i32* %346, align 4
  br label %347

347:                                              ; preds = %344, %341
  br label %369

348:                                              ; preds = %334
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* @fvbr16, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %362

352:                                              ; preds = %348
  %353 = load i32, i32* @UNI_TRAFFIC_rtVBR6, align 4
  %354 = load i32*, i32** %10, align 8
  store i32 %353, i32* %354, align 4
  %355 = load i32, i32* %18, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = load i8*, i8** %12, align 8
  %359 = load i64, i64* %13, align 8
  %360 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %358, i64 %359, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

361:                                              ; preds = %352
  br label %368

362:                                              ; preds = %348
  br label %363

363:                                              ; preds = %362
  %364 = load i8*, i8** %12, align 8
  %365 = load i64, i64* %13, align 8
  %366 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %364, i64 %365, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

367:                                              ; No predecessors!
  br label %368

368:                                              ; preds = %367, %361
  br label %369

369:                                              ; preds = %368, %347
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* @bvbr23, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %369
  %374 = load i32, i32* %19, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, i32* @UNI_TRAFFIC_rtVBR3, align 4
  %378 = load i32*, i32** %11, align 8
  store i32 %377, i32* %378, align 4
  br label %382

379:                                              ; preds = %373
  %380 = load i32, i32* @UNI_TRAFFIC_rtVBR2, align 4
  %381 = load i32*, i32** %11, align 8
  store i32 %380, i32* %381, align 4
  br label %382

382:                                              ; preds = %379, %376
  br label %404

383:                                              ; preds = %369
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* @bvbr16, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %397

387:                                              ; preds = %383
  %388 = load i32, i32* @UNI_TRAFFIC_rtVBR6, align 4
  %389 = load i32*, i32** %11, align 8
  store i32 %388, i32* %389, align 4
  %390 = load i32, i32* %19, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %387
  %393 = load i8*, i8** %12, align 8
  %394 = load i64, i64* %13, align 8
  %395 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %393, i64 %394, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

396:                                              ; preds = %387
  br label %403

397:                                              ; preds = %383
  br label %398

398:                                              ; preds = %397
  %399 = load i8*, i8** %12, align 8
  %400 = load i64, i64* %13, align 8
  %401 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %399, i64 %400, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

402:                                              ; No predecessors!
  br label %403

403:                                              ; preds = %402, %396
  br label %404

404:                                              ; preds = %403, %382
  br label %776

405:                                              ; preds = %157
  %406 = load i32, i32* %17, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i8*, i8** %12, align 8
  %410 = load i64, i64* %13, align 8
  %411 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %409, i64 %410, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

412:                                              ; preds = %405
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* @fvbr23, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %426

416:                                              ; preds = %412
  %417 = load i32, i32* %18, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, i32* @UNI_TRAFFIC_rtVBR3, align 4
  %421 = load i32*, i32** %10, align 8
  store i32 %420, i32* %421, align 4
  br label %425

422:                                              ; preds = %416
  %423 = load i32, i32* @UNI_TRAFFIC_rtVBR2, align 4
  %424 = load i32*, i32** %10, align 8
  store i32 %423, i32* %424, align 4
  br label %425

425:                                              ; preds = %422, %419
  br label %470

426:                                              ; preds = %412
  %427 = load i32, i32* %15, align 4
  %428 = load i32, i32* @fvbr4, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = load i32, i32* @UNI_TRAFFIC_rtVBR4, align 4
  %432 = load i32*, i32** %10, align 8
  store i32 %431, i32* %432, align 4
  br label %469

433:                                              ; preds = %426
  %434 = load i32, i32* %15, align 4
  %435 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %447

437:                                              ; preds = %433
  %438 = load i32, i32* @UNI_TRAFFIC_rtVBR5, align 4
  %439 = load i32*, i32** %10, align 8
  store i32 %438, i32* %439, align 4
  %440 = load i32, i32* %18, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = load i8*, i8** %12, align 8
  %444 = load i64, i64* %13, align 8
  %445 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %443, i64 %444, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

446:                                              ; preds = %437
  br label %468

447:                                              ; preds = %433
  %448 = load i32, i32* %15, align 4
  %449 = load i32, i32* @fvbr16, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %461

451:                                              ; preds = %447
  %452 = load i32, i32* @UNI_TRAFFIC_rtVBR6, align 4
  %453 = load i32*, i32** %10, align 8
  store i32 %452, i32* %453, align 4
  %454 = load i32, i32* %18, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %451
  %457 = load i8*, i8** %12, align 8
  %458 = load i64, i64* %13, align 8
  %459 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %457, i64 %458, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

460:                                              ; preds = %451
  br label %467

461:                                              ; preds = %447
  br label %462

462:                                              ; preds = %461
  %463 = load i8*, i8** %12, align 8
  %464 = load i64, i64* %13, align 8
  %465 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %463, i64 %464, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

466:                                              ; No predecessors!
  br label %467

467:                                              ; preds = %466, %460
  br label %468

468:                                              ; preds = %467, %446
  br label %469

469:                                              ; preds = %468, %430
  br label %470

470:                                              ; preds = %469, %425
  %471 = load i32, i32* %16, align 4
  %472 = load i32, i32* @bvbr23, align 4
  %473 = icmp eq i32 %471, %472
  br i1 %473, label %474, label %484

474:                                              ; preds = %470
  %475 = load i32, i32* %19, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %474
  %478 = load i32, i32* @UNI_TRAFFIC_rtVBR3, align 4
  %479 = load i32*, i32** %11, align 8
  store i32 %478, i32* %479, align 4
  br label %483

480:                                              ; preds = %474
  %481 = load i32, i32* @UNI_TRAFFIC_rtVBR2, align 4
  %482 = load i32*, i32** %11, align 8
  store i32 %481, i32* %482, align 4
  br label %483

483:                                              ; preds = %480, %477
  br label %528

484:                                              ; preds = %470
  %485 = load i32, i32* %16, align 4
  %486 = load i32, i32* @bvbr4, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %491

488:                                              ; preds = %484
  %489 = load i32, i32* @UNI_TRAFFIC_rtVBR4, align 4
  %490 = load i32*, i32** %11, align 8
  store i32 %489, i32* %490, align 4
  br label %527

491:                                              ; preds = %484
  %492 = load i32, i32* %16, align 4
  %493 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %505

495:                                              ; preds = %491
  %496 = load i32, i32* @UNI_TRAFFIC_rtVBR5, align 4
  %497 = load i32*, i32** %11, align 8
  store i32 %496, i32* %497, align 4
  %498 = load i32, i32* %19, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %495
  %501 = load i8*, i8** %12, align 8
  %502 = load i64, i64* %13, align 8
  %503 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %501, i64 %502, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

504:                                              ; preds = %495
  br label %526

505:                                              ; preds = %491
  %506 = load i32, i32* %16, align 4
  %507 = load i32, i32* @bvbr16, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %519

509:                                              ; preds = %505
  %510 = load i32, i32* @UNI_TRAFFIC_rtVBR6, align 4
  %511 = load i32*, i32** %11, align 8
  store i32 %510, i32* %511, align 4
  %512 = load i32, i32* %19, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = load i8*, i8** %12, align 8
  %516 = load i64, i64* %13, align 8
  %517 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %515, i64 %516, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

518:                                              ; preds = %509
  br label %525

519:                                              ; preds = %505
  br label %520

520:                                              ; preds = %519
  %521 = load i8*, i8** %12, align 8
  %522 = load i64, i64* %13, align 8
  %523 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %521, i64 %522, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

524:                                              ; No predecessors!
  br label %525

525:                                              ; preds = %524, %518
  br label %526

526:                                              ; preds = %525, %504
  br label %527

527:                                              ; preds = %526, %488
  br label %528

528:                                              ; preds = %527, %483
  br label %776

529:                                              ; preds = %157
  %530 = load i32, i32* %17, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %536

532:                                              ; preds = %529
  %533 = load i8*, i8** %12, align 8
  %534 = load i64, i64* %13, align 8
  %535 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %533, i64 %534, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

536:                                              ; preds = %529
  %537 = load i32, i32* %15, align 4
  %538 = load i32, i32* @fvbr16, align 4
  %539 = icmp ne i32 %537, %538
  br i1 %539, label %540, label %546

540:                                              ; preds = %536
  br label %541

541:                                              ; preds = %540
  %542 = load i8*, i8** %12, align 8
  %543 = load i64, i64* %13, align 8
  %544 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %542, i64 %543, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

545:                                              ; No predecessors!
  br label %546

546:                                              ; preds = %545, %536
  %547 = load i32, i32* %18, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %553

549:                                              ; preds = %546
  %550 = load i8*, i8** %12, align 8
  %551 = load i64, i64* %13, align 8
  %552 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %550, i64 %551, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

553:                                              ; preds = %546
  %554 = load i32, i32* %16, align 4
  %555 = load i32, i32* @bvbr16, align 4
  %556 = icmp ne i32 %554, %555
  br i1 %556, label %557, label %563

557:                                              ; preds = %553
  br label %558

558:                                              ; preds = %557
  %559 = load i8*, i8** %12, align 8
  %560 = load i64, i64* %13, align 8
  %561 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %559, i64 %560, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

562:                                              ; No predecessors!
  br label %563

563:                                              ; preds = %562, %553
  %564 = load i32, i32* %19, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %563
  %567 = load i8*, i8** %12, align 8
  %568 = load i64, i64* %13, align 8
  %569 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %567, i64 %568, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

570:                                              ; preds = %563
  %571 = load i32*, i32** %11, align 8
  store i32 129, i32* %571, align 4
  %572 = load i32*, i32** %10, align 8
  store i32 129, i32* %572, align 4
  br label %776

573:                                              ; preds = %157
  %574 = load i32, i32* %17, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %615

576:                                              ; preds = %573
  %577 = load i32, i32* %15, align 4
  %578 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %579 = icmp ne i32 %577, %578
  br i1 %579, label %580, label %586

580:                                              ; preds = %576
  br label %581

581:                                              ; preds = %580
  %582 = load i8*, i8** %12, align 8
  %583 = load i64, i64* %13, align 8
  %584 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %582, i64 %583, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

585:                                              ; No predecessors!
  br label %586

586:                                              ; preds = %585, %576
  %587 = load i32, i32* %16, align 4
  %588 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %589 = icmp ne i32 %587, %588
  br i1 %589, label %590, label %596

590:                                              ; preds = %586
  br label %591

591:                                              ; preds = %590
  %592 = load i8*, i8** %12, align 8
  %593 = load i64, i64* %13, align 8
  %594 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %592, i64 %593, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

595:                                              ; No predecessors!
  br label %596

596:                                              ; preds = %595, %586
  %597 = load i32, i32* %18, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = load i32, i32* @UNI_TRAFFIC_UBR2, align 4
  %601 = load i32*, i32** %10, align 8
  store i32 %600, i32* %601, align 4
  br label %605

602:                                              ; preds = %596
  %603 = load i32, i32* @UNI_TRAFFIC_UBR1, align 4
  %604 = load i32*, i32** %10, align 8
  store i32 %603, i32* %604, align 4
  br label %605

605:                                              ; preds = %602, %599
  %606 = load i32, i32* %19, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %611

608:                                              ; preds = %605
  %609 = load i32, i32* @UNI_TRAFFIC_UBR2, align 4
  %610 = load i32*, i32** %11, align 8
  store i32 %609, i32* %610, align 4
  br label %614

611:                                              ; preds = %605
  %612 = load i32, i32* @UNI_TRAFFIC_UBR1, align 4
  %613 = load i32*, i32** %11, align 8
  store i32 %612, i32* %613, align 4
  br label %614

614:                                              ; preds = %611, %608
  br label %776

615:                                              ; preds = %573
  %616 = load i32, i32* %15, align 4
  %617 = load i32, i32* @fvbr23, align 4
  %618 = icmp eq i32 %616, %617
  br i1 %618, label %619, label %629

619:                                              ; preds = %615
  %620 = load i32, i32* %18, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %625

622:                                              ; preds = %619
  %623 = load i32, i32* @UNI_TRAFFIC_nrtVBR3, align 4
  %624 = load i32*, i32** %10, align 8
  store i32 %623, i32* %624, align 4
  br label %628

625:                                              ; preds = %619
  %626 = load i32, i32* @UNI_TRAFFIC_nrtVBR2, align 4
  %627 = load i32*, i32** %10, align 8
  store i32 %626, i32* %627, align 4
  br label %628

628:                                              ; preds = %625, %622
  br label %673

629:                                              ; preds = %615
  %630 = load i32, i32* %15, align 4
  %631 = load i32, i32* @fvbr4, align 4
  %632 = icmp eq i32 %630, %631
  br i1 %632, label %633, label %636

633:                                              ; preds = %629
  %634 = load i32, i32* @UNI_TRAFFIC_nrtVBR4, align 4
  %635 = load i32*, i32** %10, align 8
  store i32 %634, i32* %635, align 4
  br label %672

636:                                              ; preds = %629
  %637 = load i32, i32* %15, align 4
  %638 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %639 = icmp eq i32 %637, %638
  br i1 %639, label %640, label %650

640:                                              ; preds = %636
  %641 = load i32, i32* @UNI_TRAFFIC_nrtVBR5, align 4
  %642 = load i32*, i32** %10, align 8
  store i32 %641, i32* %642, align 4
  %643 = load i32, i32* %18, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = load i8*, i8** %12, align 8
  %647 = load i64, i64* %13, align 8
  %648 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %646, i64 %647, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

649:                                              ; preds = %640
  br label %671

650:                                              ; preds = %636
  %651 = load i32, i32* %15, align 4
  %652 = load i32, i32* @fvbr16, align 4
  %653 = icmp eq i32 %651, %652
  br i1 %653, label %654, label %664

654:                                              ; preds = %650
  %655 = load i32, i32* @UNI_TRAFFIC_nrtVBR6, align 4
  %656 = load i32*, i32** %10, align 8
  store i32 %655, i32* %656, align 4
  %657 = load i32, i32* %18, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %654
  %660 = load i8*, i8** %12, align 8
  %661 = load i64, i64* %13, align 8
  %662 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %660, i64 %661, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

663:                                              ; preds = %654
  br label %670

664:                                              ; preds = %650
  br label %665

665:                                              ; preds = %664
  %666 = load i8*, i8** %12, align 8
  %667 = load i64, i64* %13, align 8
  %668 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %666, i64 %667, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

669:                                              ; No predecessors!
  br label %670

670:                                              ; preds = %669, %663
  br label %671

671:                                              ; preds = %670, %649
  br label %672

672:                                              ; preds = %671, %633
  br label %673

673:                                              ; preds = %672, %628
  %674 = load i32, i32* %16, align 4
  %675 = load i32, i32* @bvbr23, align 4
  %676 = icmp eq i32 %674, %675
  br i1 %676, label %677, label %687

677:                                              ; preds = %673
  %678 = load i32, i32* %19, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %677
  %681 = load i32, i32* @UNI_TRAFFIC_nrtVBR3, align 4
  %682 = load i32*, i32** %11, align 8
  store i32 %681, i32* %682, align 4
  br label %686

683:                                              ; preds = %677
  %684 = load i32, i32* @UNI_TRAFFIC_nrtVBR2, align 4
  %685 = load i32*, i32** %11, align 8
  store i32 %684, i32* %685, align 4
  br label %686

686:                                              ; preds = %683, %680
  br label %731

687:                                              ; preds = %673
  %688 = load i32, i32* %16, align 4
  %689 = load i32, i32* @bvbr4, align 4
  %690 = icmp eq i32 %688, %689
  br i1 %690, label %691, label %694

691:                                              ; preds = %687
  %692 = load i32, i32* @UNI_TRAFFIC_nrtVBR4, align 4
  %693 = load i32*, i32** %11, align 8
  store i32 %692, i32* %693, align 4
  br label %730

694:                                              ; preds = %687
  %695 = load i32, i32* %16, align 4
  %696 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %708

698:                                              ; preds = %694
  %699 = load i32, i32* @UNI_TRAFFIC_nrtVBR5, align 4
  %700 = load i32*, i32** %11, align 8
  store i32 %699, i32* %700, align 4
  %701 = load i32, i32* %19, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %707

703:                                              ; preds = %698
  %704 = load i8*, i8** %12, align 8
  %705 = load i64, i64* %13, align 8
  %706 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %704, i64 %705, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

707:                                              ; preds = %698
  br label %729

708:                                              ; preds = %694
  %709 = load i32, i32* %16, align 4
  %710 = load i32, i32* @bvbr16, align 4
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %722

712:                                              ; preds = %708
  %713 = load i32, i32* @UNI_TRAFFIC_nrtVBR6, align 4
  %714 = load i32*, i32** %11, align 8
  store i32 %713, i32* %714, align 4
  %715 = load i32, i32* %19, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %721

717:                                              ; preds = %712
  %718 = load i8*, i8** %12, align 8
  %719 = load i64, i64* %13, align 8
  %720 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %718, i64 %719, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

721:                                              ; preds = %712
  br label %728

722:                                              ; preds = %708
  br label %723

723:                                              ; preds = %722
  %724 = load i8*, i8** %12, align 8
  %725 = load i64, i64* %13, align 8
  %726 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %724, i64 %725, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

727:                                              ; No predecessors!
  br label %728

728:                                              ; preds = %727, %721
  br label %729

729:                                              ; preds = %728, %707
  br label %730

730:                                              ; preds = %729, %691
  br label %731

731:                                              ; preds = %730, %686
  br label %776

732:                                              ; preds = %157
  %733 = load i32, i32* %17, align 4
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %739

735:                                              ; preds = %732
  %736 = load i8*, i8** %12, align 8
  %737 = load i64, i64* %13, align 8
  %738 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %736, i64 %737, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

739:                                              ; preds = %732
  %740 = load i32, i32* %15, align 4
  %741 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %742 = icmp ne i32 %740, %741
  br i1 %742, label %743, label %749

743:                                              ; preds = %739
  br label %744

744:                                              ; preds = %743
  %745 = load i8*, i8** %12, align 8
  %746 = load i64, i64* %13, align 8
  %747 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %745, i64 %746, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

748:                                              ; No predecessors!
  br label %749

749:                                              ; preds = %748, %739
  %750 = load i32, i32* %16, align 4
  %751 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %752 = icmp ne i32 %750, %751
  br i1 %752, label %753, label %759

753:                                              ; preds = %749
  br label %754

754:                                              ; preds = %753
  %755 = load i8*, i8** %12, align 8
  %756 = load i64, i64* %13, align 8
  %757 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %755, i64 %756, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

758:                                              ; No predecessors!
  br label %759

759:                                              ; preds = %758, %749
  %760 = load i32, i32* %18, align 4
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %766

762:                                              ; preds = %759
  %763 = load i8*, i8** %12, align 8
  %764 = load i64, i64* %13, align 8
  %765 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %763, i64 %764, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

766:                                              ; preds = %759
  %767 = load i32, i32* %19, align 4
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %773

769:                                              ; preds = %766
  %770 = load i8*, i8** %12, align 8
  %771 = load i64, i64* %13, align 8
  %772 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %770, i64 %771, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %777

773:                                              ; preds = %766
  %774 = load i32*, i32** %11, align 8
  store i32 131, i32* %774, align 4
  %775 = load i32*, i32** %10, align 8
  store i32 131, i32* %775, align 4
  br label %776

776:                                              ; preds = %157, %773, %731, %614, %570, %528, %404, %324, %282, %202
  store i32 0, i32* %7, align 4
  br label %777

777:                                              ; preds = %776, %769, %762, %754, %744, %735, %723, %717, %703, %665, %659, %645, %591, %581, %566, %558, %549, %541, %532, %520, %514, %500, %462, %456, %442, %408, %398, %392, %363, %357, %330, %320, %312, %303, %295, %286, %276, %270, %256, %241, %235, %221, %208, %198, %190, %181, %173, %164, %102, %98, %90, %62, %37
  %778 = load i32, i32* %7, align 4
  ret i32 %778
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
