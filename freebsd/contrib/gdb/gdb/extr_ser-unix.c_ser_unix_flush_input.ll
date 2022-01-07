; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_flush_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_flush_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64, i32, i32 }

@SERIAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ser_unix_flush_input(%struct.serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serial*, align 8
  store %struct.serial* %0, %struct.serial** %3, align 8
  %4 = load %struct.serial*, %struct.serial** %3, align 8
  %5 = getelementptr inbounds %struct.serial, %struct.serial* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.serial*, %struct.serial** %3, align 8
  %10 = getelementptr inbounds %struct.serial, %struct.serial* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.serial*, %struct.serial** %3, align 8
  %12 = getelementptr inbounds %struct.serial, %struct.serial* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.serial*, %struct.serial** %3, align 8
  %15 = getelementptr inbounds %struct.serial, %struct.serial* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @SERIAL_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
