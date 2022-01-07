; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_sendbreak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_sendbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_cfcr = common dso_local global i32 0, align 4
@CFCR_SBREAK = common dso_local global i8 0, align 1
@RAWHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*)* @dos_sendbreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_sendbreak(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca %struct.dos_ttystate*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.serial* %0, %struct.serial** %2, align 8
  %6 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %7 = load %struct.serial*, %struct.serial** %2, align 8
  %8 = getelementptr inbounds %struct.serial, %struct.serial* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %6, i64 %9
  store %struct.dos_ttystate* %10, %struct.dos_ttystate** %3, align 8
  %11 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %12 = load i32, i32* @com_cfcr, align 4
  %13 = call zeroext i8 @inb(%struct.dos_ttystate* %11, i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %15 = load i32, i32* @com_cfcr, align 4
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @CFCR_SBREAK, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i8
  %22 = call i32 @outb(%struct.dos_ttystate* %14, i32 %15, i8 zeroext %21)
  %23 = call i64 (...) @rawclock()
  %24 = load i32, i32* @RAWHZ, align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %33, %1
  %29 = call i64 (...) @rawclock()
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %28

34:                                               ; preds = %28
  %35 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %36 = load i32, i32* @com_cfcr, align 4
  %37 = load i8, i8* %4, align 1
  %38 = call i32 @outb(%struct.dos_ttystate* %35, i32 %36, i8 zeroext %37)
  ret i32 0
}

declare dso_local zeroext i8 @inb(%struct.dos_ttystate*, i32) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i8 zeroext) #1

declare dso_local i64 @rawclock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
