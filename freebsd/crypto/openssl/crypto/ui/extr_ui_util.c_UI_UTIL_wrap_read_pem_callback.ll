; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_wrap_read_pem_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_wrap_read_pem_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_password_cb_data = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"PEM password callback wrapper\00", align 1
@ui_open = common dso_local global i32 0, align 4
@ui_read = common dso_local global i32 0, align 4
@ui_write = common dso_local global i32 0, align 4
@ui_close = common dso_local global i32 0, align 4
@get_index_once = common dso_local global i32 0, align 4
@ui_method_data_index_init = common dso_local global i32 0, align 4
@ui_method_data_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @UI_UTIL_wrap_read_pem_callback(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pem_password_cb_data*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pem_password_cb_data* null, %struct.pem_password_cb_data** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = call %struct.pem_password_cb_data* @OPENSSL_zalloc(i32 16)
  store %struct.pem_password_cb_data* %8, %struct.pem_password_cb_data** %6, align 8
  %9 = icmp eq %struct.pem_password_cb_data* %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = call i32* @UI_create_method(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @ui_open, align 4
  %16 = call i64 @UI_method_set_opener(i32* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @ui_read, align 4
  %21 = call i64 @UI_method_set_reader(i32* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @ui_write, align 4
  %26 = call i64 @UI_method_set_writer(i32* %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @ui_close, align 4
  %31 = call i64 @UI_method_set_closer(i32* %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ui_method_data_index_init, align 4
  %35 = call i32 @RUN_ONCE(i32* @get_index_once, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @ui_method_data_index, align 4
  %40 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %6, align 8
  %41 = call i64 @UI_method_set_ex_data(i32* %38, i32 %39, %struct.pem_password_cb_data* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37, %33, %28, %23, %18, %13, %10, %2
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @UI_destroy_method(i32* %44)
  %46 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %6, align 8
  %47 = call i32 @OPENSSL_free(%struct.pem_password_cb_data* %46)
  store i32* null, i32** %3, align 8
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %6, align 8
  %51 = getelementptr inbounds %struct.pem_password_cb_data, %struct.pem_password_cb_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %6, align 8
  %54 = getelementptr inbounds %struct.pem_password_cb_data, %struct.pem_password_cb_data* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %7, align 8
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local %struct.pem_password_cb_data* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @UI_create_method(i8*) #1

declare dso_local i64 @UI_method_set_opener(i32*, i32) #1

declare dso_local i64 @UI_method_set_reader(i32*, i32) #1

declare dso_local i64 @UI_method_set_writer(i32*, i32) #1

declare dso_local i64 @UI_method_set_closer(i32*, i32) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i64 @UI_method_set_ex_data(i32*, i32, %struct.pem_password_cb_data*) #1

declare dso_local i32 @UI_destroy_method(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.pem_password_cb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
