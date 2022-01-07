; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { %struct.libusb20_backend_methods*, i32 }
%struct.libusb20_backend_methods = type { i32 (%struct.libusb20_backend.0*)* }
%struct.libusb20_backend.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_backend* @libusb20_be_alloc(%struct.libusb20_backend_methods* %0) #0 {
  %2 = alloca %struct.libusb20_backend*, align 8
  %3 = alloca %struct.libusb20_backend_methods*, align 8
  %4 = alloca %struct.libusb20_backend*, align 8
  store %struct.libusb20_backend_methods* %0, %struct.libusb20_backend_methods** %3, align 8
  %5 = call %struct.libusb20_backend* @malloc(i32 16)
  store %struct.libusb20_backend* %5, %struct.libusb20_backend** %4, align 8
  %6 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %7 = icmp eq %struct.libusb20_backend* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.libusb20_backend* null, %struct.libusb20_backend** %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %11 = call i32 @memset(%struct.libusb20_backend* %10, i32 0, i32 16)
  %12 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %13 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %12, i32 0, i32 1
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = load %struct.libusb20_backend_methods*, %struct.libusb20_backend_methods** %3, align 8
  %16 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %17 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %16, i32 0, i32 0
  store %struct.libusb20_backend_methods* %15, %struct.libusb20_backend_methods** %17, align 8
  %18 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %19 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %18, i32 0, i32 0
  %20 = load %struct.libusb20_backend_methods*, %struct.libusb20_backend_methods** %19, align 8
  %21 = getelementptr inbounds %struct.libusb20_backend_methods, %struct.libusb20_backend_methods* %20, i32 0, i32 0
  %22 = load i32 (%struct.libusb20_backend.0*)*, i32 (%struct.libusb20_backend.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.libusb20_backend.0*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  %25 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %26 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %25, i32 0, i32 0
  %27 = load %struct.libusb20_backend_methods*, %struct.libusb20_backend_methods** %26, align 8
  %28 = getelementptr inbounds %struct.libusb20_backend_methods, %struct.libusb20_backend_methods* %27, i32 0, i32 0
  %29 = load i32 (%struct.libusb20_backend.0*)*, i32 (%struct.libusb20_backend.0*)** %28, align 8
  %30 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  %31 = bitcast %struct.libusb20_backend* %30 to %struct.libusb20_backend.0*
  %32 = call i32 %29(%struct.libusb20_backend.0* %31)
  br label %33

33:                                               ; preds = %24, %9
  %34 = load %struct.libusb20_backend*, %struct.libusb20_backend** %4, align 8
  store %struct.libusb20_backend* %34, %struct.libusb20_backend** %2, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  ret %struct.libusb20_backend* %36
}

declare dso_local %struct.libusb20_backend* @malloc(i32) #1

declare dso_local i32 @memset(%struct.libusb20_backend*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
