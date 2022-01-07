; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_parse_radius_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_parse_radius_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_radius_attr = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_radius_attr* @hostapd_parse_radius_attr(i8* %0) #0 {
  %2 = alloca %struct.hostapd_radius_attr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.hostapd_radius_attr*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = call %struct.hostapd_radius_attr* @os_zalloc(i32 16)
  store %struct.hostapd_radius_attr* %8, %struct.hostapd_radius_attr** %6, align 8
  %9 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %10 = icmp ne %struct.hostapd_radius_attr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @atoi(i8* %13)
  %15 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %16 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @os_strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %12
  %22 = call i8* @wpabuf_alloc(i32 1)
  %23 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %24 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %26 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %31 = call i32 @os_free(%struct.hostapd_radius_attr* %30)
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

32:                                               ; preds = %21
  %33 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %34 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @wpabuf_put_u8(i8* %35, i32 0)
  %37 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  store %struct.hostapd_radius_attr* %37, %struct.hostapd_radius_attr** %2, align 8
  br label %137

38:                                               ; preds = %12
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 58
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  %53 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %54 = call i32 @os_free(%struct.hostapd_radius_attr* %53)
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %5, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %5, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %124 [
    i32 115, label %63
    i32 120, label %70
    i32 100, label %108
  ]

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @os_strlen(i8* %65)
  %67 = call i8* @wpabuf_alloc_copy(i8* %64, i64 %66)
  %68 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %69 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %127

70:                                               ; preds = %55
  %71 = load i8*, i8** %4, align 8
  %72 = call i64 @os_strlen(i8* %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, 1
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %127

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = udiv i64 %78, 2
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i8* @wpabuf_alloc(i32 %81)
  %83 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %84 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %86 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %127

90:                                               ; preds = %77
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %93 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @wpabuf_put(i8* %94, i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @hexstr2bin(i8* %91, i32 %96, i64 %97)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %102 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @wpabuf_free(i8* %103)
  %105 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %106 = call i32 @os_free(%struct.hostapd_radius_attr* %105)
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

107:                                              ; preds = %90
  br label %127

108:                                              ; preds = %55
  %109 = call i8* @wpabuf_alloc(i32 4)
  %110 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %111 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %113 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %118 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @atoi(i8* %120)
  %122 = call i32 @wpabuf_put_be32(i8* %119, i32 %121)
  br label %123

123:                                              ; preds = %116, %108
  br label %127

124:                                              ; preds = %55
  %125 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %126 = call i32 @os_free(%struct.hostapd_radius_attr* %125)
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

127:                                              ; preds = %123, %107, %89, %76, %63
  %128 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %129 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  %134 = call i32 @os_free(%struct.hostapd_radius_attr* %133)
  store %struct.hostapd_radius_attr* null, %struct.hostapd_radius_attr** %2, align 8
  br label %137

135:                                              ; preds = %127
  %136 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %6, align 8
  store %struct.hostapd_radius_attr* %136, %struct.hostapd_radius_attr** %2, align 8
  br label %137

137:                                              ; preds = %135, %132, %124, %100, %52, %32, %29, %11
  %138 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %2, align 8
  ret %struct.hostapd_radius_attr* %138
}

declare dso_local %struct.hostapd_radius_attr* @os_zalloc(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_free(%struct.hostapd_radius_attr*) #1

declare dso_local i32 @wpabuf_put_u8(i8*, i32) #1

declare dso_local i8* @wpabuf_alloc_copy(i8*, i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i32 @wpabuf_put(i8*, i64) #1

declare dso_local i32 @wpabuf_free(i8*) #1

declare dso_local i32 @wpabuf_put_be32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
