; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_poll_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_poll_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_file = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LINUX_KQ_FLAG_NEED_READ = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_NEED_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_poll_wakeup(%struct.linux_file* %0) #0 {
  %2 = alloca %struct.linux_file*, align 8
  store %struct.linux_file* %0, %struct.linux_file** %2, align 8
  %3 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %4 = icmp eq %struct.linux_file* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %8 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %7, i32 0, i32 2
  %9 = call i32 @selwakeup(%struct.TYPE_2__* %8)
  %10 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %11 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @LINUX_KQ_FLAG_NEED_READ, align 4
  %14 = load i32, i32* @LINUX_KQ_FLAG_NEED_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %17 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %21 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @KNOTE_LOCKED(i32* %22, i32 1)
  %24 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %25 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
