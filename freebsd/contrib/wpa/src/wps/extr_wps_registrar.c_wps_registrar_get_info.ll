; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 }
%struct.wps_registrar_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i32 }

@WPS_DEV_TYPE_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"wpsUuid=%s\0AwpsPrimaryDeviceType=%s\0AwpsDeviceName=%s\0AwpsManufacturer=%s\0AwpsModelName=%s\0AwpsModelNumber=%s\0AwpsSerialNumber=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_get_info(%struct.wps_registrar* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_registrar*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wps_registrar_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [40 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @WPS_DEV_TYPE_BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar* %21, i32* %22)
  store %struct.wps_registrar_device* %23, %struct.wps_registrar_device** %10, align 8
  %24 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %25 = icmp eq %struct.wps_registrar_device* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %131

27:                                               ; preds = %4
  %28 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %29 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %32 = call i64 @uuid_bin2str(i32 %30, i8* %31, i32 40)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %131

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %40, %42
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %45 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %46 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = trunc i64 %18 to i32
  %50 = call i32 @wps_dev_type_bin2str(i32 %48, i8* %20, i32 %49)
  %51 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %52 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %58 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i8* [ %60, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %61 ]
  %64 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %65 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %71 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  br label %75

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i8* [ %73, %69 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %74 ]
  %77 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %78 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %84 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  br label %88

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %82
  %89 = phi i8* [ %86, %82 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %87 ]
  %90 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %91 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %97 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %95
  %102 = phi i8* [ %99, %95 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %100 ]
  %103 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %104 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  %110 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  br label %114

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %108
  %115 = phi i8* [ %112, %108 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %113 ]
  %116 = call i32 @os_snprintf(i8* %39, i64 %43, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %50, i8* %63, i8* %76, i8* %89, i8* %102, i8* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %117, %119
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @os_snprintf_error(i64 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %131

126:                                              ; preds = %114
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %131

131:                                              ; preds = %126, %124, %34, %26
  %132 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar*, i32*) #2

declare dso_local i64 @uuid_bin2str(i32, i8*, i32) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @wps_dev_type_bin2str(i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
