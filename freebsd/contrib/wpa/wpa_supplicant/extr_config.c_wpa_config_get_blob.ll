; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config_blob = type { %struct.wpa_config_blob*, i32 }
%struct.wpa_config = type { %struct.wpa_config_blob* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_config_blob* @wpa_config_get_blob(%struct.wpa_config* %0, i8* %1) #0 {
  %3 = alloca %struct.wpa_config_blob*, align 8
  %4 = alloca %struct.wpa_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_config_blob*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %7, i32 0, i32 0
  %9 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  store %struct.wpa_config_blob* %9, %struct.wpa_config_blob** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  %12 = icmp ne %struct.wpa_config_blob* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  %15 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @os_strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  store %struct.wpa_config_blob* %21, %struct.wpa_config_blob** %3, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %23, i32 0, i32 0
  %25 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %24, align 8
  store %struct.wpa_config_blob* %25, %struct.wpa_config_blob** %6, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %3, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %3, align 8
  ret %struct.wpa_config_blob* %28
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
