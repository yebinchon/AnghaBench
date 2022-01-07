; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32* }
%struct.ieee802_11_elems = type { i32 }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i64 0, align 8
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Invalid ID\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid value\00", align 1
@ParseFailed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Parse error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Resize error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_vendor_elem_add(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802_11_elems, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @dbus_message_iter_init(i32* %12, i32* %10)
  %14 = call i32 @dbus_message_iter_get_basic(i32* %10, i64* %9)
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NUM_VENDOR_ELEM_FRAMES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %24 = call i32* @dbus_message_new_error(i32* %22, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  br label %95

25:                                               ; preds = %17
  %26 = call i32 @dbus_message_iter_next(i32* %10)
  %27 = call i32 @dbus_message_iter_recurse(i32* %10, i32* %11)
  %28 = call i32 @dbus_message_iter_get_fixed_array(i32* %11, i32** %6, i32* %7)
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %37 = call i32* @dbus_message_new_error(i32* %35, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %3, align 8
  br label %95

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ieee802_11_parse_elems(i32* %39, i32 %40, %struct.ieee802_11_elems* %8, i32 0)
  %42 = load i64, i64* @ParseFailed, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %47 = call i32* @dbus_message_new_error(i32* %45, i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %47, i32** %3, align 8
  br label %95

48:                                               ; preds = %38
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %49, i64 %50)
  store %struct.wpa_supplicant* %51, %struct.wpa_supplicant** %5, align 8
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %48
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @wpabuf_alloc_copy(i32* %60, i32 %61)
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %69 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %68)
  store i32* null, i32** %3, align 8
  br label %95

70:                                               ; preds = %48
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @wpabuf_resize(i32* %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %82 = call i32* @dbus_message_new_error(i32* %80, i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32* %82, i32** %3, align 8
  br label %95

83:                                               ; preds = %70
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @wpabuf_put_data(i32 %89, i32* %90, i32 %91)
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %94 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %93)
  store i32* null, i32** %3, align 8
  br label %95

95:                                               ; preds = %83, %79, %59, %44, %34, %21
  %96 = load i32*, i32** %3, align 8
  ret i32* %96
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i64*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_next(i32*) #1

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i32**, i32*) #1

declare dso_local i64 @ieee802_11_parse_elems(i32*, i32, %struct.ieee802_11_elems*, i32) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i64) #1

declare dso_local i32 @wpabuf_alloc_copy(i32*, i32) #1

declare dso_local i32 @wpas_vendor_elem_update(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpabuf_resize(i32*, i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
