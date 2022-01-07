; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_getrlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_getrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64 }

@memory_limit = common dso_local global i64 0, align 8
@next_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrlimit(%struct.rlimit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit*, align 8
  store %struct.rlimit* %0, %struct.rlimit** %3, align 8
  %4 = load i64, i64* @memory_limit, align 8
  %5 = load i64, i64* @next_free, align 8
  %6 = sub nsw i64 %4, %5
  %7 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %8 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
