; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Line: %d - start of a new network block\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Line %d: Invalid SSID line '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Line %d: invalid quotation '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Line %d: network block was not terminated properly.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_ssid* (i32*, i32*, i32)* @wpa_config_read_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_ssid* @wpa_config_read_network(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2000 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @MSG_MSGDUMP, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call %struct.wpa_ssid* @os_zalloc(i32 8)
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %8, align 8
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %20 = icmp eq %struct.wpa_ssid* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %4, align 8
  br label %114

22:                                               ; preds = %3
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 1
  %25 = call i32 @dl_list_init(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %30 = call i32 @wpa_config_set_network_defaults(%struct.wpa_ssid* %29)
  br label %31

31:                                               ; preds = %87, %67, %47, %22
  %32 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 0
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @wpa_config_get_line(i8* %32, i32 2000, i32* %33, i32* %34, i8** %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @os_strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %88

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @os_strchr(i8* %43, i8 signext 61)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_ERROR, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %31

55:                                               ; preds = %42
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  store i8 0, i8* %56, align 1
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i8* @os_strchr(i8* %64, i8 signext 34)
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32, i32* @MSG_ERROR, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %71)
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %31

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @wpa_config_set(%struct.wpa_ssid* %77, i8* %78, i8* %79, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %76
  br label %31

88:                                               ; preds = %41, %31
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @MSG_ERROR, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %88
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @wpa_config_validate_network(%struct.wpa_ssid* %99, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %111 = call i32 @wpa_config_free_ssid(%struct.wpa_ssid* %110)
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %8, align 8
  br label %112

112:                                              ; preds = %109, %98
  %113 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  store %struct.wpa_ssid* %113, %struct.wpa_ssid** %4, align 8
  br label %114

114:                                              ; preds = %112, %21
  %115 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  ret %struct.wpa_ssid* %115
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.wpa_ssid* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32 @wpa_config_set_network_defaults(%struct.wpa_ssid*) #1

declare dso_local i64 @wpa_config_get_line(i8*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @wpa_config_set(%struct.wpa_ssid*, i8*, i8*, i32) #1

declare dso_local i64 @wpa_config_validate_network(%struct.wpa_ssid*, i32) #1

declare dso_local i32 @wpa_config_free_ssid(%struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
