; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_raise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_5__*, %struct.proc* }
%struct.TYPE_5__ = type { i32 }
%struct.proc = type { i32 }
%struct.cloudabi_sys_proc_raise_args = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@cloudabi_sys_proc_raise.signals = internal constant [180 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153], align 16
@EINVAL = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_proc_raise(%struct.thread* %0, %struct.cloudabi_sys_proc_raise_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_proc_raise_args*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_proc_raise_args* %1, %struct.cloudabi_sys_proc_raise_args** %5, align 8
  %8 = load %struct.cloudabi_sys_proc_raise_args*, %struct.cloudabi_sys_proc_raise_args** %5, align 8
  %9 = getelementptr inbounds %struct.cloudabi_sys_proc_raise_args, %struct.cloudabi_sys_proc_raise_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @nitems(i32* getelementptr inbounds ([180 x i32], [180 x i32]* @cloudabi_sys_proc_raise.signals, i64 0, i64 0))
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.cloudabi_sys_proc_raise_args*, %struct.cloudabi_sys_proc_raise_args** %5, align 8
  %15 = getelementptr inbounds %struct.cloudabi_sys_proc_raise_args, %struct.cloudabi_sys_proc_raise_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [180 x i32], [180 x i32]* @cloudabi_sys_proc_raise.signals, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13, %2
  %21 = load %struct.cloudabi_sys_proc_raise_args*, %struct.cloudabi_sys_proc_raise_args** %5, align 8
  %22 = getelementptr inbounds %struct.cloudabi_sys_proc_raise_args, %struct.cloudabi_sys_proc_raise_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %13
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 1
  %33 = load %struct.proc*, %struct.proc** %32, align 8
  store %struct.proc* %33, %struct.proc** %7, align 8
  %34 = call i32 @ksiginfo_init(%struct.TYPE_6__* %6)
  %35 = load %struct.cloudabi_sys_proc_raise_args*, %struct.cloudabi_sys_proc_raise_args** %5, align 8
  %36 = getelementptr inbounds %struct.cloudabi_sys_proc_raise_args, %struct.cloudabi_sys_proc_raise_args* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [180 x i32], [180 x i32]* @cloudabi_sys_proc_raise.signals, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SI_USER, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.proc*, %struct.proc** %7, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.proc*, %struct.proc** %7, align 8
  %54 = call i32 @PROC_LOCK(%struct.proc* %53)
  %55 = load %struct.proc*, %struct.proc** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pksignal(%struct.proc* %55, i32 %57, %struct.TYPE_6__* %6)
  %59 = load %struct.proc*, %struct.proc** %7, align 8
  %60 = call i32 @PROC_UNLOCK(%struct.proc* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %30, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_6__*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @pksignal(%struct.proc*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
