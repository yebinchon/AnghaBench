; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_rules_combineable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_rules_combineable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i32 }

@COMBINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rules_combineable(%struct.pf_rule* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca %struct.pf_rule*, align 8
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca %struct.pf_rule, align 4
  %6 = alloca %struct.pf_rule, align 4
  store %struct.pf_rule* %0, %struct.pf_rule** %3, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %4, align 8
  %7 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %8 = load i32, i32* @COMBINED, align 4
  %9 = call i32 @comparable_rule(%struct.pf_rule* %5, %struct.pf_rule* %7, i32 %8)
  %10 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %11 = load i32, i32* @COMBINED, align 4
  %12 = call i32 @comparable_rule(%struct.pf_rule* %6, %struct.pf_rule* %10, i32 %11)
  %13 = call i64 @memcmp(%struct.pf_rule* %5, %struct.pf_rule* %6, i32 4)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @comparable_rule(%struct.pf_rule*, %struct.pf_rule*, i32) #1

declare dso_local i64 @memcmp(%struct.pf_rule*, %struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
