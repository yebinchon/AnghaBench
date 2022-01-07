; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_opcFF_word_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp16_opcFF_word_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp16_opcFF_word_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp16_opcFF_word_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = call i32 @decode_rl_address(%struct.x86emu* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @fetch_data_word(%struct.x86emu* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %39 [
    i32 0, label %19
    i32 1, label %27
    i32 6, label %35
  ]

19:                                               ; preds = %10
  %20 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @inc_word(%struct.x86emu* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @store_data_word(%struct.x86emu* %23, i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %10
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dec_word(%struct.x86emu* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @store_data_word(%struct.x86emu* %31, i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %10
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @push_word(%struct.x86emu* %36, i32 %37)
  br label %39

39:                                               ; preds = %10, %35, %27, %19
  br label %64

40:                                               ; preds = %1
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = call i32* @decode_rl_word_register(%struct.x86emu* %41)
  store i32* %42, i32** %4, align 8
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %63 [
    i32 0, label %46
    i32 1, label %52
    i32 6, label %58
  ]

46:                                               ; preds = %40
  %47 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @inc_word(%struct.x86emu* %47, i32 %49)
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %63

52:                                               ; preds = %40
  %53 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dec_word(%struct.x86emu* %53, i32 %55)
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @push_word(%struct.x86emu* %59, i32 %61)
  br label %63

63:                                               ; preds = %40, %58, %52, %46
  br label %64

64:                                               ; preds = %63, %39
  ret void
}

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i32 @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i32 @inc_word(%struct.x86emu*, i32) #1

declare dso_local i32 @store_data_word(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @dec_word(%struct.x86emu*, i32) #1

declare dso_local i32 @push_word(%struct.x86emu*, i32) #1

declare dso_local i32* @decode_rl_word_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
