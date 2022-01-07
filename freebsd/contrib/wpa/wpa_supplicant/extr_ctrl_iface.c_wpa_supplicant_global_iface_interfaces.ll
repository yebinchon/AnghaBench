; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { %struct.wpa_supplicant*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s ctrl_iface=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*, i8*, i8*, i32)* @wpa_supplicant_global_iface_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_global_iface_interfaces(%struct.wpa_global* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpa_supplicant*, align 8
  %13 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @os_strstr(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %16, %4
  %24 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %24, i32 0, i32 0
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %25, align 8
  store %struct.wpa_supplicant* %26, %struct.wpa_supplicant** %12, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %89, %23
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %34 = icmp ne %struct.wpa_supplicant* %33, null
  br i1 %34, label %35, label %97

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i8* [ %60, %55 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %61 ]
  %64 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %39, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %63)
  store i32 %64, i32* %9, align 4
  br label %77

65:                                               ; preds = %35
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %66, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %65, %62
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @os_snprintf_error(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i8*, i8** %10, align 8
  store i8 0, i8* %88, align 1
  br label %97

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %10, align 8
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 0
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %95, align 8
  store %struct.wpa_supplicant* %96, %struct.wpa_supplicant** %12, align 8
  br label %32

97:                                               ; preds = %87, %32
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  ret i32 %103
}

declare dso_local i32 @os_strstr(i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
