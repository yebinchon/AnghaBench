; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64fbsd-tdep.c_sparc64fbsd_supply_fpregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64fbsd-tdep.c_sparc64fbsd_supply_fpregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset = type { i32 }
%struct.regcache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regset*, %struct.regcache*, i32, i8*, i64)* @sparc64fbsd_supply_fpregset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64fbsd_supply_fpregset(%struct.regset* %0, %struct.regcache* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.regset*, align 8
  %7 = alloca %struct.regcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.regset* %0, %struct.regset** %6, align 8
  store %struct.regcache* %1, %struct.regcache** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.regcache*, %struct.regcache** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @sparc64_supply_fpregset(%struct.regcache* %11, i32 %12, i8* %13)
  ret void
}

declare dso_local i32 @sparc64_supply_fpregset(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
