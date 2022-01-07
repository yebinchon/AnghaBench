; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_setup_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_setup_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32*, i32, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_tr_setup_control(%struct.libusb20_transfer* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.libusb20_transfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @libusb20_pass_ptr(i8* %10)
  %12 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %13 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 8, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %26, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %4
  %36 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %37 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %36, i32 0, i32 1
  store i32 2, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @libusb20_pass_ptr(i8* %38)
  %40 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %46 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  br label %52

49:                                               ; preds = %4
  %50 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %51 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %35
  ret void
}

declare dso_local i8* @libusb20_pass_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
