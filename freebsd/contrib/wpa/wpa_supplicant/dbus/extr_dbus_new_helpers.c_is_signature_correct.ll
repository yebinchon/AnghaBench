; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_is_signature_correct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_is_signature_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_method_desc = type { %struct.wpa_dbus_argument* }
%struct.wpa_dbus_argument = type { i64, i32, i64 }

@ARG_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MAX_SIG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.wpa_dbus_method_desc*)* @is_signature_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_signature_correct(i32* %0, %struct.wpa_dbus_method_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_dbus_method_desc*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_dbus_argument*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_dbus_method_desc* %1, %struct.wpa_dbus_method_desc** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @dbus_message_get_signature(i32* %12)
  store i8* %13, i8** %8, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %16, i32 0, i32 0
  %18 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %17, align 8
  store %struct.wpa_dbus_argument* %18, %struct.wpa_dbus_argument** %10, align 8
  br label %19

19:                                               ; preds = %59, %2
  %20 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %10, align 8
  %21 = icmp ne %struct.wpa_dbus_argument* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %10, align 8
  %24 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %62

29:                                               ; preds = %27
  %30 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %10, align 8
  %31 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARG_IN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 256
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %10, align 8
  %45 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @os_snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @os_snprintf_error(i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %69

53:                                               ; preds = %35
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %53, %29
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.wpa_dbus_argument*, %struct.wpa_dbus_argument** %10, align 8
  %61 = getelementptr inbounds %struct.wpa_dbus_argument, %struct.wpa_dbus_argument* %60, i32 1
  store %struct.wpa_dbus_argument* %61, %struct.wpa_dbus_argument** %10, align 8
  br label %19

62:                                               ; preds = %27
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @os_strncmp(i8* %63, i8* %64, i32 256)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %52
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @dbus_message_get_signature(i32*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

declare dso_local i32 @os_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
