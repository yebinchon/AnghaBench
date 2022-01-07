; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%s -> 0x%02x\00", align 1
@HD_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@HD_WRITE = common dso_local global i32 0, align 4
@STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @hd44780_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_output(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @HD_COMMAND, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @debug(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @HD_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @STROBE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @hd_sctrl(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HD_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @hd_sctrl(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @hd_sdata(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HD_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @STROBE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @hd_sctrl(i32 %28)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, i32) #1

declare dso_local i32 @hd_sctrl(i32) #1

declare dso_local i32 @hd_sdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
