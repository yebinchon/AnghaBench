; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_auto_logout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_auto_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"auto-logout\0A\00", align 1
@editing = common dso_local global i64 0, align 8
@SHIN = common dso_local global i32 0, align 4
@STRlogout = common dso_local global i32 0, align 4
@STRautomatic = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@child = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GettingInput = common dso_local global i32 0, align 4
@do_logout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @auto_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_logout() #0 {
  %1 = call i32 @xprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* @editing, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @Cookedmode()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @SHIN, align 4
  %8 = call i32 @xclose(i32 %7)
  %9 = load i32, i32* @STRlogout, align 4
  %10 = load i32, i32* @STRautomatic, align 4
  %11 = load i32, i32* @VAR_READWRITE, align 4
  %12 = call i32 @setcopy(i32 %9, i32 %10, i32 %11)
  store i32 1, i32* @child, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* @GettingInput, align 4
  %14 = call i32 @goodbye(i32* null, i32* null)
  ret void
}

declare dso_local i32 @xprintf(i8*) #1

declare dso_local i32 @Cookedmode(...) #1

declare dso_local i32 @xclose(i32) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i32 @goodbye(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
