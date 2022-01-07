; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_reg_next_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_reg_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.reggroup* }
%struct.reggroup = type { i32 }

@TUI_DATA_WIN = common dso_local global %struct.TYPE_6__* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_reg_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_reg_next_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reggroup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.reggroup*, %struct.reggroup** %12, align 8
  store %struct.reggroup* %13, %struct.reggroup** %5, align 8
  %14 = load i32, i32* @current_gdbarch, align 4
  %15 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %16 = call %struct.reggroup* @reggroup_next(i32 %14, %struct.reggroup* %15)
  store %struct.reggroup* %16, %struct.reggroup** %5, align 8
  %17 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %18 = icmp eq %struct.reggroup* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = call %struct.reggroup* @reggroup_next(i32 %20, %struct.reggroup* null)
  store %struct.reggroup* %21, %struct.reggroup** %5, align 8
  br label %22

22:                                               ; preds = %19, %8
  %23 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %24 = icmp ne %struct.reggroup* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %27 = call i32 @tui_show_registers(%struct.reggroup* %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.reggroup* @reggroup_next(i32, %struct.reggroup*) #1

declare dso_local i32 @tui_show_registers(%struct.reggroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
