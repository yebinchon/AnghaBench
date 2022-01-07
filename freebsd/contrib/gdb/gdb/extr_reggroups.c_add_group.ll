; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_add_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_add_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroups = type { %struct.reggroup_el** }
%struct.reggroup = type { i32 }
%struct.reggroup_el = type { %struct.reggroup_el*, %struct.reggroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reggroups*, %struct.reggroup*, %struct.reggroup_el*)* @add_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_group(%struct.reggroups* %0, %struct.reggroup* %1, %struct.reggroup_el* %2) #0 {
  %4 = alloca %struct.reggroups*, align 8
  %5 = alloca %struct.reggroup*, align 8
  %6 = alloca %struct.reggroup_el*, align 8
  store %struct.reggroups* %0, %struct.reggroups** %4, align 8
  store %struct.reggroup* %1, %struct.reggroup** %5, align 8
  store %struct.reggroup_el* %2, %struct.reggroup_el** %6, align 8
  %7 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %8 = icmp ne %struct.reggroup* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %12 = load %struct.reggroup_el*, %struct.reggroup_el** %6, align 8
  %13 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %12, i32 0, i32 1
  store %struct.reggroup* %11, %struct.reggroup** %13, align 8
  %14 = load %struct.reggroup_el*, %struct.reggroup_el** %6, align 8
  %15 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %14, i32 0, i32 0
  store %struct.reggroup_el* null, %struct.reggroup_el** %15, align 8
  %16 = load %struct.reggroup_el*, %struct.reggroup_el** %6, align 8
  %17 = load %struct.reggroups*, %struct.reggroups** %4, align 8
  %18 = getelementptr inbounds %struct.reggroups, %struct.reggroups* %17, i32 0, i32 0
  %19 = load %struct.reggroup_el**, %struct.reggroup_el*** %18, align 8
  store %struct.reggroup_el* %16, %struct.reggroup_el** %19, align 8
  %20 = load %struct.reggroup_el*, %struct.reggroup_el** %6, align 8
  %21 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %20, i32 0, i32 0
  %22 = load %struct.reggroups*, %struct.reggroups** %4, align 8
  %23 = getelementptr inbounds %struct.reggroups, %struct.reggroups* %22, i32 0, i32 0
  store %struct.reggroup_el** %21, %struct.reggroup_el*** %23, align 8
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
