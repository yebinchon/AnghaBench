; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_dbus_argument = type { i64, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"<%s name=\22%s\22/>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<%s name=\22%s\22>\00", align 1
@ARG_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i8*, i8*, %struct.wpa_dbus_argument*, i32)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_entry(%struct.wpabuf* %0, i8* %1, i8* %2, %struct.wpa_dbus_argument* %3, i32 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_dbus_argument*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpa_dbus_argument*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.wpa_dbus_argument* %3, %struct.wpa_dbus_argument** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %9, align 8
  %13 = icmp eq %struct.wpa_dbus_argument* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %9, align 8
  %16 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %5
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  br label %69

24:                                               ; preds = %14
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %9, align 8
  store %struct.wpa_dbus_argument* %29, %struct.wpa_dbus_argument** %11, align 8
  br label %30

30:                                               ; preds = %62, %24
  %31 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %32 = icmp ne %struct.wpa_dbus_argument* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %35 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %40, label %65

40:                                               ; preds = %38
  %41 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %42 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %43 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %46 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %52 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ARG_IN, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %59

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi i8* [ %57, %50 ], [ null, %58 ]
  %61 = call i32 @add_arg(%struct.wpabuf* %41, i32* %44, i32 %47, i8* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %11, align 8
  %64 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %63, i32 1
  store %struct.wpa_dbus_argument* %64, %struct.wpa_dbus_argument** %11, align 8
  br label %30

65:                                               ; preds = %38
  %66 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %19
  ret void
}

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, ...) #1

declare dso_local i32 @add_arg(%struct.wpabuf*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
