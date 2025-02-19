; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_tkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_tkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.linux_tkill_args = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SI_LWP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_tkill(%struct.thread* %0, %struct.linux_tkill_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_tkill_args*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_tkill_args* %1, %struct.linux_tkill_args** %5, align 8
  %9 = load %struct.linux_tkill_args*, %struct.linux_tkill_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_tkill_args, %struct.linux_tkill_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.linux_tkill_args*, %struct.linux_tkill_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_tkill_args, %struct.linux_tkill_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @LINUX_SIG_VALID(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.linux_tkill_args*, %struct.linux_tkill_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_tkill_args, %struct.linux_tkill_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @linux_to_bsd_signal(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.linux_tkill_args*, %struct.linux_tkill_args** %5, align 8
  %30 = getelementptr inbounds %struct.linux_tkill_args, %struct.linux_tkill_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.thread* @linux_tdfind(%struct.thread* %28, i64 %31, i32 -1)
  store %struct.thread* %32, %struct.thread** %6, align 8
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = icmp eq %struct.thread* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @ESRCH, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %23
  %38 = call i32 @ksiginfo_init(%struct.TYPE_8__* %7)
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @SI_LWP, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = load %struct.thread*, %struct.thread** %6, align 8
  %60 = call i32 @linux_do_tkill(%struct.thread* %58, %struct.thread* %59, %struct.TYPE_8__* %7)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %37, %35, %21, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @LINUX_SIG_VALID(i32) #1

declare dso_local i32 @linux_to_bsd_signal(i32) #1

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i64, i32) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

declare dso_local i32 @linux_do_tkill(%struct.thread*, %struct.thread*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
