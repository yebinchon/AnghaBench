; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_inc_word_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_common_inc_word_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.x86emu_register = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, %union.x86emu_register*)* @common_inc_word_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_inc_word_long(%struct.x86emu* %0, %union.x86emu_register* %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca %union.x86emu_register*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store %union.x86emu_register* %1, %union.x86emu_register** %4, align 8
  %5 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %6 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %14 = load %union.x86emu_register*, %union.x86emu_register** %4, align 8
  %15 = bitcast %union.x86emu_register* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @inc_long(%struct.x86emu* %13, i32 %17)
  %19 = load %union.x86emu_register*, %union.x86emu_register** %4, align 8
  %20 = bitcast %union.x86emu_register* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %24 = load %union.x86emu_register*, %union.x86emu_register** %4, align 8
  %25 = bitcast %union.x86emu_register* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @inc_word(%struct.x86emu* %23, i32 %27)
  %29 = load %union.x86emu_register*, %union.x86emu_register** %4, align 8
  %30 = bitcast %union.x86emu_register* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @inc_long(%struct.x86emu*, i32) #1

declare dso_local i32 @inc_word(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
