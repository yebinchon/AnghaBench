; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb10_do_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb10_do_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4
@libusb10_do_transfer_cb = common dso_local global i32 0, align 4
@LIBUSB_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OVERFLOW = common dso_local global i32 0, align 4
@LIBUSB_ERROR_PIPE = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_DEVICE = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, i32, i32)* @libusb10_do_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libusb10_do_transfer(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.libusb_transfer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %23, i32* %8, align 4
  br label %110

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %31, i32* %8, align 4
  br label %110

32:                                               ; preds = %27, %24
  %33 = call %struct.libusb_transfer* @libusb_alloc_transfer(i32 0)
  store %struct.libusb_transfer* %33, %struct.libusb_transfer** %17, align 8
  %34 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %35 = icmp eq %struct.libusb_transfer* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %37, i32* %8, align 4
  br label %110

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = call %struct.TYPE_2__* @libusb_get_device(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %45 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %44, i32 0, i32 9
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %48 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %51 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %54 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %57 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %56, i32 0, i32 7
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %60 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = bitcast i32* %18 to i8*
  %62 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %63 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @libusb10_do_transfer_cb, align 4
  %65 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %66 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %18, align 4
  %67 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %68 = call i32 @libusb_submit_transfer(%struct.libusb_transfer* %67)
  store i32 %68, i32* %19, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %38
  %71 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %72 = call i32 @libusb_free_transfer(%struct.libusb_transfer* %71)
  %73 = load i32, i32* %19, align 4
  store i32 %73, i32* %8, align 4
  br label %110

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %86, %74
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @libusb_handle_events(i32* %79)
  store i32 %80, i32* %19, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %84 = call i32 @libusb_cancel_transfer(%struct.libusb_transfer* %83)
  %85 = call i32 @usleep(i32 1000)
  br label %86

86:                                               ; preds = %82, %78
  br label %75

87:                                               ; preds = %75
  %88 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %89 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %93 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %104 [
    i32 132, label %95
    i32 128, label %96
    i32 130, label %98
    i32 129, label %100
    i32 131, label %102
  ]

95:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  br label %106

96:                                               ; preds = %87
  %97 = load i32, i32* @LIBUSB_ERROR_TIMEOUT, align 4
  store i32 %97, i32* %19, align 4
  br label %106

98:                                               ; preds = %87
  %99 = load i32, i32* @LIBUSB_ERROR_OVERFLOW, align 4
  store i32 %99, i32* %19, align 4
  br label %106

100:                                              ; preds = %87
  %101 = load i32, i32* @LIBUSB_ERROR_PIPE, align 4
  store i32 %101, i32* %19, align 4
  br label %106

102:                                              ; preds = %87
  %103 = load i32, i32* @LIBUSB_ERROR_NO_DEVICE, align 4
  store i32 %103, i32* %19, align 4
  br label %106

104:                                              ; preds = %87
  %105 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %98, %96, %95
  %107 = load %struct.libusb_transfer*, %struct.libusb_transfer** %17, align 8
  %108 = call i32 @libusb_free_transfer(%struct.libusb_transfer* %107)
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %70, %36, %30, %22
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.libusb_transfer* @libusb_alloc_transfer(i32) #1

declare dso_local %struct.TYPE_2__* @libusb_get_device(i32*) #1

declare dso_local i32 @libusb_submit_transfer(%struct.libusb_transfer*) #1

declare dso_local i32 @libusb_free_transfer(%struct.libusb_transfer*) #1

declare dso_local i32 @libusb_handle_events(i32*) #1

declare dso_local i32 @libusb_cancel_transfer(%struct.libusb_transfer*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
