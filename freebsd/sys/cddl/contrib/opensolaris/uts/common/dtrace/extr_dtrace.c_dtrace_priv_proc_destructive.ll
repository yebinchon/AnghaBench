; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_priv_proc_destructive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_priv_proc_destructive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG = common dso_local global i32 0, align 4
@CPU_DTRACE_UPRIV = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_9__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @dtrace_priv_proc_destructive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_priv_proc_destructive(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i64 @dtrace_priv_proc_common_zone(%struct.TYPE_8__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %38

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i64 @dtrace_priv_proc_common_user(%struct.TYPE_8__* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i64 (...) @dtrace_priv_proc_common_nocd()
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33, %28
  store i32 1, i32* %2, align 4
  br label %46

38:                                               ; preds = %36, %27, %17
  %39 = load i32, i32* @CPU_DTRACE_UPRIV, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpu_core, align 8
  %41 = load i64, i64* @curcpu, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @dtrace_priv_proc_common_zone(%struct.TYPE_8__*) #1

declare dso_local i64 @dtrace_priv_proc_common_user(%struct.TYPE_8__*) #1

declare dso_local i64 @dtrace_priv_proc_common_nocd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
