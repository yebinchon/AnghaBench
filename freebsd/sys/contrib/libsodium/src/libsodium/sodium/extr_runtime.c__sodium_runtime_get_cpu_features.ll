; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_runtime.c__sodium_runtime_get_cpu_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_runtime.c__sodium_runtime_get_cpu_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@_cpu_features = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sodium_runtime_get_cpu_features() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = call i32 @_sodium_runtime_arm_cpu_features(%struct.TYPE_4__* @_cpu_features)
  %3 = load i32, i32* %1, align 4
  %4 = and i32 %3, %2
  store i32 %4, i32* %1, align 4
  %5 = call i32 @_sodium_runtime_intel_cpu_features(%struct.TYPE_4__* @_cpu_features)
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %1, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_cpu_features, i32 0, i32 0), align 4
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

declare dso_local i32 @_sodium_runtime_arm_cpu_features(%struct.TYPE_4__*) #1

declare dso_local i32 @_sodium_runtime_intel_cpu_features(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
