; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_emu_outl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_emu_outl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32, i32)* @x86bios_emu_outl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86bios_emu_outl(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 128
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 136
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %49

13:                                               ; preds = %9, %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @iodev_write_1(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @iodev_write_2(i32 %22, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 3
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 24
  %30 = call i32 @iodev_write_1(i32 %27, i32 %29)
  br label %49

31:                                               ; preds = %13
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @iodev_write_2(i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 16
  %43 = call i32 @iodev_write_2(i32 %40, i32 %42)
  br label %48

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @iodev_write_4(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  br label %49

49:                                               ; preds = %12, %48, %17
  ret void
}

declare dso_local i32 @iodev_write_1(i32, i32) #1

declare dso_local i32 @iodev_write_2(i32, i32) #1

declare dso_local i32 @iodev_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
