; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }

@t309 = common dso_local global i32 0, align 4
@t316 = common dso_local global i32 0, align 4
@t317 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_destroy(%struct.uni* %0) #0 {
  %2 = alloca %struct.uni*, align 8
  store %struct.uni* %0, %struct.uni** %2, align 8
  %3 = load %struct.uni*, %struct.uni** %2, align 8
  %4 = call i32 @uni_stop(%struct.uni* %3)
  %5 = load %struct.uni*, %struct.uni** %2, align 8
  %6 = load i32, i32* @t309, align 4
  %7 = call i32 @TIMER_DESTROY_UNI(%struct.uni* %5, i32 %6)
  %8 = load %struct.uni*, %struct.uni** %2, align 8
  %9 = load i32, i32* @t316, align 4
  %10 = call i32 @TIMER_DESTROY_UNI(%struct.uni* %8, i32 %9)
  %11 = load %struct.uni*, %struct.uni** %2, align 8
  %12 = load i32, i32* @t317, align 4
  %13 = call i32 @TIMER_DESTROY_UNI(%struct.uni* %11, i32 %12)
  %14 = load %struct.uni*, %struct.uni** %2, align 8
  %15 = call i32 @INS_FREE(%struct.uni* %14)
  ret void
}

declare dso_local i32 @uni_stop(%struct.uni*) #1

declare dso_local i32 @TIMER_DESTROY_UNI(%struct.uni*, i32) #1

declare dso_local i32 @INS_FREE(%struct.uni*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
