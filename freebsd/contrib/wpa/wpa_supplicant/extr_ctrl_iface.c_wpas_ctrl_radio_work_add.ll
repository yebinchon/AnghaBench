; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_radio_work_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_radio_work_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64 }
%struct.wpa_external_work = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"freq=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout=\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ext:\00", align 1
@wpas_ctrl_radio_work_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpas_ctrl_radio_work_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_radio_work_add(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_external_work*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %16 = call %struct.wpa_external_work* @os_zalloc(i32 24)
  store %struct.wpa_external_work* %16, %struct.wpa_external_work** %10, align 8
  %17 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %18 = icmp eq %struct.wpa_external_work* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %125

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @os_strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @os_strstr(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = call i8* @atoi(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %37, %25
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @os_strstr(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = call i8* @atoi(i8* %49)
  %51 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %52 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  br label %57

54:                                               ; preds = %20
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @os_strlen(i8* %55)
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i64, i64* %13, align 8
  %59 = add i64 4, %58
  %60 = icmp uge i64 %59, 8
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 3, i64* %13, align 8
  br label %62

62:                                               ; preds = %61, %57
  %63 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %64 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @os_strlcpy(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %67 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %68 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @os_memcpy(i8* %70, i8* %71, i64 %72)
  %74 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %75 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add i64 4, %77
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %62
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %90 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %88, %62
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %98 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %102 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @wpas_ctrl_radio_work_cb, align 4
  %105 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %106 = call i64 @radio_add_work(%struct.wpa_supplicant* %99, i32 %100, i8* %103, i32 0, i32 %104, %struct.wpa_external_work* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %110 = call i32 @os_free(%struct.wpa_external_work* %109)
  store i32 -1, i32* %5, align 4
  br label %125

111:                                              ; preds = %93
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.wpa_external_work*, %struct.wpa_external_work** %10, align 8
  %115 = getelementptr inbounds %struct.wpa_external_work, %struct.wpa_external_work* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @os_snprintf(i8* %112, i64 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i64 @os_snprintf_error(i64 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %122, %108, %19
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.wpa_external_work* @os_zalloc(i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.wpa_external_work*) #1

declare dso_local i32 @os_free(%struct.wpa_external_work*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i64) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
