; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rh_seg_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rh_seg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.x86emu*)* @decode_rh_seg_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_rh_seg_register(%struct.x86emu* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.x86emu*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %5 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %15
    i32 3, label %19
    i32 4, label %23
    i32 5, label %27
  ]

7:                                                ; preds = %1
  %8 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i32* %10, i32** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32* %14, i32** %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32* %18, i32** %2, align 8
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %21 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32* %22, i32** %2, align 8
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* %26, i32** %2, align 8
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %30, i32** %2, align 8
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %33 = call i32 @x86emu_halt_sys(%struct.x86emu* %32)
  br label %34

34:                                               ; preds = %7, %11, %15, %19, %23, %27, %31
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
