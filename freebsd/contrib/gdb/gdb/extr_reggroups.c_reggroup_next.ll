; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_reggroup_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_reggroup_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroups = type { %struct.reggroup_el* }
%struct.reggroup_el = type { %struct.reggroup*, %struct.reggroup_el* }
%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@reggroups_data = common dso_local global i32 0, align 4
@default_groups = common dso_local global %struct.reggroups zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reggroup* @reggroup_next(%struct.gdbarch* %0, %struct.reggroup* %1) #0 {
  %3 = alloca %struct.reggroup*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.reggroup*, align 8
  %6 = alloca %struct.reggroups*, align 8
  %7 = alloca %struct.reggroup_el*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.reggroup* %1, %struct.reggroup** %5, align 8
  %8 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %9 = load i32, i32* @reggroups_data, align 4
  %10 = call %struct.reggroups* @gdbarch_data(%struct.gdbarch* %8, i32 %9)
  store %struct.reggroups* %10, %struct.reggroups** %6, align 8
  %11 = load %struct.reggroups*, %struct.reggroups** %6, align 8
  %12 = icmp ne %struct.reggroups* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.reggroups*, %struct.reggroups** %6, align 8
  %16 = getelementptr inbounds %struct.reggroups, %struct.reggroups* %15, i32 0, i32 0
  %17 = load %struct.reggroup_el*, %struct.reggroup_el** %16, align 8
  %18 = icmp eq %struct.reggroup_el* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.reggroups* @default_groups, %struct.reggroups** %6, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %22 = icmp eq %struct.reggroup* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.reggroups*, %struct.reggroups** %6, align 8
  %25 = getelementptr inbounds %struct.reggroups, %struct.reggroups* %24, i32 0, i32 0
  %26 = load %struct.reggroup_el*, %struct.reggroup_el** %25, align 8
  %27 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %26, i32 0, i32 0
  %28 = load %struct.reggroup*, %struct.reggroup** %27, align 8
  store %struct.reggroup* %28, %struct.reggroup** %3, align 8
  br label %60

29:                                               ; preds = %20
  %30 = load %struct.reggroups*, %struct.reggroups** %6, align 8
  %31 = getelementptr inbounds %struct.reggroups, %struct.reggroups* %30, i32 0, i32 0
  %32 = load %struct.reggroup_el*, %struct.reggroup_el** %31, align 8
  store %struct.reggroup_el* %32, %struct.reggroup_el** %7, align 8
  br label %33

33:                                               ; preds = %55, %29
  %34 = load %struct.reggroup_el*, %struct.reggroup_el** %7, align 8
  %35 = icmp ne %struct.reggroup_el* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load %struct.reggroup_el*, %struct.reggroup_el** %7, align 8
  %38 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %37, i32 0, i32 0
  %39 = load %struct.reggroup*, %struct.reggroup** %38, align 8
  %40 = load %struct.reggroup*, %struct.reggroup** %5, align 8
  %41 = icmp eq %struct.reggroup* %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.reggroup_el*, %struct.reggroup_el** %7, align 8
  %44 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %43, i32 0, i32 1
  %45 = load %struct.reggroup_el*, %struct.reggroup_el** %44, align 8
  %46 = icmp ne %struct.reggroup_el* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.reggroup_el*, %struct.reggroup_el** %7, align 8
  %49 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %48, i32 0, i32 1
  %50 = load %struct.reggroup_el*, %struct.reggroup_el** %49, align 8
  %51 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %50, i32 0, i32 0
  %52 = load %struct.reggroup*, %struct.reggroup** %51, align 8
  store %struct.reggroup* %52, %struct.reggroup** %3, align 8
  br label %60

53:                                               ; preds = %42
  store %struct.reggroup* null, %struct.reggroup** %3, align 8
  br label %60

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.reggroup_el*, %struct.reggroup_el** %7, align 8
  %57 = getelementptr inbounds %struct.reggroup_el, %struct.reggroup_el* %56, i32 0, i32 1
  %58 = load %struct.reggroup_el*, %struct.reggroup_el** %57, align 8
  store %struct.reggroup_el* %58, %struct.reggroup_el** %7, align 8
  br label %33

59:                                               ; preds = %33
  store %struct.reggroup* null, %struct.reggroup** %3, align 8
  br label %60

60:                                               ; preds = %59, %53, %47, %23
  %61 = load %struct.reggroup*, %struct.reggroup** %3, align 8
  ret %struct.reggroup* %61
}

declare dso_local %struct.reggroups* @gdbarch_data(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
