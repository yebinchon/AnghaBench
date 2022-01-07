; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_renameat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_renameat_args = type { i32, i32, i32, i32 }
%struct.linux_renameat2_args = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_renameat(%struct.thread* %0, %struct.linux_renameat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_renameat_args*, align 8
  %5 = alloca %struct.linux_renameat2_args, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_renameat_args* %1, %struct.linux_renameat_args** %4, align 8
  %6 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %5, i32 0, i32 1
  %8 = load %struct.linux_renameat_args*, %struct.linux_renameat_args** %4, align 8
  %9 = getelementptr inbounds %struct.linux_renameat_args, %struct.linux_renameat_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %5, i32 0, i32 2
  %12 = load %struct.linux_renameat_args*, %struct.linux_renameat_args** %4, align 8
  %13 = getelementptr inbounds %struct.linux_renameat_args, %struct.linux_renameat_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %5, i32 0, i32 3
  %16 = load %struct.linux_renameat_args*, %struct.linux_renameat_args** %4, align 8
  %17 = getelementptr inbounds %struct.linux_renameat_args, %struct.linux_renameat_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %5, i32 0, i32 4
  %20 = load %struct.linux_renameat_args*, %struct.linux_renameat_args** %4, align 8
  %21 = getelementptr inbounds %struct.linux_renameat_args, %struct.linux_renameat_args* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = call i32 @linux_renameat2(%struct.thread* %23, %struct.linux_renameat2_args* %5)
  ret i32 %24
}

declare dso_local i32 @linux_renameat2(%struct.thread*, %struct.linux_renameat2_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
