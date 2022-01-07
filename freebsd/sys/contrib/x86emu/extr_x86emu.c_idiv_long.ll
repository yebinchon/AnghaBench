; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_idiv_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_idiv_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@F_CF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i64)* @idiv_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idiv_long(%struct.x86emu* %0, i64 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 32
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %13, %17
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %23 = call i32 @x86emu_intr_raise(%struct.x86emu* %22, i32 8)
  br label %66

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = sdiv i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = srem i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 2147483647
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, -2147483647
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %24
  %39 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %40 = call i32 @x86emu_intr_raise(%struct.x86emu* %39, i32 8)
  br label %66

41:                                               ; preds = %35
  %42 = load i32, i32* @F_CF, align 4
  %43 = call i32 @CLEAR_FLAG(i32 %42)
  %44 = load i32, i32* @F_AF, align 4
  %45 = call i32 @CLEAR_FLAG(i32 %44)
  %46 = load i32, i32* @F_SF, align 4
  %47 = call i32 @CLEAR_FLAG(i32 %46)
  %48 = load i32, i32* @F_ZF, align 4
  %49 = call i32 @SET_FLAG(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @PARITY(i32 %51)
  %53 = load i32, i32* @F_PF, align 4
  %54 = call i32 @CONDITIONAL_SET_FLAG(i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = trunc i64 %56 to i32
  %58 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %59 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %64 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %41, %38, %21
  ret void
}

declare dso_local i32 @x86emu_intr_raise(%struct.x86emu*, i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
