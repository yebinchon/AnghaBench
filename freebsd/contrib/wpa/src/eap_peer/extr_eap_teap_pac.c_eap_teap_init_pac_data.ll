; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_init_pac_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_init_pac_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_read_ctx = type { i32, i8*, i8*, i32, i32 }
%struct.wpa_config_blob = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"blob://\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: No PAC blob '%s' - assume no PAC entries have been provisioned\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: No PAC file '%s' - assume no PAC entries have been provisioned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.eap_teap_read_ctx*)* @eap_teap_init_pac_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_init_pac_data(%struct.eap_sm* %0, i8* %1, %struct.eap_teap_read_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.eap_teap_read_ctx*, align 8
  %8 = alloca %struct.wpa_config_blob*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.eap_teap_read_ctx* %2, %struct.eap_teap_read_ctx** %7, align 8
  %9 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %10 = call i32 @os_memset(%struct.eap_teap_read_ctx* %9, i32 0, i32 32)
  %11 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %11, i32 0, i32 0
  store i32 2048, i32* %12, align 8
  %13 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @os_malloc(i32 %15)
  %17 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @os_strncmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 7
  %32 = call %struct.wpa_config_blob* @eap_get_config_blob(%struct.eap_sm* %29, i8* %31)
  store %struct.wpa_config_blob* %32, %struct.wpa_config_blob** %8, align 8
  %33 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %34 = icmp ne %struct.wpa_config_blob* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 7
  %39 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @os_free(i32 %42)
  store i32 -1, i32* %4, align 4
  br label %81

44:                                               ; preds = %28
  %45 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %56 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %80

62:                                               ; preds = %24
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @fopen(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load %struct.eap_teap_read_ctx*, %struct.eap_teap_read_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.eap_teap_read_ctx, %struct.eap_teap_read_ctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @os_free(i32 %77)
  store i32 -1, i32* %4, align 4
  br label %81

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %44
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %71, %35, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @os_memset(%struct.eap_teap_read_ctx*, i32, i32) #1

declare dso_local i32 @os_malloc(i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.wpa_config_blob* @eap_get_config_blob(%struct.eap_sm*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
