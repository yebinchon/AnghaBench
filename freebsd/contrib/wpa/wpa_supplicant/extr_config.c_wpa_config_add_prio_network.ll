; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_add_prio_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_add_prio_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { i32, %struct.wpa_ssid** }
%struct.wpa_ssid = type { i64, %struct.wpa_ssid* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_add_prio_network(%struct.wpa_config* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_config*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.wpa_ssid**, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %16, i32 0, i32 1
  %18 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %18, i64 %20
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %21, align 8
  store %struct.wpa_ssid* %22, %struct.wpa_ssid** %7, align 8
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 1
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %33, align 8
  %35 = icmp ne %struct.wpa_ssid* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 1
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %38, align 8
  store %struct.wpa_ssid* %39, %struct.wpa_ssid** %7, align 8
  br label %31

40:                                               ; preds = %31
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 1
  store %struct.wpa_ssid* %41, %struct.wpa_ssid** %43, align 8
  store i32 0, i32* %3, align 4
  br label %115

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %49, i32 0, i32 1
  %51 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %50, align 8
  %52 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = call %struct.wpa_ssid** @os_realloc_array(%struct.wpa_ssid** %51, i32 %55, i32 8)
  store %struct.wpa_ssid** %56, %struct.wpa_ssid*** %8, align 8
  %57 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %58 = icmp eq %struct.wpa_ssid** %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %115

60:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %99, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %68, i64 %70
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %71, align 8
  %73 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %67
  %80 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %80, i64 %83
  %85 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %85, i64 %87
  %89 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %90 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @os_memmove(%struct.wpa_ssid** %84, %struct.wpa_ssid** %88, i32 %96)
  br label %102

98:                                               ; preds = %67
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %61

102:                                              ; preds = %79, %61
  %103 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %104 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %104, i64 %106
  store %struct.wpa_ssid* %103, %struct.wpa_ssid** %107, align 8
  %108 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %8, align 8
  %113 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %114 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %113, i32 0, i32 1
  store %struct.wpa_ssid** %112, %struct.wpa_ssid*** %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %102, %59, %40
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.wpa_ssid** @os_realloc_array(%struct.wpa_ssid**, i32, i32) #1

declare dso_local i32 @os_memmove(%struct.wpa_ssid**, %struct.wpa_ssid**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
