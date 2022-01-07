; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_alloc_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_alloc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_backend* @libusb20_be_alloc_default() #0 {
  %1 = alloca %struct.libusb20_backend*, align 8
  %2 = alloca %struct.libusb20_backend*, align 8
  %3 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_linux()
  store %struct.libusb20_backend* %3, %struct.libusb20_backend** %2, align 8
  %4 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %5 = icmp ne %struct.libusb20_backend* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  store %struct.libusb20_backend* %7, %struct.libusb20_backend** %1, align 8
  br label %15

8:                                                ; preds = %0
  %9 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_ugen20()
  store %struct.libusb20_backend* %9, %struct.libusb20_backend** %2, align 8
  %10 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %11 = icmp ne %struct.libusb20_backend* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  store %struct.libusb20_backend* %13, %struct.libusb20_backend** %1, align 8
  br label %15

14:                                               ; preds = %8
  store %struct.libusb20_backend* null, %struct.libusb20_backend** %1, align 8
  br label %15

15:                                               ; preds = %14, %12, %6
  %16 = load %struct.libusb20_backend*, %struct.libusb20_backend** %1, align 8
  ret %struct.libusb20_backend* %16
}

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_linux(...) #1

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_ugen20(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
