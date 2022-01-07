; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan.c_bgscan_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan.c_bgscan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_ops = type { i32, i32* (%struct.wpa_supplicant*, i8*, %struct.wpa_ssid*)* }
%struct.wpa_supplicant = type { %struct.bgscan_ops*, i32* }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bgscan_modules = common dso_local global %struct.bgscan_ops** null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"bgscan: Could not find module matching the parameter '%s'\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"bgscan: Initialized module '%s' with parameters '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgscan_init(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgscan_ops*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.bgscan_ops* null, %struct.bgscan_ops** %11, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = call i32 @bgscan_deinit(%struct.wpa_supplicant* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @os_strchr(i8* %14, i8 signext 58)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @os_strlen(i8* %19)
  store i64 %20, i64* %9, align 8
  br label %29

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %21, %18
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load %struct.bgscan_ops**, %struct.bgscan_ops*** @bgscan_modules, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bgscan_ops*, %struct.bgscan_ops** %31, i64 %33
  %35 = load %struct.bgscan_ops*, %struct.bgscan_ops** %34, align 8
  %36 = icmp ne %struct.bgscan_ops* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.bgscan_ops**, %struct.bgscan_ops*** @bgscan_modules, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bgscan_ops*, %struct.bgscan_ops** %39, i64 %41
  %43 = load %struct.bgscan_ops*, %struct.bgscan_ops** %42, align 8
  %44 = getelementptr inbounds %struct.bgscan_ops, %struct.bgscan_ops* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @os_strncmp(i8* %38, i32 %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.bgscan_ops**, %struct.bgscan_ops*** @bgscan_modules, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bgscan_ops*, %struct.bgscan_ops** %50, i64 %52
  %54 = load %struct.bgscan_ops*, %struct.bgscan_ops** %53, align 8
  store %struct.bgscan_ops* %54, %struct.bgscan_ops** %11, align 8
  br label %59

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %30

59:                                               ; preds = %49, %30
  %60 = load %struct.bgscan_ops*, %struct.bgscan_ops** %11, align 8
  %61 = icmp eq %struct.bgscan_ops* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  store i32 -1, i32* %4, align 4
  br label %93

66:                                               ; preds = %59
  %67 = load %struct.bgscan_ops*, %struct.bgscan_ops** %11, align 8
  %68 = getelementptr inbounds %struct.bgscan_ops, %struct.bgscan_ops* %67, i32 0, i32 1
  %69 = load i32* (%struct.wpa_supplicant*, i8*, %struct.wpa_ssid*)*, i32* (%struct.wpa_supplicant*, i8*, %struct.wpa_ssid*)** %68, align 8
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %73 = call i32* %69(%struct.wpa_supplicant* %70, i8* %71, %struct.wpa_ssid* %72)
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %93

81:                                               ; preds = %66
  %82 = load %struct.bgscan_ops*, %struct.bgscan_ops** %11, align 8
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  store %struct.bgscan_ops* %82, %struct.bgscan_ops** %84, align 8
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load %struct.bgscan_ops*, %struct.bgscan_ops** %11, align 8
  %87 = getelementptr inbounds %struct.bgscan_ops, %struct.bgscan_ops* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %90, i8* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %81, %80, %62
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @bgscan_deinit(%struct.wpa_supplicant*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_strncmp(i8*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
