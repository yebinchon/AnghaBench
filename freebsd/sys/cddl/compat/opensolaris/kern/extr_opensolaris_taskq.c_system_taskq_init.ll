; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_taskq.c_system_taskq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_taskq.c_system_taskq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"taskq_zone\00", align 1
@taskq_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"system_taskq\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@minclsyspri = common dso_local global i32 0, align 4
@system_taskq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @system_taskq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_taskq_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @uma_zcreate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %3, i32* @taskq_zone, align 4
  %4 = load i32, i32* @mp_ncpus, align 4
  %5 = load i32, i32* @minclsyspri, align 4
  %6 = call i32 @taskq_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 %5, i32 0, i32 0, i32 0)
  store i32 %6, i32* @system_taskq, align 4
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @taskq_create(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
