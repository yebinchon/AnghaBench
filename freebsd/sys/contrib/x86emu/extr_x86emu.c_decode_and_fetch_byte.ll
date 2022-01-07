; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_and_fetch_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_and_fetch_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*)* @decode_and_fetch_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_and_fetch_byte(%struct.x86emu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86emu*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %5 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %10 = call i32 @decode_rl_address(%struct.x86emu* %9)
  %11 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %12 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fetch_data_byte(%struct.x86emu* %13, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %20 = call i32* @decode_rl_byte_register(%struct.x86emu* %19)
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_byte(%struct.x86emu*, i32) #1

declare dso_local i32* @decode_rl_byte_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
