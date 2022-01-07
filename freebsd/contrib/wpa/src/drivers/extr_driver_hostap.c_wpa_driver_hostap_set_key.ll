; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_wpa_driver_hostap_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_wpa_driver_hostap_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@PRISM2_SET_ENCRYPTION = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@HOSTAP_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@HOSTAP_CRYPT_FLAG_SET_TX_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to set encryption.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*, i32, i32, i32*, i64, i32*, i64)* @wpa_driver_hostap_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_hostap_set_key(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i64 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.hostap_driver_data*, align 8
  %23 = alloca %struct.prism2_hostapd_param*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %28, %struct.hostap_driver_data** %22, align 8
  store i32 0, i32* %26, align 4
  %29 = load i64, i64* %21, align 8
  %30 = add i64 48, %29
  store i64 %30, i64* %25, align 8
  %31 = load i64, i64* %25, align 8
  %32 = call i32* @os_zalloc(i64 %31)
  store i32* %32, i32** %24, align 8
  %33 = load i32*, i32** %24, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %10
  store i32 -1, i32* %11, align 4
  br label %137

36:                                               ; preds = %10
  %37 = load i32*, i32** %24, align 8
  %38 = bitcast i32* %37 to %struct.prism2_hostapd_param*
  store %struct.prism2_hostapd_param* %38, %struct.prism2_hostapd_param** %23, align 8
  %39 = load i32, i32* @PRISM2_SET_ENCRYPTION, align 4
  %40 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %41 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %46 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @ETH_ALEN, align 8
  %49 = call i32 @memset(i32* %47, i32 255, i64 %48)
  br label %57

50:                                               ; preds = %36
  %51 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %52 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i64, i64* @ETH_ALEN, align 8
  %56 = call i32 @memcpy(i32* %53, i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %14, align 4
  switch i32 %58, label %95 [
    i32 130, label %59
    i32 128, label %68
    i32 129, label %77
    i32 131, label %86
  ]

59:                                               ; preds = %57
  %60 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %61 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32, i32* @HOSTAP_CRYPT_ALG_NAME_LEN, align 4
  %67 = call i32 @os_strlcpy(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %98

68:                                               ; preds = %57
  %69 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %70 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* @HOSTAP_CRYPT_ALG_NAME_LEN, align 4
  %76 = call i32 @os_strlcpy(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %98

77:                                               ; preds = %57
  %78 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %79 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load i32, i32* @HOSTAP_CRYPT_ALG_NAME_LEN, align 4
  %85 = call i32 @os_strlcpy(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %98

86:                                               ; preds = %57
  %87 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %88 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i32, i32* @HOSTAP_CRYPT_ALG_NAME_LEN, align 4
  %94 = call i32 @os_strlcpy(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %98

95:                                               ; preds = %57
  %96 = load i32*, i32** %24, align 8
  %97 = call i32 @os_free(i32* %96)
  store i32 -1, i32* %11, align 4
  br label %137

98:                                               ; preds = %86, %77, %68, %59
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @HOSTAP_CRYPT_FLAG_SET_TX_KEY, align 4
  br label %104

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %107 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %112 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load i64, i64* %21, align 8
  %116 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %117 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i64 %115, i64* %119, align 8
  %120 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %121 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %120, i64 1
  %122 = bitcast %struct.prism2_hostapd_param* %121 to i32*
  %123 = load i32*, i32** %20, align 8
  %124 = load i64, i64* %21, align 8
  %125 = call i32 @memcpy(i32* %122, i32* %123, i64 %124)
  %126 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %22, align 8
  %127 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %23, align 8
  %128 = load i64, i64* %25, align 8
  %129 = call i64 @hostapd_ioctl(%struct.hostap_driver_data* %126, %struct.prism2_hostapd_param* %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %104
  %132 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %26, align 4
  br label %133

133:                                              ; preds = %131, %104
  %134 = load i32*, i32** %24, align 8
  %135 = call i32 @free(i32* %134)
  %136 = load i32, i32* %26, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %95, %35
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @hostapd_ioctl(%struct.hostap_driver_data*, %struct.prism2_hostapd_param*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
