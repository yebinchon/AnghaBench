; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oper_class_map = type { i32, i32, i32, i64, i32 }
%struct.hostapd_hw_modes = type { i32 }

@BW80 = common dso_local global i64 0, align 8
@BW80P80 = common dso_local global i64 0, align 8
@BW160 = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Beacon Report: Failed to allocate freqs array\00", align 1
@NOT_ALLOWED = common dso_local global i32 0, align 4
@NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32, i32*, i32)* @wpas_add_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpas_add_channels(%struct.oper_class_map* %0, %struct.hostapd_hw_modes* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.oper_class_map*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.oper_class_map* %0, %struct.oper_class_map** %7, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  br label %36

23:                                               ; preds = %5
  %24 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %25 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %28 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %32 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  %35 = add nsw i32 %34, 1
  br label %36

36:                                               ; preds = %23, %21
  %37 = phi i32 [ %22, %21 ], [ %35, %23 ]
  store i32 %37, i32* %16, align 4
  %38 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %39 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BW80, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %45 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BW80P80, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %36
  store i32 4, i32* %14, align 4
  br label %59

50:                                               ; preds = %43
  %51 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %52 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BW160, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 8, i32* %14, align 4
  br label %58

57:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = call i32* @os_calloc(i32 %63, i32 4)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @MSG_ERROR, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %144

70:                                               ; preds = %59
  %71 = load i32*, i32** %12, align 8
  store i32* %71, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %131, %70
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %134

76:                                               ; preds = %72
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  br label %95

85:                                               ; preds = %76
  %86 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %87 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %91 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %88, %93
  br label %95

95:                                               ; preds = %85, %79
  %96 = phi i32 [ %84, %79 ], [ %94, %85 ]
  store i32 %96, i32* %17, align 4
  %97 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %100 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @verify_channel(%struct.hostapd_hw_modes* %97, i32 %98, i64 %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @NOT_ALLOWED, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @NO_IR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %95
  br label %131

114:                                              ; preds = %110, %106
  %115 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %116 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = call i64 @wpas_add_channel(i32 %117, i32 %118, i32 %119, i32* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @os_free(i32* %124)
  store i32* null, i32** %6, align 8
  br label %144

126:                                              ; preds = %114
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %13, align 8
  br label %131

131:                                              ; preds = %126, %113
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %72

134:                                              ; preds = %72
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @os_free(i32* %140)
  store i32* null, i32** %6, align 8
  br label %144

142:                                              ; preds = %134
  %143 = load i32*, i32** %12, align 8
  store i32* %143, i32** %6, align 8
  br label %144

144:                                              ; preds = %142, %139, %123, %67
  %145 = load i32*, i32** %6, align 8
  ret i32* %145
}

declare dso_local i32* @os_calloc(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @verify_channel(%struct.hostapd_hw_modes*, i32, i64) #1

declare dso_local i64 @wpas_add_channel(i32, i32, i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
