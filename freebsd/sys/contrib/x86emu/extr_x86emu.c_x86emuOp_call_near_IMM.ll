; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_call_near_IMM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_call_near_IMM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_call_near_IMM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_call_near_IMM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %5 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %6 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = call i64 @fetch_long_imm(%struct.x86emu* %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @push_long(%struct.x86emu* %21, i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 %27, i64* %30, align 8
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %33 = call i64 @fetch_word_imm(%struct.x86emu* %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %35 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @push_word(%struct.x86emu* %40, i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %48 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %31, %12
  ret void
}

declare dso_local i64 @fetch_long_imm(%struct.x86emu*) #1

declare dso_local i32 @push_long(%struct.x86emu*, i64) #1

declare dso_local i64 @fetch_word_imm(%struct.x86emu*) #1

declare dso_local i32 @push_word(%struct.x86emu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
