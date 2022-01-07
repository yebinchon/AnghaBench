; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_printer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enter_doublewide_mode = common dso_local global i32 0, align 4
@exit_doublewide_mode = common dso_local global i32 0, align 4
@enter_italics_mode = common dso_local global i32 0, align 4
@exit_italics_mode = common dso_local global i32 0, align 4
@enter_leftward_mode = common dso_local global i32 0, align 4
@exit_leftward_mode = common dso_local global i32 0, align 4
@enter_micro_mode = common dso_local global i32 0, align 4
@exit_micro_mode = common dso_local global i32 0, align 4
@enter_shadow_mode = common dso_local global i32 0, align 4
@exit_shadow_mode = common dso_local global i32 0, align 4
@enter_subscript_mode = common dso_local global i32 0, align 4
@exit_subscript_mode = common dso_local global i32 0, align 4
@enter_superscript_mode = common dso_local global i32 0, align 4
@exit_superscript_mode = common dso_local global i32 0, align 4
@enter_upward_mode = common dso_local global i32 0, align 4
@exit_upward_mode = common dso_local global i32 0, align 4
@start_char_set_def = common dso_local global i32 0, align 4
@stop_char_set_def = common dso_local global i32 0, align 4
@set_bottom_margin_parm = common dso_local global i32 0, align 4
@set_bottom_margin = common dso_local global i32 0, align 4
@set_left_margin_parm = common dso_local global i32 0, align 4
@set_left_margin = common dso_local global i32 0, align 4
@set_right_margin_parm = common dso_local global i32 0, align 4
@set_right_margin = common dso_local global i32 0, align 4
@set_top_margin_parm = common dso_local global i32 0, align 4
@set_top_margin = common dso_local global i32 0, align 4
@parm_down_micro = common dso_local global i32 0, align 4
@micro_down = common dso_local global i32 0, align 4
@parm_left_micro = common dso_local global i32 0, align 4
@micro_left = common dso_local global i32 0, align 4
@parm_right_micro = common dso_local global i32 0, align 4
@micro_right = common dso_local global i32 0, align 4
@parm_up_micro = common dso_local global i32 0, align 4
@micro_up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_printer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @enter_doublewide_mode, align 4
  %4 = load i32, i32* @exit_doublewide_mode, align 4
  %5 = call i32 @PAIRED(i32 %3, i32 %4)
  %6 = load i32, i32* @enter_italics_mode, align 4
  %7 = load i32, i32* @exit_italics_mode, align 4
  %8 = call i32 @PAIRED(i32 %6, i32 %7)
  %9 = load i32, i32* @enter_leftward_mode, align 4
  %10 = load i32, i32* @exit_leftward_mode, align 4
  %11 = call i32 @PAIRED(i32 %9, i32 %10)
  %12 = load i32, i32* @enter_micro_mode, align 4
  %13 = load i32, i32* @exit_micro_mode, align 4
  %14 = call i32 @PAIRED(i32 %12, i32 %13)
  %15 = load i32, i32* @enter_shadow_mode, align 4
  %16 = load i32, i32* @exit_shadow_mode, align 4
  %17 = call i32 @PAIRED(i32 %15, i32 %16)
  %18 = load i32, i32* @enter_subscript_mode, align 4
  %19 = load i32, i32* @exit_subscript_mode, align 4
  %20 = call i32 @PAIRED(i32 %18, i32 %19)
  %21 = load i32, i32* @enter_superscript_mode, align 4
  %22 = load i32, i32* @exit_superscript_mode, align 4
  %23 = call i32 @PAIRED(i32 %21, i32 %22)
  %24 = load i32, i32* @enter_upward_mode, align 4
  %25 = load i32, i32* @exit_upward_mode, align 4
  %26 = call i32 @PAIRED(i32 %24, i32 %25)
  %27 = load i32, i32* @start_char_set_def, align 4
  %28 = load i32, i32* @stop_char_set_def, align 4
  %29 = call i32 @ANDMISSING(i32 %27, i32 %28)
  %30 = load i32, i32* @set_bottom_margin_parm, align 4
  %31 = load i32, i32* @set_bottom_margin, align 4
  %32 = call i32 @ANDMISSING(i32 %30, i32 %31)
  %33 = load i32, i32* @set_left_margin_parm, align 4
  %34 = load i32, i32* @set_left_margin, align 4
  %35 = call i32 @ANDMISSING(i32 %33, i32 %34)
  %36 = load i32, i32* @set_right_margin_parm, align 4
  %37 = load i32, i32* @set_right_margin, align 4
  %38 = call i32 @ANDMISSING(i32 %36, i32 %37)
  %39 = load i32, i32* @set_top_margin_parm, align 4
  %40 = load i32, i32* @set_top_margin, align 4
  %41 = call i32 @ANDMISSING(i32 %39, i32 %40)
  %42 = load i32, i32* @parm_down_micro, align 4
  %43 = load i32, i32* @micro_down, align 4
  %44 = call i32 @ANDMISSING(i32 %42, i32 %43)
  %45 = load i32, i32* @parm_left_micro, align 4
  %46 = load i32, i32* @micro_left, align 4
  %47 = call i32 @ANDMISSING(i32 %45, i32 %46)
  %48 = load i32, i32* @parm_right_micro, align 4
  %49 = load i32, i32* @micro_right, align 4
  %50 = call i32 @ANDMISSING(i32 %48, i32 %49)
  %51 = load i32, i32* @parm_up_micro, align 4
  %52 = load i32, i32* @micro_up, align 4
  %53 = call i32 @ANDMISSING(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @PAIRED(i32, i32) #1

declare dso_local i32 @ANDMISSING(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
