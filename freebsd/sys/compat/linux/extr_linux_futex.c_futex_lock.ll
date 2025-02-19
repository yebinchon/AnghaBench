; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_futex.c_futex_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_futex.c_futex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@sys_futex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"futex_lock uaddr %p ref %d shared %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex*)* @futex_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_lock(%struct.futex* %0) #0 {
  %2 = alloca %struct.futex*, align 8
  store %struct.futex* %0, %struct.futex** %2, align 8
  %3 = load i32, i32* @sys_futex, align 4
  %4 = load %struct.futex*, %struct.futex** %2, align 8
  %5 = getelementptr inbounds %struct.futex, %struct.futex* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.futex*, %struct.futex** %2, align 8
  %8 = getelementptr inbounds %struct.futex, %struct.futex* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.futex*, %struct.futex** %2, align 8
  %11 = getelementptr inbounds %struct.futex, %struct.futex* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LINUX_CTR3(i32 %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %13)
  %15 = load %struct.futex*, %struct.futex** %2, align 8
  %16 = call i32 @FUTEX_ASSERT_UNLOCKED(%struct.futex* %15)
  %17 = load %struct.futex*, %struct.futex** %2, align 8
  %18 = call i32 @FUTEX_LOCK(%struct.futex* %17)
  ret void
}

declare dso_local i32 @LINUX_CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @FUTEX_ASSERT_UNLOCKED(%struct.futex*) #1

declare dso_local i32 @FUTEX_LOCK(%struct.futex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
