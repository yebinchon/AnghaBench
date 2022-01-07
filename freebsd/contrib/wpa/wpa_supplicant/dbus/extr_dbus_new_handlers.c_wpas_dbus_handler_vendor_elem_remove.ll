; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32** }
%struct.ieee802_11_elems = type { i32 }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i64 0, align 8
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Invalid ID\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid value\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ID value does not exist\00", align 1
@ParseFailed = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Parse error\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_vendor_elem_remove(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802_11_elems, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @dbus_message_iter_init(i32* %12, i32* %9)
  %14 = call i32 @dbus_message_iter_get_basic(i32* %9, i64* %11)
  %15 = load i64, i64* %11, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @NUM_VENDOR_ELEM_FRAMES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %24 = call i32* @dbus_message_new_error(i32* %22, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  br label %98

25:                                               ; preds = %17
  %26 = call i32 @dbus_message_iter_next(i32* %9)
  %27 = call i32 @dbus_message_iter_recurse(i32* %9, i32* %10)
  %28 = call i32 @dbus_message_iter_get_fixed_array(i32* %10, i8** %6, i32* %7)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
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
  br label %98

38:                                               ; preds = %31
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %39, i64 %40)
  store %struct.wpa_supplicant* %41, %struct.wpa_supplicant** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @wpabuf_free(i32* %55)
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  store i32* null, i32** %61, align 8
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %62)
  store i32* null, i32** %3, align 8
  br label %98

64:                                               ; preds = %44, %38
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %75 = call i32* @dbus_message_new_error(i32* %73, i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* %75, i32** %3, align 8
  br label %98

76:                                               ; preds = %64
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @ieee802_11_parse_elems(i8* %77, i32 %78, %struct.ieee802_11_elems* %8, i32 0)
  %80 = load i64, i64* @ParseFailed, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %85 = call i32* @dbus_message_new_error(i32* %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %85, i32** %3, align 8
  br label %98

86:                                               ; preds = %76
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @wpas_vendor_elem_remove(%struct.wpa_supplicant* %87, i64 %88, i8* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32* null, i32** %3, align 8
  br label %98

94:                                               ; preds = %86
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %97 = call i32* @dbus_message_new_error(i32* %95, i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32* %97, i32** %3, align 8
  br label %98

98:                                               ; preds = %94, %93, %82, %72, %49, %34, %21
  %99 = load i32*, i32** %3, align 8
  ret i32* %99
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i64*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_next(i32*) #1

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i8**, i32*) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i64) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @wpas_vendor_elem_update(%struct.wpa_supplicant*) #1

declare dso_local i64 @ieee802_11_parse_elems(i8*, i32, %struct.ieee802_11_elems*, i32) #1

declare dso_local i64 @wpas_vendor_elem_remove(%struct.wpa_supplicant*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
