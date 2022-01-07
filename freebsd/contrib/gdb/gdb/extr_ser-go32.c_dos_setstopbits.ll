; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_setstopbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_setstopbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_cfcr = common dso_local global i32 0, align 4
@CFCR_STOPB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i32)* @dos_setstopbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_setstopbits(%struct.serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dos_ttystate*, align 8
  %7 = alloca i8, align 1
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %9 = load %struct.serial*, %struct.serial** %4, align 8
  %10 = getelementptr inbounds %struct.serial, %struct.serial* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %8, i64 %11
  store %struct.dos_ttystate* %12, %struct.dos_ttystate** %6, align 8
  %13 = call i32 (...) @disable()
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %15 = load i32, i32* @com_cfcr, align 4
  %16 = call zeroext i8 @inb(%struct.dos_ttystate* %14, i32 %15)
  store i8 %16, i8* %7, align 1
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %39 [
    i32 129, label %18
    i32 130, label %29
    i32 128, label %29
  ]

18:                                               ; preds = %2
  %19 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %20 = load i32, i32* @com_cfcr, align 4
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @CFCR_STOPB, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = trunc i32 %26 to i8
  %28 = call i32 @outb(%struct.dos_ttystate* %19, i32 %20, i8 zeroext %27)
  br label %41

29:                                               ; preds = %2, %2
  %30 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %31 = load i32, i32* @com_cfcr, align 4
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @CFCR_STOPB, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = call i32 @outb(%struct.dos_ttystate* %30, i32 %31, i8 zeroext %37)
  br label %41

39:                                               ; preds = %2
  %40 = call i32 (...) @enable()
  store i32 1, i32* %3, align 4
  br label %43

41:                                               ; preds = %29, %18
  %42 = call i32 (...) @enable()
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @disable(...) #1

declare dso_local zeroext i8 @inb(%struct.dos_ttystate*, i32) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i8 zeroext) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
