; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_print_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_print_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"band%u_frequency=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"band%u_iface=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"band%u_mb_ies=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"band%u_fst_group_id=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"band%u_fst_priority=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"band%u_fst_llt=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fst_iface*, i32*, i8*, i64)* @print_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_band(i32 %0, %struct.fst_iface* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fst_iface*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fst_iface* %1, %struct.fst_iface** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %16 = call i32 @fst_iface_get_channel_info(%struct.fst_iface* %15, i32* %12, i32* %13)
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %14, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %21, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @fst_hw_mode_to_band(i32 %26)
  %28 = call i32 @band_freq(i32 %27)
  %29 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %20, i64 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %44 = call i32 @fst_iface_get_name(%struct.fst_iface* %43)
  %45 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %37, i64 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call %struct.wpabuf* @fst_iface_get_peer_mb_ie(%struct.fst_iface* %50, i32* %51)
  store %struct.wpabuf* %52, %struct.wpabuf** %11, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %54 = icmp ne %struct.wpabuf* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %5
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %59, i64 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %74, %76
  %78 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %79 = call i32 @wpabuf_head(%struct.wpabuf* %78)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %81 = call i32 @wpabuf_len(%struct.wpabuf* %80)
  %82 = call i64 @wpa_snprintf_hex(i8* %73, i64 %77, i32 %79, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %91, %93
  %95 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %90, i64 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %55, %5
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 %105, %107
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %111 = call i32 @fst_iface_get_group_id(%struct.fst_iface* %110)
  %112 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %104, i64 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i64, i64* %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %121, %123
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %127 = call i32 @fst_iface_get_priority(%struct.fst_iface* %126)
  %128 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %120, i64 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 %137, %139
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.fst_iface*, %struct.fst_iface** %7, align 8
  %143 = call i32 @fst_iface_get_llt(%struct.fst_iface* %142)
  %144 = call i64 (i8*, i64, i8*, ...) @os_snprintf(i8* %136, i64 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %143)
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  ret i32 %149
}

declare dso_local i32 @fst_iface_get_channel_info(%struct.fst_iface*, i32*, i32*) #1

declare dso_local i64 @os_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @band_freq(i32) #1

declare dso_local i32 @fst_hw_mode_to_band(i32) #1

declare dso_local i32 @fst_iface_get_name(%struct.fst_iface*) #1

declare dso_local %struct.wpabuf* @fst_iface_get_peer_mb_ie(%struct.fst_iface*, i32*) #1

declare dso_local i64 @wpa_snprintf_hex(i8*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @fst_iface_get_group_id(%struct.fst_iface*) #1

declare dso_local i32 @fst_iface_get_priority(%struct.fst_iface*) #1

declare dso_local i32 @fst_iface_get_llt(%struct.fst_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
