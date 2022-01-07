; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ops = type { %struct.wpa_interface_info* (i32)* }
%struct.wpa_interface_info = type { i8*, i32, i32, %struct.wpa_interface_info* }
%struct.wpa_global = type { i32* }

@wpa_drivers = common dso_local global %struct.wpa_driver_ops** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s\09%s\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*, i8*, i32)* @wpa_supplicant_global_iface_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_global_iface_list(%struct.wpa_global* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_interface_info*, align 8
  %10 = alloca %struct.wpa_interface_info*, align 8
  %11 = alloca %struct.wpa_interface_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpa_driver_ops*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.wpa_interface_info* null, %struct.wpa_interface_info** %9, align 8
  store %struct.wpa_interface_info* null, %struct.wpa_interface_info** %10, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %68, %3
  %16 = load %struct.wpa_driver_ops**, %struct.wpa_driver_ops*** @wpa_drivers, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %16, i64 %18
  %20 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %19, align 8
  %21 = icmp ne %struct.wpa_driver_ops* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %15
  %23 = load %struct.wpa_driver_ops**, %struct.wpa_driver_ops*** @wpa_drivers, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %23, i64 %25
  %27 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %26, align 8
  store %struct.wpa_driver_ops* %27, %struct.wpa_driver_ops** %14, align 8
  %28 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %14, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_ops, %struct.wpa_driver_ops* %28, i32 0, i32 0
  %30 = load %struct.wpa_interface_info* (i32)*, %struct.wpa_interface_info* (i32)** %29, align 8
  %31 = icmp eq %struct.wpa_interface_info* (i32)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %68

33:                                               ; preds = %22
  %34 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %14, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_ops, %struct.wpa_driver_ops* %34, i32 0, i32 0
  %36 = load %struct.wpa_interface_info* (i32)*, %struct.wpa_interface_info* (i32)** %35, align 8
  %37 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.wpa_interface_info* %36(i32 %43)
  store %struct.wpa_interface_info* %44, %struct.wpa_interface_info** %11, align 8
  %45 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %46 = icmp eq %struct.wpa_interface_info* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %68

48:                                               ; preds = %33
  %49 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %10, align 8
  %50 = icmp eq %struct.wpa_interface_info* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  store %struct.wpa_interface_info* %52, %struct.wpa_interface_info** %10, align 8
  store %struct.wpa_interface_info* %52, %struct.wpa_interface_info** %9, align 8
  br label %57

53:                                               ; preds = %48
  %54 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %55 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %10, align 8
  %56 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %55, i32 0, i32 3
  store %struct.wpa_interface_info* %54, %struct.wpa_interface_info** %56, align 8
  br label %57

57:                                               ; preds = %53, %51
  br label %58

58:                                               ; preds = %63, %57
  %59 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %10, align 8
  %60 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %59, i32 0, i32 3
  %61 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %60, align 8
  %62 = icmp ne %struct.wpa_interface_info* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %10, align 8
  %65 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %64, i32 0, i32 3
  %66 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %65, align 8
  store %struct.wpa_interface_info* %66, %struct.wpa_interface_info** %10, align 8
  br label %58

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %47, %32
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** %13, align 8
  %77 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %9, align 8
  store %struct.wpa_interface_info* %77, %struct.wpa_interface_info** %11, align 8
  br label %78

78:                                               ; preds = %123, %71
  %79 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %80 = icmp ne %struct.wpa_interface_info* %79, null
  br i1 %80, label %81, label %127

81:                                               ; preds = %78
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %90 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %93 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %96 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %81
  %100 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %101 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %103 ]
  %106 = call i32 @os_snprintf(i8* %82, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i8* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @os_snprintf_error(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i8*, i8** %12, align 8
  store i8 0, i8* %117, align 1
  br label %127

118:                                              ; preds = %104
  %119 = load i32, i32* %8, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %11, align 8
  %125 = getelementptr inbounds %struct.wpa_interface_info, %struct.wpa_interface_info* %124, i32 0, i32 3
  %126 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %125, align 8
  store %struct.wpa_interface_info* %126, %struct.wpa_interface_info** %11, align 8
  br label %78

127:                                              ; preds = %116, %78
  %128 = load %struct.wpa_interface_info*, %struct.wpa_interface_info** %9, align 8
  %129 = call i32 @wpa_free_iface_info(%struct.wpa_interface_info* %128)
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_free_iface_info(%struct.wpa_interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
