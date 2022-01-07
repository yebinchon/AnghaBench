; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MAX_WFD_SUBELEMS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"WFD: Clear subelement %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WFD: Set subelement %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_display_subelem_set(%struct.wpa_global* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  store i8 0, i8* %17, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @os_strlen(i8* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = and i64 %21, 1
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %117

25:                                               ; preds = %16
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %26, 2
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @os_strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.wpabuf* @wpabuf_alloc(i32 %33)
  store %struct.wpabuf* %34, %struct.wpabuf** %9, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %36 = icmp eq %struct.wpabuf* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %117

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @wpabuf_put(%struct.wpabuf* %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @hexstr2bin(i8* %39, i32 %42, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %48 = call i32 @wpabuf_free(%struct.wpabuf* %47)
  store i32 -1, i32* %3, align 4
  br label %117

49:                                               ; preds = %38
  %50 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %52 = call i32 @wifi_display_subelem_set_from_ies(%struct.wpa_global* %50, %struct.wpabuf* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %54 = call i32 @wpabuf_free(%struct.wpabuf* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %117

56:                                               ; preds = %25
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MAX_WFD_SUBELEMS, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %56
  store i32 -1, i32* %3, align 4
  br label %117

66:                                               ; preds = %61
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %99

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  %75 = add i64 1, %74
  %76 = trunc i64 %75 to i32
  %77 = call %struct.wpabuf* @wpabuf_alloc(i32 %76)
  store %struct.wpabuf* %77, %struct.wpabuf** %9, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %79 = icmp eq %struct.wpabuf* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %117

81:                                               ; preds = %73
  %82 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @wpabuf_put_u8(%struct.wpabuf* %82, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @wpabuf_put(%struct.wpabuf* %86, i64 %87)
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @hexstr2bin(i8* %85, i32 %88, i64 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  store i32 -1, i32* %3, align 4
  br label %117

95:                                               ; preds = %81
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %69
  %100 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %100, i32 0, i32 0
  %102 = load %struct.wpabuf**, %struct.wpabuf*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %102, i64 %104
  %106 = load %struct.wpabuf*, %struct.wpabuf** %105, align 8
  %107 = call i32 @wpabuf_free(%struct.wpabuf* %106)
  %108 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %109 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %110 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %109, i32 0, i32 0
  %111 = load %struct.wpabuf**, %struct.wpabuf*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %111, i64 %113
  store %struct.wpabuf* %108, %struct.wpabuf** %114, align 8
  %115 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %116 = call i32 @wifi_display_update_wfd_ie(%struct.wpa_global* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %99, %92, %80, %65, %49, %46, %37, %24, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wifi_display_subelem_set_from_ies(%struct.wpa_global*, %struct.wpabuf*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wifi_display_update_wfd_ie(%struct.wpa_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
