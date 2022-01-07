; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_exit_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_exit_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_exit_group_args = type { i32 }

@exit_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thread(%d) (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_exit_group(%struct.thread* %0, %struct.linux_exit_group_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_exit_group_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_exit_group_args* %1, %struct.linux_exit_group_args** %5, align 8
  %6 = load i32, i32* @exit_group, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.linux_exit_group_args*, %struct.linux_exit_group_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_exit_group_args, %struct.linux_exit_group_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @LINUX_CTR2(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = load %struct.linux_exit_group_args*, %struct.linux_exit_group_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_exit_group_args, %struct.linux_exit_group_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @exit1(%struct.thread* %14, i32 %17, i32 0)
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @exit1(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
