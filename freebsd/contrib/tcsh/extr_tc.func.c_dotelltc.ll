; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dotelltc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dotelltc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type opaque

@GotTermCaps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotelltc(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = call i32 @USE(i32** %5)
  %7 = load %struct.command*, %struct.command** %4, align 8
  %8 = bitcast %struct.command* %7 to i32**
  %9 = call i32 @USE(i32** %8)
  %10 = load i32, i32* @GotTermCaps, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @GetTermCaps()
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 (...) @TellTC()
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @GetTermCaps(...) #1

declare dso_local i32 @TellTC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
