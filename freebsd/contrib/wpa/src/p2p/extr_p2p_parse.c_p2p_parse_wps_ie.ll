; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_wps_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_message = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i64, i8*, i8*, i32* }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i64, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"P2P: Parsing WPS IE\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"P2P: Config Methods (WPS): 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"P2P: Device Password ID: %d\00", align 1
@WPS_DEV_TYPE_BUFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"P2P: Primary Device Type (WPS): %s\00", align 1
@P2P_MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.p2p_message*)* @p2p_parse_wps_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_parse_wps_ie(%struct.wpabuf* %0, %struct.p2p_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.p2p_message*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.p2p_message* %1, %struct.p2p_message** %5, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %181

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 18
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %27 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %26, i32 0, i32 18
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %34 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %33, i32 0, i32 18
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 18
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @os_memcpy(i32* %35, i64 %37, i32 %39)
  br label %41

41:                                               ; preds = %32, %25, %20, %16
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 17
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 17
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @WPA_GET_BE16(i64 %47)
  %49 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %50 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %49, i32 0, i32 17
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %53 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %52, i32 0, i32 17
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %45, %41
  %57 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 16
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 16
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @WPA_GET_BE16(i64 %62)
  %64 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %65 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %64, i32 0, i32 16
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %68 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %67, i32 0, i32 16
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %72 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %60, %56
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 15
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32, i32* @WPS_DEV_TYPE_BUFSIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %8, align 8
  %81 = alloca i8, i64 %79, align 16
  store i64 %79, i64* %9, align 8
  %82 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 15
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %85 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %84, i32 0, i32 15
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %88 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %87, i32 0, i32 15
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %79 to i32
  %91 = call i8* @wps_dev_type_bin2str(i64 %89, i8* %81, i32 %90)
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %77, %73
  %95 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 14
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 14
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %102 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %101, i32 0, i32 14
  store i64 %100, i64* %102, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 13
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %106 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %98, %94
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 12
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %120 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %119, i32 0, i32 12
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 11
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %132 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %131, i32 0, i32 11
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %112
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %108

140:                                              ; preds = %108
  %141 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %144 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 8
  %145 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %148 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %152 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %156 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %160 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 8
  %161 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %164 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %168 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %172 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %176 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %180 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %140, %15
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @os_memcpy(i32*, i64, i32) #1

declare dso_local i8* @WPA_GET_BE16(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @wps_dev_type_bin2str(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
