; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_remove_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_remove_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_cred* }
%struct.wpa_cred = type { i8**, i64, i8*, %struct.wpa_cred* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CTRL_IFACE: REMOVE_CRED all\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sp_fqdn=\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"CTRL_IFACE: REMOVE_CRED SP FQDN '%s'\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"provisioning_sp=\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"CTRL_IFACE: REMOVE_CRED provisioning SP FQDN '%s'\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CTRL_IFACE: REMOVE_CRED id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_remove_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_remove_cred(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_cred*, align 8
  %8 = alloca %struct.wpa_cred*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @os_strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.wpa_cred*, %struct.wpa_cred** %19, align 8
  store %struct.wpa_cred* %20, %struct.wpa_cred** %7, align 8
  br label %21

21:                                               ; preds = %24, %13
  %22 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %23 = icmp ne %struct.wpa_cred* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  store %struct.wpa_cred* %25, %struct.wpa_cred** %8, align 8
  %26 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %26, i32 0, i32 3
  %28 = load %struct.wpa_cred*, %struct.wpa_cred** %27, align 8
  store %struct.wpa_cred* %28, %struct.wpa_cred** %7, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %30 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %31 = call i32 @wpas_ctrl_remove_cred(%struct.wpa_supplicant* %29, %struct.wpa_cred* %30)
  br label %21

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %142

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @os_strncmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.wpa_cred*, %struct.wpa_cred** %45, align 8
  store %struct.wpa_cred* %46, %struct.wpa_cred** %7, align 8
  br label %47

47:                                               ; preds = %86, %37
  %48 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %49 = icmp ne %struct.wpa_cred* %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  store %struct.wpa_cred* %51, %struct.wpa_cred** %8, align 8
  %52 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %53 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %52, i32 0, i32 3
  %54 = load %struct.wpa_cred*, %struct.wpa_cred** %53, align 8
  store %struct.wpa_cred* %54, %struct.wpa_cred** %7, align 8
  %55 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %56 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %63 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %68 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = call i64 @os_strcmp(i8* %72, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %81 = call i32 @wpas_ctrl_remove_cred(%struct.wpa_supplicant* %79, %struct.wpa_cred* %80)
  br label %85

82:                                               ; preds = %77
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %60

85:                                               ; preds = %78, %60
  br label %86

86:                                               ; preds = %85, %50
  br label %47

87:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %142

88:                                               ; preds = %33
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @os_strncmp(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 16
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %98 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.wpa_cred*, %struct.wpa_cred** %100, align 8
  store %struct.wpa_cred* %101, %struct.wpa_cred** %7, align 8
  br label %102

102:                                              ; preds = %126, %92
  %103 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %104 = icmp ne %struct.wpa_cred* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  store %struct.wpa_cred* %106, %struct.wpa_cred** %8, align 8
  %107 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %108 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %107, i32 0, i32 3
  %109 = load %struct.wpa_cred*, %struct.wpa_cred** %108, align 8
  store %struct.wpa_cred* %109, %struct.wpa_cred** %7, align 8
  %110 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %111 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %116 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 16
  %120 = call i64 @os_strcmp(i8* %117, i8* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %124 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %125 = call i32 @wpas_ctrl_remove_cred(%struct.wpa_supplicant* %123, %struct.wpa_cred* %124)
  br label %126

126:                                              ; preds = %122, %114, %105
  br label %102

127:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %142

128:                                              ; preds = %88
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @atoi(i8* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %135 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call %struct.wpa_cred* @wpa_config_get_cred(%struct.TYPE_2__* %136, i32 %137)
  store %struct.wpa_cred* %138, %struct.wpa_cred** %7, align 8
  %139 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %140 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %141 = call i32 @wpas_ctrl_remove_cred(%struct.wpa_supplicant* %139, %struct.wpa_cred* %140)
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %128, %127, %87, %32
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_ctrl_remove_cred(%struct.wpa_supplicant*, %struct.wpa_cred*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_cred* @wpa_config_get_cred(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
