; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i8*, %struct.wpa_supplicant* }

@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_interfaces(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_global*, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.wpa_global*
  store %struct.wpa_global* %17, %struct.wpa_global** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  %19 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %18, i32 0, i32 0
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %19, align 8
  store %struct.wpa_supplicant* %20, %struct.wpa_supplicant** %11, align 8
  br label %21

21:                                               ; preds = %33, %4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %23 = icmp ne %struct.wpa_supplicant* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 1
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %35, align 8
  store %struct.wpa_supplicant* %36, %struct.wpa_supplicant** %11, align 8
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* %14, align 4
  %39 = call i8** @os_calloc(i32 %38, i32 8)
  store i8** %39, i8*** %12, align 8
  %40 = load i8**, i8*** %12, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %45 = call i32 @dbus_set_error_const(i32* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %83

47:                                               ; preds = %37
  %48 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  %49 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %48, i32 0, i32 0
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %49, align 8
  store %struct.wpa_supplicant* %50, %struct.wpa_supplicant** %11, align 8
  br label %51

51:                                               ; preds = %69, %47
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %53 = icmp ne %struct.wpa_supplicant* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8* %62, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %54
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 1
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %71, align 8
  store %struct.wpa_supplicant* %72, %struct.wpa_supplicant** %11, align 8
  br label %51

73:                                               ; preds = %51
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %76 = load i8**, i8*** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @wpas_dbus_simple_array_property_getter(i32* %74, i32 %75, i8** %76, i32 %77, i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i8**, i8*** %12, align 8
  %81 = call i32 @os_free(i8** %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %73, %42
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i8** @os_calloc(i32, i32) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local i32 @wpas_dbus_simple_array_property_getter(i32*, i32, i8**, i32, i32*) #1

declare dso_local i32 @os_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
