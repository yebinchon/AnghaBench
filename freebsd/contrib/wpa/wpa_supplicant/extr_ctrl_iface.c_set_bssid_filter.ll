; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_set_bssid_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_set_bssid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bssid_filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @set_bssid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bssid_filter(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %11, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %64, %2
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %65

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @hwaddr_aton(i8* %28, i32* %16)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @os_free(i32* %32)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %83

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32* @os_realloc_array(i32* %35, i64 %37, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @os_free(i32* %43)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %83

45:                                               ; preds = %34
  %46 = load i32*, i32** %10, align 8
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %48, %50
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @os_memcpy(i32* %52, i32* %16, i32 %53)
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @os_strchr(i8* %57, i8 signext 32)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %61, %45
  br label %18

65:                                               ; preds = %26, %18
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = call i32 @wpa_hexdump(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %67, i64 %71)
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @os_free(i32* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %65, %42, %31
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @os_realloc_array(i32*, i64, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
