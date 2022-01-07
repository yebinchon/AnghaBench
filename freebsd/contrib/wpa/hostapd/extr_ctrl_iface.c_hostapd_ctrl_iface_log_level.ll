; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_log_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_log_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Current level: %s\0ATimestamp: %d\0A\00", align 1
@wpa_debug_level = common dso_local global i32 0, align 4
@wpa_debug_timestamp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*, i8*, i64)* @hostapd_ctrl_iface_log_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_log_level(%struct.hostapd_data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @wpa_debug_level, align 4
  %32 = call i32 @debug_level_str(i32 %31)
  %33 = load i32, i32* @wpa_debug_timestamp, align 4
  %34 = call i32 @os_snprintf(i8* %24, i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @os_snprintf_error(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %98

47:                                               ; preds = %4
  br label %48

48:                                               ; preds = %53, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  br label %48

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @os_strchr(i8* %57, i8 signext 32)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i8 0, i8* %62, align 1
  br label %64

64:                                               ; preds = %69, %61
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  br label %64

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @os_strlen(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @str_to_debug_level(i8* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %98

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* @wpa_debug_level, align 4
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @os_strlen(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @atoi(i8* %93)
  store i32 %94, i32* @wpa_debug_timestamp, align 4
  br label %95

95:                                               ; preds = %92, %88, %85
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @os_memcpy(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  store i32 3, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %82, %45
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @debug_level_str(i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @str_to_debug_level(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
