; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_shift32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_shift32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32, i32)* @common_shift32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_shift32(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %11 = call i32 @fetch_decode_modrm(%struct.x86emu* %10)
  %12 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %13 = call i32* @decode_rh_long_register(%struct.x86emu* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %18 = call i32 @decode_and_fetch_long(%struct.x86emu* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %20 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %25 = call i32 @decode_and_fetch_long_imm8(%struct.x86emu* %24, i32* %7)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @shld_long(%struct.x86emu* %30, i32 %31, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @shrd_long(%struct.x86emu* %37, i32 %38, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @write_back_long(%struct.x86emu* %44, i32 %45)
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32* @decode_rh_long_register(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_long(%struct.x86emu*) #1

declare dso_local i32 @decode_and_fetch_long_imm8(%struct.x86emu*, i32*) #1

declare dso_local i32 @shld_long(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @shrd_long(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @write_back_long(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
