; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }
%struct.ieee802_11_elems = type { i32 }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i32 0, align 4
@ParseFailed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_vendor_elem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_vendor_elem_add(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NUM_VENDOR_ELEM_FRAMES, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %118

21:                                               ; preds = %16
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %22, i32 %23)
  store %struct.wpa_supplicant* %24, %struct.wpa_supplicant** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @os_strchr(i8* %25, i8 signext 32)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %118

30:                                               ; preds = %21
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @os_strlen(i8* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %118

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = and i64 %39, 1
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %118

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %44, 2
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call %struct.wpabuf* @wpabuf_alloc(i64 %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %9, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %49 = icmp eq %struct.wpabuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %118

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @wpabuf_put(%struct.wpabuf* %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @hexstr2bin(i8* %52, i32 %55, i64 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %61 = call i32 @wpabuf_free(%struct.wpabuf* %60)
  store i32 -1, i32* %3, align 4
  br label %118

62:                                               ; preds = %51
  %63 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %64 = call i32 @wpabuf_head_u8(%struct.wpabuf* %63)
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @ieee802_11_parse_elems(i32 %64, i64 %65, %struct.ieee802_11_elems* %10, i32 0)
  %67 = load i64, i64* @ParseFailed, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %71 = call i32 @wpabuf_free(%struct.wpabuf* %70)
  store i32 -1, i32* %3, align 4
  br label %118

72:                                               ; preds = %62
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 0
  %75 = load %struct.wpabuf**, %struct.wpabuf*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %75, i64 %77
  %79 = load %struct.wpabuf*, %struct.wpabuf** %78, align 8
  %80 = icmp eq %struct.wpabuf* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  %85 = load %struct.wpabuf**, %struct.wpabuf*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %85, i64 %87
  store %struct.wpabuf* %82, %struct.wpabuf** %88, align 8
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %90 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %89)
  store i32 0, i32* %3, align 4
  br label %118

91:                                               ; preds = %72
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 0
  %94 = load %struct.wpabuf**, %struct.wpabuf*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %94, i64 %96
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @wpabuf_resize(%struct.wpabuf** %97, i64 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %103 = call i32 @wpabuf_free(%struct.wpabuf* %102)
  store i32 -1, i32* %3, align 4
  br label %118

104:                                              ; preds = %91
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %106 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %105, i32 0, i32 0
  %107 = load %struct.wpabuf**, %struct.wpabuf*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %107, i64 %109
  %111 = load %struct.wpabuf*, %struct.wpabuf** %110, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %113 = call i32 @wpabuf_put_buf(%struct.wpabuf* %111, %struct.wpabuf* %112)
  %114 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %115 = call i32 @wpabuf_free(%struct.wpabuf* %114)
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %117 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %104, %101, %81, %69, %59, %50, %42, %37, %29, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @ieee802_11_parse_elems(i32, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpas_vendor_elem_update(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
