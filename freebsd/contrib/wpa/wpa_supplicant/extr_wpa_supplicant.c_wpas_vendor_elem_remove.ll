; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_vendor_elem_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_vendor_elem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_vendor_elem_remove(%struct.wpa_supplicant* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i64* @wpabuf_mhead_u8(%struct.TYPE_4__* %18)
  store i64* %19, i64** %10, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i64 @wpabuf_len(%struct.TYPE_4__* %27)
  %29 = getelementptr inbounds i64, i64* %20, i64 %28
  store i64* %29, i64** %11, align 8
  br label %30

30:                                               ; preds = %104, %4
  %31 = load i64*, i64** %10, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64*, i64** %11, align 8
  %34 = icmp ult i64* %32, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %30
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ugt i64* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %111

42:                                               ; preds = %35
  %43 = load i64*, i64** %10, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @os_memcmp(i64* %43, i64* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %104

49:                                               ; preds = %42
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i64 @wpabuf_len(%struct.TYPE_4__* %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %62 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @wpabuf_free(%struct.TYPE_4__* %67)
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %73
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %74, align 8
  br label %101

75:                                               ; preds = %49
  %76 = load i64*, i64** %10, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64*, i64** %11, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = ptrtoint i64* %80 to i64
  %85 = ptrtoint i64* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @os_memmove(i64* %76, i64* %79, i32 %88)
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, %90
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %75, %60
  %102 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %103 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %102)
  store i32 0, i32* %5, align 4
  br label %112

104:                                              ; preds = %48
  %105 = load i64*, i64** %10, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 2, %107
  %109 = load i64*, i64** %10, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 %108
  store i64* %110, i64** %10, align 8
  br label %30

111:                                              ; preds = %41, %30
  store i32 -1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64* @wpabuf_mhead_u8(%struct.TYPE_4__*) #1

declare dso_local i64 @wpabuf_len(%struct.TYPE_4__*) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.TYPE_4__*) #1

declare dso_local i32 @os_memmove(i64*, i64*, i32) #1

declare dso_local i32 @wpas_vendor_elem_update(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
