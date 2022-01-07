; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_init_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_init_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_interface = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to initialize driver interface - try next driver wrapper\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to initialize driver interface\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Driver interface rejected driver_param '%s'\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Driver interface replaced interface name with '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_interface*)* @wpas_init_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_init_driver(%struct.wpa_supplicant* %0, %struct.wpa_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_interface* %1, %struct.wpa_interface** %5, align 8
  %10 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @wpa_supplicant_set_driver(%struct.wpa_supplicant* %14, i8* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %116

19:                                               ; preds = %13
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @wpa_drv_init(%struct.wpa_supplicant* %20, i32 %23)
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @os_strchr(i8* %35, i8 signext 44)
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i8* [ %36, %34 ], [ null, %37 ]
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %43, i32 %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %7, align 8
  br label %13

48:                                               ; preds = %38
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %50 = load i32, i32* @MSG_ERROR, align 4
  %51 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %116

52:                                               ; preds = %19
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @wpa_drv_set_param(%struct.wpa_supplicant* %53, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %3, align 4
  br label %116

70:                                               ; preds = %52
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %72 = call i8* @wpa_drv_get_ifname(%struct.wpa_supplicant* %71)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @os_strcmp(i8* %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %83, i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @os_strlcpy(i32 %89, i8* %90, i32 4)
  br label %92

92:                                               ; preds = %82, %75, %70
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = call i8* @wpa_driver_get_radio_name(%struct.wpa_supplicant* %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* null, i8** %8, align 8
  br label %104

104:                                              ; preds = %103, %97, %92
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32* @radio_add_interface(%struct.wpa_supplicant* %105, i8* %106)
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %116

115:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114, %61, %48, %18
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @wpa_supplicant_set_driver(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32* @wpa_drv_init(%struct.wpa_supplicant*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i64 @wpa_drv_set_param(%struct.wpa_supplicant*, i32) #1

declare dso_local i8* @wpa_drv_get_ifname(%struct.wpa_supplicant*) #1

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i8* @wpa_driver_get_radio_name(%struct.wpa_supplicant*) #1

declare dso_local i32* @radio_add_interface(%struct.wpa_supplicant*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
