; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_sys_sigreturn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_sys_sigreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigreturn_args = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigreturn(%struct.thread* %0, %struct.sigreturn_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigreturn_args*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigreturn_args* %1, %struct.sigreturn_args** %5, align 8
  %8 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %9 = icmp eq %struct.sigreturn_args* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EFAULT, align 4
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %14 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @copyin(i32 %15, %struct.TYPE_3__* %6, i32 8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EFAULT, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %23 = call i32 @set_mcontext(%struct.thread* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %31 = call i32 @set_fpcontext(%struct.thread* %29, i32* %30)
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = load i32, i32* @SIG_SETMASK, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %35 = call i32 @kern_sigprocmask(%struct.thread* %32, i32 %33, i32* %34, i32* null, i32 0)
  %36 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %26, %18, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @copyin(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @set_mcontext(%struct.thread*, i32*) #1

declare dso_local i32 @set_fpcontext(%struct.thread*, i32*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
