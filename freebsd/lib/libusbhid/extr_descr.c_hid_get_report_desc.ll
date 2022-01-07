; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_descr.c_hid_get_report_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_descr.c_hid_get_report_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gen_descriptor = type { i32, i32, i8* }

@USB_GET_REPORT_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hid_get_report_desc(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gen_descriptor, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i32 @memset(%struct.usb_gen_descriptor* %4, i32 0, i32 16)
  %8 = call i8* @hid_pass_ptr(i8* null)
  %9 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 0
  store i32 65535, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @USB_GET_REPORT_DESC, align 4
  %13 = call i64 @ioctl(i32 %11, i32 %12, %struct.usb_gen_descriptor* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %65

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %65

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @hid_pass_ptr(i8* %24)
  %26 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @USB_GET_REPORT_DESC, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.usb_gen_descriptor* %4)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  store i32* null, i32** %2, align 8
  br label %65

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  store i32* null, i32** %2, align 8
  br label %65

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 192
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @free(i8* %55)
  store i32* null, i32** %2, align 8
  br label %65

57:                                               ; preds = %44
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @hid_use_report_desc(i8* %58, i32 %60)
  store i32* %61, i32** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32*, i32** %5, align 8
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %57, %54, %41, %34, %22, %15
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i32 @memset(%struct.usb_gen_descriptor*, i32, i32) #1

declare dso_local i8* @hid_pass_ptr(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.usb_gen_descriptor*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @hid_use_report_desc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
