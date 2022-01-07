; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_std_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_std_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32, i32)* @usb_std_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_std_io(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.libusb20_transfer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.libusb20_transfer* @usb_get_transfer_by_ep_no(i32* %19, i32 %20)
  store %struct.libusb20_transfer* %21, %struct.libusb20_transfer** %14, align 8
  %22 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %23 = icmp eq %struct.libusb20_transfer* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %109

25:                                               ; preds = %6
  %26 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %27 = call i64 @libusb20_tr_pending(%struct.libusb20_transfer* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %109

30:                                               ; preds = %25
  %31 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %32 = call i32 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %18, align 8
  br label %34

34:                                               ; preds = %99, %30
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @libusb20_tr_setup_intr(%struct.libusb20_transfer* %45, i8* %46, i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer* %51, i8* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %58 = call i32 @libusb20_tr_start(%struct.libusb20_transfer* %57)
  br label %59

59:                                               ; preds = %56, %70
  %60 = load i32*, i32** %8, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = call i64 @libusb20_dev_process(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %109

65:                                               ; preds = %59
  %66 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %67 = call i64 @libusb20_tr_pending(%struct.libusb20_transfer* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %74

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = call i32 @libusb20_dev_wait_process(i8* %72, i32 -1)
  br label %59

74:                                               ; preds = %69
  %75 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %76 = call i32 @libusb20_tr_get_status(%struct.libusb20_transfer* %75)
  switch i32 %76, label %81 [
    i32 0, label %77
    i32 128, label %78
  ]

77:                                               ; preds = %74
  br label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %109

81:                                               ; preds = %74
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %109

84:                                               ; preds = %77
  %85 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %14, align 8
  %86 = call i32 @libusb20_tr_get_actual_length(%struct.libusb20_transfer* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %10, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %102

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %34, label %102

102:                                              ; preds = %99, %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %102, %81, %78, %64, %29, %24
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.libusb20_transfer* @usb_get_transfer_by_ep_no(i32*, i32) #1

declare dso_local i64 @libusb20_tr_pending(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_setup_intr(%struct.libusb20_transfer*, i8*, i32, i32) #1

declare dso_local i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer*, i8*, i32, i32) #1

declare dso_local i32 @libusb20_tr_start(%struct.libusb20_transfer*) #1

declare dso_local i64 @libusb20_dev_process(i8*) #1

declare dso_local i32 @libusb20_dev_wait_process(i8*, i32) #1

declare dso_local i32 @libusb20_tr_get_status(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_actual_length(%struct.libusb20_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
