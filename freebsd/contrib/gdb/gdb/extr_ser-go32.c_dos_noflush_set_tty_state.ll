; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_noflush_set_tty_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_noflush_set_tty_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32 }
%struct.dos_ttystate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i64, i64)* @dos_noflush_set_tty_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_noflush_set_tty_state(%struct.serial* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dos_ttystate*, align 8
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to %struct.dos_ttystate*
  store %struct.dos_ttystate* %9, %struct.dos_ttystate** %7, align 8
  %10 = load %struct.serial*, %struct.serial** %4, align 8
  %11 = load %struct.dos_ttystate*, %struct.dos_ttystate** %7, align 8
  %12 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dos_setbaudrate(%struct.serial* %10, i32 %13)
  ret i32 0
}

declare dso_local i32 @dos_setbaudrate(%struct.serial*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
