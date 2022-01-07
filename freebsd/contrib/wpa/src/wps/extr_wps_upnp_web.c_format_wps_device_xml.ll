; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_format_wps_device_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_format_wps_device_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.upnp_wps_device_sm = type { i32 }
%struct.wpabuf = type { i32 }

@wps_device_xml_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"WPS Access Point\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"friendlyName\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"manufacturerURL\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"modelDescription\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"modelName\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"modelNumber\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"modelURL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"<UDN>uuid:\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"</UDN>\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"UPC\00", align 1
@wps_device_xml_postfix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_device_interface*, %struct.upnp_wps_device_sm*, %struct.wpabuf*)* @format_wps_device_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_wps_device_xml(%struct.upnp_wps_device_interface* %0, %struct.upnp_wps_device_sm* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.upnp_wps_device_interface*, align 8
  %5 = alloca %struct.upnp_wps_device_sm*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  store %struct.upnp_wps_device_interface* %0, %struct.upnp_wps_device_interface** %4, align 8
  store %struct.upnp_wps_device_sm* %1, %struct.upnp_wps_device_sm** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** @wps_device_xml_prefix, align 8
  %11 = call i32 @wpabuf_put_str(%struct.wpabuf* %9, i8* %10)
  %12 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %13 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %19, %3
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %26 ]
  store i8* %28, i8** %7, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @xml_add_tagged_data(%struct.wpabuf* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %33 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  br label %48

47:                                               ; preds = %40, %27
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %47 ]
  store i8* %49, i8** %7, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @xml_add_tagged_data(%struct.wpabuf* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %54 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %61 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %62 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @xml_add_tagged_data(%struct.wpabuf* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %59, %48
  %68 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %69 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %76 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %77 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @xml_add_tagged_data(%struct.wpabuf* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %74, %67
  %83 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %84 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  br label %99

98:                                               ; preds = %91, %82
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i8* [ %97, %96 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %98 ]
  store i8* %100, i8** %7, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @xml_add_tagged_data(%struct.wpabuf* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %104 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %105 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %113 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %114 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @xml_add_tagged_data(%struct.wpabuf* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %111, %99
  %121 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %122 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %129 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %130 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @xml_add_tagged_data(%struct.wpabuf* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %127, %120
  %136 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %137 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %145 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %146 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @xml_add_tagged_data(%struct.wpabuf* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %143, %135
  %153 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %154 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %159 = call i32 @uuid_bin2str(i32 %157, i8* %158, i32 80)
  %160 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  store i8* %160, i8** %7, align 8
  %161 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %162 = call i32 @wpabuf_put_str(%struct.wpabuf* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %163 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @os_strlen(i8* %165)
  %167 = call i32 @xml_data_encode(%struct.wpabuf* %163, i8* %164, i32 %166)
  %168 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %169 = call i32 @wpabuf_put_str(%struct.wpabuf* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %170 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %171 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %152
  %177 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %178 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %4, align 8
  %179 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @xml_add_tagged_data(%struct.wpabuf* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %176, %152
  %185 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %186 = load i8*, i8** @wps_device_xml_postfix, align 8
  %187 = call i32 @wpabuf_put_str(%struct.wpabuf* %185, i8* %186)
  ret void
}

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @xml_add_tagged_data(%struct.wpabuf*, i8*, i8*) #1

declare dso_local i32 @uuid_bin2str(i32, i8*, i32) #1

declare dso_local i32 @xml_data_encode(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
