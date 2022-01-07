; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_free_addrselectpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_free_addrselectpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policyhead = type { i32 }
%struct.policyqueue = type { i32 }

@pc_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.policyhead*)* @free_addrselectpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_addrselectpolicy(%struct.policyhead* %0) #0 {
  %2 = alloca %struct.policyhead*, align 8
  %3 = alloca %struct.policyqueue*, align 8
  %4 = alloca %struct.policyqueue*, align 8
  store %struct.policyhead* %0, %struct.policyhead** %2, align 8
  %5 = load %struct.policyhead*, %struct.policyhead** %2, align 8
  %6 = call %struct.policyqueue* @TAILQ_FIRST(%struct.policyhead* %5)
  store %struct.policyqueue* %6, %struct.policyqueue** %3, align 8
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.policyqueue*, %struct.policyqueue** %3, align 8
  %9 = icmp ne %struct.policyqueue* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.policyqueue*, %struct.policyqueue** %3, align 8
  %12 = load i32, i32* @pc_entry, align 4
  %13 = call %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue* %11, i32 %12)
  store %struct.policyqueue* %13, %struct.policyqueue** %4, align 8
  %14 = load %struct.policyhead*, %struct.policyhead** %2, align 8
  %15 = load %struct.policyqueue*, %struct.policyqueue** %3, align 8
  %16 = load i32, i32* @pc_entry, align 4
  %17 = call i32 @TAILQ_REMOVE(%struct.policyhead* %14, %struct.policyqueue* %15, i32 %16)
  %18 = load %struct.policyqueue*, %struct.policyqueue** %3, align 8
  %19 = call i32 @free(%struct.policyqueue* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load %struct.policyqueue*, %struct.policyqueue** %4, align 8
  store %struct.policyqueue* %21, %struct.policyqueue** %3, align 8
  br label %7

22:                                               ; preds = %7
  ret void
}

declare dso_local %struct.policyqueue* @TAILQ_FIRST(%struct.policyhead*) #1

declare dso_local %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.policyhead*, %struct.policyqueue*, i32) #1

declare dso_local i32 @free(%struct.policyqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
