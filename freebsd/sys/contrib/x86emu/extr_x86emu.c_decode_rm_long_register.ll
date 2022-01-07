; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rm_long_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rm_long_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.x86emu*, i32)* @decode_rm_long_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_rm_long_register(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %39 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %15
    i32 3, label %19
    i32 4, label %23
    i32 5, label %27
    i32 6, label %31
    i32 7, label %35
  ]

7:                                                ; preds = %2
  %8 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i32* %10, i32** %3, align 8
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i32* %14, i32** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32* %18, i32** %3, align 8
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %21 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32* %22, i32** %3, align 8
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32* %26, i32** %3, align 8
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32* %30, i32** %3, align 8
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %33 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* %34, i32** %3, align 8
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* %38, i32** %3, align 8
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %41 = call i32 @x86emu_halt_sys(%struct.x86emu* %40)
  br label %42

42:                                               ; preds = %7, %11, %15, %19, %23, %27, %31, %35, %39
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
