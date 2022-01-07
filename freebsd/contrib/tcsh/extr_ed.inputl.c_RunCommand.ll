; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_RunCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_RunCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GettingInput = common dso_local global i32 0, align 4
@NeedsRedraw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @RunCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RunCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32*], align 16
  store i32* %0, i32** %2, align 8
  %4 = call i32 @xputchar(i8 signext 10)
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %5, i32** %6, align 16
  %7 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  store i32* null, i32** %7, align 8
  %8 = call i32 (...) @Cookedmode()
  store i32 0, i32* @GettingInput, align 4
  %9 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %10 = call i32 @doeval1(i32** %9)
  %11 = call i32 (...) @Rawmode()
  store i32 1, i32* @GettingInput, align 4
  %12 = call i32 (...) @ClearLines()
  %13 = call i32 (...) @ClearDisp()
  store i64 0, i64* @NeedsRedraw, align 8
  %14 = call i32 (...) @Refresh()
  ret void
}

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @Cookedmode(...) #1

declare dso_local i32 @doeval1(i32**) #1

declare dso_local i32 @Rawmode(...) #1

declare dso_local i32 @ClearLines(...) #1

declare dso_local i32 @ClearDisp(...) #1

declare dso_local i32 @Refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
