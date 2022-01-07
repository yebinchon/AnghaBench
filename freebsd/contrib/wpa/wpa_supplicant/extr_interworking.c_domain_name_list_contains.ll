; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_domain_name_list_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_domain_name_list_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Interworking: AP domain name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_name_list_contains(%struct.wpabuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @os_strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %17 = call i32* @wpabuf_head(%struct.wpabuf* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %20 = call i32 @wpabuf_len(%struct.wpabuf* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %9, align 8
  br label %23

23:                                               ; preds = %98, %3
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp sgt i64 %29, 1
  br i1 %30, label %31, label %103

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = icmp sgt i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %103

45:                                               ; preds = %31
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @wpa_hexdump_ascii(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @os_strncasecmp(i8* %55, i8* %57, i64 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %104

62:                                               ; preds = %54, %45
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load i32*, i32** %8, align 8
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @os_strncasecmp(i8* %88, i8* %92, i64 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %104

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %70, %65, %62
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %8, align 8
  br label %23

103:                                              ; preds = %44, %23
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %96, %61
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
