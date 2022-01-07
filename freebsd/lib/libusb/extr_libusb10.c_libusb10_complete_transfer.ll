; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_complete_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_complete_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32 }
%struct.libusb_transfer = type { i32, i32 }
%struct.libusb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LIBUSB_SUPER_XFER_ST_NONE = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_transfer*, %struct.libusb_super_transfer*, i32)* @libusb10_complete_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb10_complete_transfer(%struct.libusb20_transfer* %0, %struct.libusb_super_transfer* %1, i32 %2) #0 {
  %4 = alloca %struct.libusb20_transfer*, align 8
  %5 = alloca %struct.libusb_super_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb_transfer*, align 8
  %8 = alloca %struct.libusb_device*, align 8
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %4, align 8
  store %struct.libusb_super_transfer* %1, %struct.libusb_super_transfer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %10 = bitcast %struct.libusb_super_transfer* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = bitcast i32* %11 to %struct.libusb_transfer*
  store %struct.libusb_transfer* %12, %struct.libusb_transfer** %7, align 8
  %13 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %14 = icmp ne %struct.libusb20_transfer* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %17 = call i32 @libusb20_tr_set_priv_sc1(%struct.libusb20_transfer* %16, i32* null)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.libusb_transfer*, %struct.libusb_transfer** %7, align 8
  %21 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @LIBUSB_SUPER_XFER_ST_NONE, align 4
  %23 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %24 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.libusb_transfer*, %struct.libusb_transfer** %7, align 8
  %26 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.libusb_device* @libusb_get_device(i32 %27)
  store %struct.libusb_device* %28, %struct.libusb_device** %8, align 8
  %29 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %30 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %5, align 8
  %34 = load i32, i32* @entry, align 4
  %35 = call i32 @TAILQ_INSERT_TAIL(i32* %32, %struct.libusb_super_transfer* %33, i32 %34)
  ret void
}

declare dso_local i32 @libusb20_tr_set_priv_sc1(%struct.libusb20_transfer*, i32*) #1

declare dso_local %struct.libusb_device* @libusb_get_device(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.libusb_super_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
