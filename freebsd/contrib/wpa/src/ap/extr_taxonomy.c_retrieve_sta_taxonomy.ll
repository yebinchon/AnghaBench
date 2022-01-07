; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_retrieve_sta_taxonomy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_retrieve_sta_taxonomy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"wifi4|probe:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"|assoc:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retrieve_sta_taxonomy(%struct.hostapd_data* %0, %struct.sta_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %102

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @os_snprintf(i8* %24, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @os_snprintf_error(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %102

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ie_to_string(i8* %42, i32 %48, i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @os_strchr(i8* %53, i8 signext 0)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp uge i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %102

59:                                               ; preds = %34
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @os_snprintf(i8* %60, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @os_snprintf_error(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %102

78:                                               ; preds = %59
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ie_to_string(i8* %83, i32 %89, i32 %92)
  %94 = load i8*, i8** %11, align 8
  %95 = call i8* @os_strchr(i8* %94, i8 signext 0)
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %78, %77, %58, %33, %22
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @ie_to_string(i8*, i32, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
