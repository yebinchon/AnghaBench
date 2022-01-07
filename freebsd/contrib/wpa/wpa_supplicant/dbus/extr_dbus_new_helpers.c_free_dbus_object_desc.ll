; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_free_dbus_object_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_free_dbus_object_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc*, i32, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dbus_object_desc(%struct.wpa_dbus_object_desc* %0) #0 {
  %2 = alloca %struct.wpa_dbus_object_desc*, align 8
  store %struct.wpa_dbus_object_desc* %0, %struct.wpa_dbus_object_desc** %2, align 8
  %3 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %4 = icmp ne %struct.wpa_dbus_object_desc* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %7, i32 0, i32 3
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %12, i32 0, i32 3
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %14(i32 %17)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %20, i32 0, i32 1
  %22 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %21, align 8
  %23 = call i32 @os_free(%struct.wpa_dbus_object_desc* %22)
  %24 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %25 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %24, i32 0, i32 0
  %26 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %25, align 8
  %27 = call i32 @os_free(%struct.wpa_dbus_object_desc* %26)
  %28 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %2, align 8
  %29 = call i32 @os_free(%struct.wpa_dbus_object_desc* %28)
  br label %30

30:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @os_free(%struct.wpa_dbus_object_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
