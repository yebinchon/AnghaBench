; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_flush_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_flush_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i64, i64, i64 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_fifo = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i32 0, align 4
@FIFO_RCV_RST = common dso_local global i32 0, align 4
@FIFO_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*)* @dos_flush_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_flush_input(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca %struct.dos_ttystate*, align 8
  store %struct.serial* %0, %struct.serial** %2, align 8
  %4 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %5 = load %struct.serial*, %struct.serial** %2, align 8
  %6 = getelementptr inbounds %struct.serial, %struct.serial* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %4, i64 %7
  store %struct.dos_ttystate* %8, %struct.dos_ttystate** %3, align 8
  %9 = call i32 (...) @disable()
  %10 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %11 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %13 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %15 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %20 = load i32, i32* @com_fifo, align 4
  %21 = load i32, i32* @FIFO_ENABLE, align 4
  %22 = load i32, i32* @FIFO_RCV_RST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FIFO_TRIGGER, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @outb(%struct.dos_ttystate* %19, i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = call i32 (...) @enable()
  ret i32 0
}

declare dso_local i32 @disable(...) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i32) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
