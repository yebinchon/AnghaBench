; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_grp_test.c_build_grp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_grp_test.c_build_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32, i32, i32, i32 }

@grpName = common dso_local global i32 0, align 4
@grpPasswd = common dso_local global i32 0, align 4
@grpGID = common dso_local global i32 0, align 4
@grpMems = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group*)* @build_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_grp(%struct.group* %0) #0 {
  %2 = alloca %struct.group*, align 8
  store %struct.group* %0, %struct.group** %2, align 8
  %3 = load i32, i32* @grpName, align 4
  %4 = load %struct.group*, %struct.group** %2, align 8
  %5 = getelementptr inbounds %struct.group, %struct.group* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @grpPasswd, align 4
  %7 = load %struct.group*, %struct.group** %2, align 8
  %8 = getelementptr inbounds %struct.group, %struct.group* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @grpGID, align 4
  %10 = load %struct.group*, %struct.group** %2, align 8
  %11 = getelementptr inbounds %struct.group, %struct.group* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @grpMems, align 4
  %13 = load %struct.group*, %struct.group** %2, align 8
  %14 = getelementptr inbounds %struct.group, %struct.group* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
