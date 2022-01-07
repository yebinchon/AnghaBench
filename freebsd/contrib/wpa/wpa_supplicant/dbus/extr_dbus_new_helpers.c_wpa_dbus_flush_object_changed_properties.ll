; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_flush_object_changed_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_flush_object_changed_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32*, %struct.wpa_dbus_property_desc* }
%struct.wpa_dbus_property_desc = type { i32, i64 }

@flush_object_timeout_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_dbus_flush_object_changed_properties(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_dbus_object_desc*, align 8
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.wpa_dbus_object_desc* null, %struct.wpa_dbus_object_desc** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast %struct.wpa_dbus_object_desc** %5 to i8**
  %11 = call i32 @dbus_connection_get_object_path_data(i32* %8, i8* %9, i8** %10)
  %12 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %13 = icmp ne %struct.wpa_dbus_object_desc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  %16 = load i32, i32* @flush_object_timeout_handler, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %19 = call i32 @eloop_cancel_timeout(i32 %16, i32* %17, %struct.wpa_dbus_object_desc* %18)
  %20 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %20, i32 0, i32 1
  %22 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %21, align 8
  store %struct.wpa_dbus_property_desc* %22, %struct.wpa_dbus_property_desc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %56, %15
  %24 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %25 = icmp ne %struct.wpa_dbus_property_desc* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %61

33:                                               ; preds = %31
  %34 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38, %33
  br label %56

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %52 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %55 = call i32 @send_prop_changed_signal(i32* %49, i8* %50, i32 %53, %struct.wpa_dbus_object_desc* %54)
  br label %56

56:                                               ; preds = %48, %47
  %57 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %57, i32 1
  store %struct.wpa_dbus_property_desc* %58, %struct.wpa_dbus_property_desc** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %23

61:                                               ; preds = %14, %31
  ret void
}

declare dso_local i32 @dbus_connection_get_object_path_data(i32*, i8*, i8**) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @send_prop_changed_signal(i32*, i8*, i32, %struct.wpa_dbus_object_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
