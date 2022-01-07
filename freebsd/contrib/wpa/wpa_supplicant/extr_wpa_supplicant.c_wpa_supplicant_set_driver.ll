; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.wpa_supplicant = type { i32 }

@wpa_drivers = common dso_local global %struct.TYPE_2__** null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No driver interfaces build into wpa_supplicant\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported driver '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_set_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_set_driver(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = icmp eq %struct.wpa_supplicant* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %98

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = call i64 @select_driver(%struct.wpa_supplicant* %27, i32 0)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %90, %30
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @os_strchr(i8* %32, i8 signext 44)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %45

42:                                               ; preds = %31
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @os_strlen(i8* %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %42, %36
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @os_strlen(i8* %60)
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @os_strncmp(i8* %65, i8* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @select_driver(%struct.wpa_supplicant* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %98

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %64, %53
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %46

87:                                               ; preds = %46
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %9, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %31, label %93

93:                                               ; preds = %90
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %94, i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  store i32 -1, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %81, %26, %19, %13
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i64 @select_driver(%struct.wpa_supplicant*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
