; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_recursive_flush_changed_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_recursive_flush_changed_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPAS_DBUS_OBJECT_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @recursive_flush_changed_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recursive_flush_changed_properties(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8** null, i8*** %5, align 8
  %9 = load i32, i32* @WPAS_DBUS_OBJECT_PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @wpa_dbus_flush_object_changed_properties(i32* %13, i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dbus_connection_list_registered(i32* %16, i8* %17, i8*** %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %43

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* @WPAS_DBUS_OBJECT_PATH_MAX, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @os_snprintf(i8* %12, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %36)
  %38 = load i32*, i32** %3, align 8
  call void @recursive_flush_changed_properties(i32* %38, i8* %12)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @dbus_free_string_array(i8** %44)
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbus_flush_object_changed_properties(i32*, i8*) #2

declare dso_local i32 @dbus_connection_list_registered(i32*, i8*, i8***) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @dbus_free_string_array(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
