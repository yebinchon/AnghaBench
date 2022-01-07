; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_term.c_term_eqn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_term.c_term_eqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.eqn_box = type { i32 }

@TERMP_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_eqn(%struct.termp* %0, %struct.eqn_box* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.eqn_box* %1, %struct.eqn_box** %4, align 8
  %5 = load %struct.termp*, %struct.termp** %3, align 8
  %6 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %7 = call i32 @eqn_box(%struct.termp* %5, %struct.eqn_box* %6)
  %8 = load i32, i32* @TERMP_NOSPACE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.termp*, %struct.termp** %3, align 8
  %11 = getelementptr inbounds %struct.termp, %struct.termp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  ret void
}

declare dso_local i32 @eqn_box(%struct.termp*, %struct.eqn_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
