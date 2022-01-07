; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_flush_blobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_flush_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_config_blob* }
%struct.wpa_config_blob = type { %struct.wpa_config_blob* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_flush_blobs(%struct.wpa_config* %0) #0 {
  %2 = alloca %struct.wpa_config*, align 8
  %3 = alloca %struct.wpa_config_blob*, align 8
  %4 = alloca %struct.wpa_config_blob*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %2, align 8
  %5 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %5, i32 0, i32 0
  %7 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  store %struct.wpa_config_blob* %7, %struct.wpa_config_blob** %3, align 8
  %8 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %8, i32 0, i32 0
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %9, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %3, align 8
  %12 = icmp ne %struct.wpa_config_blob* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %3, align 8
  store %struct.wpa_config_blob* %14, %struct.wpa_config_blob** %4, align 8
  %15 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %15, i32 0, i32 0
  %17 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %16, align 8
  store %struct.wpa_config_blob* %17, %struct.wpa_config_blob** %3, align 8
  %18 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %4, align 8
  %19 = call i32 @wpa_config_free_blob(%struct.wpa_config_blob* %18)
  br label %10

20:                                               ; preds = %10
  ret void
}

declare dso_local i32 @wpa_config_free_blob(%struct.wpa_config_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
