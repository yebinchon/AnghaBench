; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_posix_fallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_posix_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_posix_fallocate_args = type { i32, i32, i32 }

@off_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_posix_fallocate(%struct.thread* %0, %struct.freebsd32_posix_fallocate_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_posix_fallocate_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_posix_fallocate_args* %1, %struct.freebsd32_posix_fallocate_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = load %struct.freebsd32_posix_fallocate_args*, %struct.freebsd32_posix_fallocate_args** %4, align 8
  %8 = getelementptr inbounds %struct.freebsd32_posix_fallocate_args, %struct.freebsd32_posix_fallocate_args* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @off_t, align 4
  %11 = load %struct.freebsd32_posix_fallocate_args*, %struct.freebsd32_posix_fallocate_args** %4, align 8
  %12 = getelementptr inbounds %struct.freebsd32_posix_fallocate_args, %struct.freebsd32_posix_fallocate_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PAIR32TO64(i32 %10, i32 %13)
  %15 = load i32, i32* @off_t, align 4
  %16 = load %struct.freebsd32_posix_fallocate_args*, %struct.freebsd32_posix_fallocate_args** %4, align 8
  %17 = getelementptr inbounds %struct.freebsd32_posix_fallocate_args, %struct.freebsd32_posix_fallocate_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PAIR32TO64(i32 %15, i32 %18)
  %20 = call i32 @kern_posix_fallocate(%struct.thread* %6, i32 %9, i32 %14, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @kern_posix_error(%struct.thread* %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @kern_posix_fallocate(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @PAIR32TO64(i32, i32) #1

declare dso_local i32 @kern_posix_error(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
