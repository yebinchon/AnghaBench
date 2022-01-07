; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___enlarge_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___enlarge_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envVars = type { i32 }

@envVarsTotal = common dso_local global i32 0, align 4
@envVarsSize = common dso_local global i32 0, align 4
@envVars = common dso_local global %struct.envVars* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__enlarge_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__enlarge_env() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.envVars*, align 8
  %4 = load i32, i32* @envVarsTotal, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @envVarsTotal, align 4
  %6 = load i32, i32* @envVarsTotal, align 4
  %7 = load i32, i32* @envVarsSize, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %0
  %10 = load i32, i32* @envVarsTotal, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %2, align 4
  %12 = load %struct.envVars*, %struct.envVars** @envVars, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.envVars* @reallocarray(%struct.envVars* %12, i32 %13, i32 4)
  store %struct.envVars* %14, %struct.envVars** %3, align 8
  %15 = load %struct.envVars*, %struct.envVars** %3, align 8
  %16 = icmp eq %struct.envVars* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @envVarsTotal, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @envVarsTotal, align 4
  store i32 0, i32* %1, align 4
  br label %24

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* @envVarsSize, align 4
  %22 = load %struct.envVars*, %struct.envVars** %3, align 8
  store %struct.envVars* %22, %struct.envVars** @envVars, align 8
  br label %23

23:                                               ; preds = %20, %0
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local %struct.envVars* @reallocarray(%struct.envVars*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
