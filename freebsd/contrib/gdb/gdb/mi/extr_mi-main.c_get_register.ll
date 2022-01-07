; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_get_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_stream = type { i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@get_register.stb = internal global %struct.ui_stream* null, align 8
@uiout = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Optimized out\00", align 1
@current_gdbarch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@Val_pretty_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load i32, i32* @uiout, align 4
  %26 = call %struct.ui_stream* @ui_out_stream_new(i32 %25)
  store %struct.ui_stream* %26, %struct.ui_stream** @get_register.stb, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 78
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @deprecated_selected_frame, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @frame_register(i32 %31, i32 %32, i32* %9, i32* %12, i32* %11, i32* %10, i8* %21)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %113

38:                                               ; preds = %30
  %39 = call i64 (...) @DEPRECATED_REGISTER_CONVERTIBLE_P()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @DEPRECATED_REGISTER_CONVERTIBLE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @current_gdbarch, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @register_type(i32 %47, i32 %48)
  %50 = call i32 @DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL(i32 %46, i32 %49, i8* %21, i8* %24)
  br label %55

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32 %52)
  %54 = call i32 @memcpy(i8* %24, i8* %21, i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 114
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %90, %58
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %70 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  br label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %75)
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  br label %80

80:                                               ; preds = %74, %72
  %81 = phi i32 [ %73, %72 ], [ %79, %74 ]
  store i32 %81, i32* %17, align 4
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %21, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %86)
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %63

93:                                               ; preds = %63
  %94 = load i32, i32* @uiout, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %96 = call i32 @ui_out_field_string(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %112

97:                                               ; preds = %55
  %98 = load i32, i32* @current_gdbarch, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @register_type(i32 %98, i32 %99)
  %101 = load %struct.ui_stream*, %struct.ui_stream** @get_register.stb, align 8
  %102 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @Val_pretty_default, align 4
  %106 = call i32 @val_print(i32 %100, i8* %24, i32 0, i32 0, i32 %103, i32 %104, i32 1, i32 0, i32 %105)
  %107 = load i32, i32* @uiout, align 4
  %108 = load %struct.ui_stream*, %struct.ui_stream** @get_register.stb, align 8
  %109 = call i32 @ui_out_field_stream(i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.ui_stream* %108)
  %110 = load %struct.ui_stream*, %struct.ui_stream** @get_register.stb, align 8
  %111 = call i32 @ui_out_stream_delete(%struct.ui_stream* %110)
  br label %112

112:                                              ; preds = %97, %93
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %36
  %114 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #2

declare dso_local i32 @frame_register(i32, i32, i32*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @xasprintf(i32*, i8*) #2

declare dso_local i64 @DEPRECATED_REGISTER_CONVERTIBLE_P(...) #2

declare dso_local i64 @DEPRECATED_REGISTER_CONVERTIBLE(i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL(i32, i32, i8*, i8*) #2

declare dso_local i32 @register_type(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #2

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #2

declare dso_local i32 @val_print(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #2

declare dso_local i32 @ui_out_stream_delete(%struct.ui_stream*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
