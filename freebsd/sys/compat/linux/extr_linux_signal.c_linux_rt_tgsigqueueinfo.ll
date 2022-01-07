; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_tgsigqueueinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_tgsigqueueinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_rt_tgsigqueueinfo_args = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_rt_tgsigqueueinfo(%struct.thread* %0, %struct.linux_rt_tgsigqueueinfo_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_rt_tgsigqueueinfo_args*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_rt_tgsigqueueinfo_args* %1, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %11 = load %struct.linux_rt_tgsigqueueinfo_args*, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_rt_tgsigqueueinfo_args, %struct.linux_rt_tgsigqueueinfo_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LINUX_SIG_VALID(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.linux_rt_tgsigqueueinfo_args*, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_rt_tgsigqueueinfo_args, %struct.linux_rt_tgsigqueueinfo_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @copyin(i32 %21, %struct.TYPE_4__* %6, i32 8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %27
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = load %struct.linux_rt_tgsigqueueinfo_args*, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_rt_tgsigqueueinfo_args, %struct.linux_rt_tgsigqueueinfo_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.linux_rt_tgsigqueueinfo_args*, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %39 = getelementptr inbounds %struct.linux_rt_tgsigqueueinfo_args, %struct.linux_rt_tgsigqueueinfo_args* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.thread* @linux_tdfind(%struct.thread* %34, i32 %37, i32 %40)
  store %struct.thread* %41, %struct.thread** %7, align 8
  %42 = load %struct.thread*, %struct.thread** %7, align 8
  %43 = icmp eq %struct.thread* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ESRCH, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %33
  %47 = load %struct.linux_rt_tgsigqueueinfo_args*, %struct.linux_rt_tgsigqueueinfo_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_rt_tgsigqueueinfo_args, %struct.linux_rt_tgsigqueueinfo_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @linux_to_bsd_signal(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = call i32 @ksiginfo_init(i32* %8)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @lsiginfo_to_ksiginfo(%struct.TYPE_4__* %6, i32* %8, i32 %52)
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = load %struct.thread*, %struct.thread** %7, align 8
  %56 = call i32 @linux_do_tkill(%struct.thread* %54, %struct.thread* %55, i32* %8)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %44, %31, %25, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @LINUX_SIG_VALID(i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_4__*, i32) #1

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i32, i32) #1

declare dso_local i32 @linux_to_bsd_signal(i32) #1

declare dso_local i32 @ksiginfo_init(i32*) #1

declare dso_local i32 @lsiginfo_to_ksiginfo(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @linux_do_tkill(%struct.thread*, %struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
