; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_clear_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_clear_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pool = type { i32 }
%struct.pf_pooladdr = type { i32 }

@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_clear_pool(%struct.pf_pool* %0) #0 {
  %2 = alloca %struct.pf_pool*, align 8
  %3 = alloca %struct.pf_pooladdr*, align 8
  store %struct.pf_pool* %0, %struct.pf_pool** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.pf_pool*, %struct.pf_pool** %2, align 8
  %6 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %5, i32 0, i32 0
  %7 = call %struct.pf_pooladdr* @TAILQ_FIRST(i32* %6)
  store %struct.pf_pooladdr* %7, %struct.pf_pooladdr** %3, align 8
  %8 = icmp ne %struct.pf_pooladdr* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.pf_pool*, %struct.pf_pool** %2, align 8
  %11 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %10, i32 0, i32 0
  %12 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %13 = load i32, i32* @entries, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.pf_pooladdr* %12, i32 %13)
  %15 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %16 = call i32 @free(%struct.pf_pooladdr* %15)
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local %struct.pf_pooladdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_pooladdr*, i32) #1

declare dso_local i32 @free(%struct.pf_pooladdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
