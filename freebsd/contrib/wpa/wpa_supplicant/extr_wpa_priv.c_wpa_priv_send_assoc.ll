; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i32, %union.wpa_event_data*)* @wpa_priv_send_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_send_assoc(%struct.wpa_priv_interface* %0, i32 %1, %union.wpa_event_data* %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.wpa_event_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.wpa_event_data* %2, %union.wpa_event_data** %6, align 8
  store i64 12, i64* %7, align 8
  %11 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %12 = icmp ne %union.wpa_event_data* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %15 = bitcast %union.wpa_event_data* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %19 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %17, %21
  %23 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %24 = bitcast %union.wpa_event_data* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %13, %3
  %32 = load i64, i64* %7, align 8
  %33 = call i32* @os_malloc(i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %148

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %9, align 8
  %39 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %40 = icmp ne %union.wpa_event_data* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %43 = bitcast %union.wpa_event_data* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %49 = bitcast %union.wpa_event_data* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @os_memcpy(i32* %52, i32* %10, i32 4)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %58 = bitcast %union.wpa_event_data* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @os_memcpy(i32* %56, i32* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %9, align 8
  br label %72

67:                                               ; preds = %41, %37
  store i32 0, i32* %10, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @os_memcpy(i32* %68, i32* %10, i32 4)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %9, align 8
  br label %72

72:                                               ; preds = %67, %47
  %73 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %74 = icmp ne %union.wpa_event_data* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %77 = bitcast %union.wpa_event_data* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %83 = bitcast %union.wpa_event_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @os_memcpy(i32* %86, i32* %10, i32 4)
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %92 = bitcast %union.wpa_event_data* %91 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @os_memcpy(i32* %90, i32* %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  br label %106

101:                                              ; preds = %75, %72
  store i32 0, i32* %10, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @os_memcpy(i32* %102, i32* %10, i32 4)
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  store i32* %105, i32** %9, align 8
  br label %106

106:                                              ; preds = %101, %81
  %107 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %108 = icmp ne %union.wpa_event_data* %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %111 = bitcast %union.wpa_event_data* %110 to %struct.TYPE_2__*
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %117 = bitcast %union.wpa_event_data* %116 to %struct.TYPE_2__*
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @os_memcpy(i32* %120, i32* %10, i32 4)
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  store i32* %123, i32** %9, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %126 = bitcast %union.wpa_event_data* %125 to %struct.TYPE_2__*
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @os_memcpy(i32* %124, i32* %128, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %9, align 8
  br label %140

135:                                              ; preds = %109, %106
  store i32 0, i32* %10, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @os_memcpy(i32* %136, i32* %10, i32 4)
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  store i32* %139, i32** %9, align 8
  br label %140

140:                                              ; preds = %135, %115
  %141 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @wpa_priv_send_event(%struct.wpa_priv_interface* %141, i32 %142, i32* %143, i64 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @os_free(i32* %146)
  br label %148

148:                                              ; preds = %140, %36
  ret void
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_priv_send_event(%struct.wpa_priv_interface*, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
