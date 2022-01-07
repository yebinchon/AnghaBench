; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_and_fetch_word_disp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_and_fetch_word_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYSMODE_PREFIX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32)* @decode_and_fetch_word_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_and_fetch_word_disp(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %12 = call i32 @decode_rl_address(%struct.x86emu* %11)
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  %15 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %18 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYSMODE_PREFIX_ADDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %26 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 65535
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %10
  %30 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %31 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %32 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fetch_data_word(%struct.x86emu* %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %37 = call i32* @decode_rl_word_register(%struct.x86emu* %36)
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i32* @decode_rl_word_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
