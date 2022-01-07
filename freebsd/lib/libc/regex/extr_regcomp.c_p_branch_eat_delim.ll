; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_branch_eat_delim.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_branch_eat_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.branchc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, %struct.branchc*)* @p_branch_eat_delim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_branch_eat_delim(%struct.parse* %0, %struct.branchc* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.branchc*, align 8
  %5 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.branchc* %1, %struct.branchc** %4, align 8
  %6 = load %struct.branchc*, %struct.branchc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %10, %2
  %8 = call i64 @EAT(i8 signext 124)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  br label %7

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i64 @EAT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
