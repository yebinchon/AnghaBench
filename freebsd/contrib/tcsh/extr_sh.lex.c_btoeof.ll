; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_btoeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_btoeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHIN = common dso_local global i32 0, align 4
@L_XTND = common dso_local global i32 0, align 4
@TCSH_F_SEEK = common dso_local global i32 0, align 4
@aret = common dso_local global i32 0, align 4
@feobp = common dso_local global i32 0, align 4
@fseekp = common dso_local global i32 0, align 4
@alvec = common dso_local global i32* null, align 8
@alvecp = common dso_local global i32* null, align 8
@evalvec = common dso_local global i32* null, align 8
@evalp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btoeof() #0 {
  %1 = load i32, i32* @SHIN, align 4
  %2 = load i32, i32* @L_XTND, align 4
  %3 = call i32 @lseek(i32 %1, i32 0, i32 %2)
  %4 = load i32, i32* @TCSH_F_SEEK, align 4
  store i32 %4, i32* @aret, align 4
  %5 = load i32, i32* @feobp, align 4
  store i32 %5, i32* @fseekp, align 4
  store i32* null, i32** @alvec, align 8
  store i32* null, i32** @alvecp, align 8
  store i32* null, i32** @evalvec, align 8
  store i32* null, i32** @evalp, align 8
  %6 = call i32 (...) @wfree()
  %7 = call i32 (...) @bfree()
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @wfree(...) #1

declare dso_local i32 @bfree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
