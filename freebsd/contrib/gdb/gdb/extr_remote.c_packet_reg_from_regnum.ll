; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_packet_reg_from_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_packet_reg_from_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reg = type { i64 }
%struct.remote_state = type { %struct.packet_reg* }

@NUM_REGS = common dso_local global i64 0, align 8
@NUM_PSEUDO_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packet_reg* (%struct.remote_state*, i64)* @packet_reg_from_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packet_reg* @packet_reg_from_regnum(%struct.remote_state* %0, i64 %1) #0 {
  %3 = alloca %struct.packet_reg*, align 8
  %4 = alloca %struct.remote_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.packet_reg*, align 8
  store %struct.remote_state* %0, %struct.remote_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NUM_REGS, align 8
  %12 = load i64, i64* @NUM_PSEUDO_REGS, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.packet_reg* null, %struct.packet_reg** %3, align 8
  br label %30

16:                                               ; preds = %9, %2
  %17 = load %struct.remote_state*, %struct.remote_state** %4, align 8
  %18 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %17, i32 0, i32 0
  %19 = load %struct.packet_reg*, %struct.packet_reg** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %19, i64 %20
  store %struct.packet_reg* %21, %struct.packet_reg** %6, align 8
  %22 = load %struct.packet_reg*, %struct.packet_reg** %6, align 8
  %23 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @gdb_assert(i32 %27)
  %29 = load %struct.packet_reg*, %struct.packet_reg** %6, align 8
  store %struct.packet_reg* %29, %struct.packet_reg** %3, align 8
  br label %30

30:                                               ; preds = %16, %15
  %31 = load %struct.packet_reg*, %struct.packet_reg** %3, align 8
  ret %struct.packet_reg* %31
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
