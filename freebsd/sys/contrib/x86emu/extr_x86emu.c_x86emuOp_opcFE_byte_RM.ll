; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcFE_byte_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcFE_byte_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_opcFE_byte_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_opcFE_byte_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = call i32 @fetch_decode_modrm(%struct.x86emu* %6)
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = call i32 @decode_rl_address(%struct.x86emu* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %40 [
    i32 0, label %18
    i32 1, label %29
  ]

18:                                               ; preds = %12
  %19 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fetch_data_byte(%struct.x86emu* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @inc_byte(%struct.x86emu* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @store_data_byte(%struct.x86emu* %25, i32 %26, i32 %27)
  br label %40

29:                                               ; preds = %12
  %30 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @fetch_data_byte(%struct.x86emu* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dec_byte(%struct.x86emu* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @store_data_byte(%struct.x86emu* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %12, %29, %18
  br label %60

41:                                               ; preds = %1
  %42 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %43 = call i32* @decode_rl_byte_register(%struct.x86emu* %42)
  store i32* %43, i32** %5, align 8
  %44 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %45 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %59 [
    i32 0, label %47
    i32 1, label %53
  ]

47:                                               ; preds = %41
  %48 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @inc_byte(%struct.x86emu* %48, i32 %50)
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dec_byte(%struct.x86emu* %54, i32 %56)
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %41, %53, %47
  br label %60

60:                                               ; preds = %59, %40
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @inc_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @store_data_byte(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @dec_byte(%struct.x86emu*, i32) #1

declare dso_local i32* @decode_rl_byte_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
