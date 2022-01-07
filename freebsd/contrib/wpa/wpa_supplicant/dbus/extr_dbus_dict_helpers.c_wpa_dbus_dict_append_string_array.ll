; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_dict_helpers.c_wpa_dbus_dict_append_string_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_dict_helpers.c_wpa_dbus_dict_append_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_dbus_dict_append_string_array(i32* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @wpa_dbus_dict_begin_string_array(i32* %23, i8* %24, i32* %10, i32* %11, i32* %12)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %19, %4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i8**, i8*** %8, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %12, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %13, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %13, align 8
  br label %30

47:                                               ; preds = %30
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @wpa_dbus_dict_end_string_array(i32* %48, i32* %10, i32* %11, i32* %12)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %41, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @wpa_dbus_dict_begin_string_array(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_string_array_add_element(i32*, i8*) #1

declare dso_local i32 @wpa_dbus_dict_end_string_array(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
