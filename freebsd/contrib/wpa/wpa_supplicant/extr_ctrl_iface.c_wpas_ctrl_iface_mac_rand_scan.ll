; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_mac_rand_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_mac_rand_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@MAC_ADDR_RAND_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"pno\00", align 1
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enable=\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"addr=\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"CTRL: Invalid MAC address: %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"mask=\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"CTRL: Invalid MAC address mask: %s\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"CTRL: Invalid MAC_RAND_SCAN parameter: %s\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"CTRL: MAC_RAND_SCAN no type specified\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"CTRL: MAC_RAND_SCAN enable=<0/1> not specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_iface_mac_rand_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_iface_mac_rand_scan(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  br label %23

23:                                               ; preds = %107, %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @str_token(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %25, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %108

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @os_strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %107

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @os_strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %106

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @os_strcasecmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %105

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @os_strcasecmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %104

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @os_strncasecmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 7
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %8, align 4
  br label %103

67:                                               ; preds = %59
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @os_strncasecmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  store i32* %19, i32** %13, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i32*, i32** %13, align 8
  %75 = call i64 @hwaddr_aton(i8* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

81:                                               ; preds = %71
  br label %102

82:                                               ; preds = %67
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @os_strncasecmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  store i32* %22, i32** %14, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i32*, i32** %14, align 8
  %90 = call i64 @hwaddr_aton(i8* %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @MSG_INFO, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

96:                                               ; preds = %86
  br label %101

97:                                               ; preds = %82
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %99)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %81
  br label %103

103:                                              ; preds = %102, %63
  br label %104

104:                                              ; preds = %103, %55
  br label %105

105:                                              ; preds = %104, %47
  br label %106

106:                                              ; preds = %105, %39
  br label %107

107:                                              ; preds = %106, %31
  br label %23

108:                                              ; preds = %23
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @MSG_INFO, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = icmp ugt i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @MSG_INFO, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @wpas_disable_mac_addr_randomization(%struct.wpa_supplicant* %124, i32 %125)
  store i32 %126, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

127:                                              ; preds = %120
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = call i32 @wpas_enable_mac_addr_randomization(%struct.wpa_supplicant* %128, i32 %129, i32* %130, i32* %131)
  store i32 %132, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %127, %123, %117, %111, %97, %92, %77
  %134 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @str_token(i8*, i8*, i8**) #2

declare dso_local i64 @os_strcasecmp(i8*, i8*) #2

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @wpas_disable_mac_addr_randomization(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @wpas_enable_mac_addr_randomization(%struct.wpa_supplicant*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
