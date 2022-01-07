; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_bitsearch16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_bitsearch16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_ZF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32)* @common_bitsearch16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_bitsearch16(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %8 = call i32 @fetch_decode_modrm(%struct.x86emu* %7)
  %9 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %10 = call i32* @decode_rh_word_register(%struct.x86emu* %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %12 = call i32 @decode_and_fetch_word(%struct.x86emu* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @F_ZF, align 4
  %17 = call i32 @CONDITIONAL_SET_FLAG(i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %24, %26
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %37

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %19

37:                                               ; preds = %30, %19
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32* @decode_rh_word_register(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_word(%struct.x86emu*) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
