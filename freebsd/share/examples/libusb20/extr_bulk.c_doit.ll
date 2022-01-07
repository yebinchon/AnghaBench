; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_bulk.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_bulk.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_transfer = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"libusb20_dev_open: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"libusb20_dev_set_config_index: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"libusb20_tr_get_pointer: %s\0A\00", align 1
@out_ep = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"libusb20_tr_open: %s\0A\00", align 1
@in_ep = common dso_local global i32 0, align 4
@BUFLEN = common dso_local global i32 0, align 4
@out_len = common dso_local global i64 0, align 8
@out_buf = common dso_local global i32* null, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"libusb20_tr_bulk_intr_sync (OUT): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sent %d bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"libusb20_tr_bulk_intr_sync: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"received %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_device*)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doit(%struct.libusb20_device* %0) #0 {
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_transfer*, align 8
  %5 = alloca %struct.libusb20_transfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %2, align 8
  %9 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %10 = call i32 @libusb20_dev_open(%struct.libusb20_device* %9, i32 2)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @libusb20_strerror(i32 %14)
  %16 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %19 = call i32 @libusb20_dev_set_config_index(%struct.libusb20_device* %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @libusb20_strerror(i32 %23)
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %111

26:                                               ; preds = %17
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %28 = call %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device* %27, i32 0)
  store %struct.libusb20_transfer* %28, %struct.libusb20_transfer** %4, align 8
  %29 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %30 = call %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device* %29, i32 1)
  store %struct.libusb20_transfer* %30, %struct.libusb20_transfer** %5, align 8
  %31 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %32 = icmp eq %struct.libusb20_transfer* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %35 = icmp eq %struct.libusb20_transfer* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @libusb20_strerror(i32 %38)
  %40 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %111

41:                                               ; preds = %33
  %42 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %43 = load i32, i32* @out_ep, align 4
  %44 = call i32 @libusb20_tr_open(%struct.libusb20_transfer* %42, i32 0, i32 1, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i8* @libusb20_strerror(i32 %48)
  %50 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %111

51:                                               ; preds = %41
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %53 = load i32, i32* @in_ep, align 4
  %54 = call i32 @libusb20_tr_open(%struct.libusb20_transfer* %52, i32 0, i32 1, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i8* @libusb20_strerror(i32 %58)
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %111

61:                                               ; preds = %51
  %62 = load i32, i32* @BUFLEN, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %6, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %7, align 8
  %66 = load i64, i64* @out_len, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %70 = load i32*, i32** @out_buf, align 8
  %71 = load i64, i64* @out_len, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @TIMEOUT, align 4
  %74 = call i32 @libusb20_tr_bulk_intr_sync(%struct.libusb20_transfer* %69, i32* %70, i32 %72, i32* %8, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i8* @libusb20_strerror(i32 %78)
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %61
  %85 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %86 = load i32, i32* @BUFLEN, align 4
  %87 = load i32, i32* @TIMEOUT, align 4
  %88 = call i32 @libusb20_tr_bulk_intr_sync(%struct.libusb20_transfer* %85, i32* %65, i32 %86, i32* %8, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i8* @libusb20_strerror(i32 %92)
  %94 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @print_formatted(i32* %65, i32 %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %105 = call i32 @libusb20_tr_close(%struct.libusb20_transfer* %104)
  %106 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %107 = call i32 @libusb20_tr_close(%struct.libusb20_transfer* %106)
  %108 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %109 = call i32 @libusb20_dev_close(%struct.libusb20_device* %108)
  %110 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %103, %56, %46, %36, %21, %12
  ret void
}

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @libusb20_strerror(i32) #1

declare dso_local i32 @libusb20_dev_set_config_index(%struct.libusb20_device*, i32) #1

declare dso_local %struct.libusb20_transfer* @libusb20_tr_get_pointer(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_tr_open(%struct.libusb20_transfer*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @libusb20_tr_bulk_intr_sync(%struct.libusb20_transfer*, i32*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @print_formatted(i32*, i32) #1

declare dso_local i32 @libusb20_tr_close(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_dev_close(%struct.libusb20_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
