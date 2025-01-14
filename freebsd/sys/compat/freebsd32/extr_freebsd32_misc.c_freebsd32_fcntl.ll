; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fcntl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_fcntl_args = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_fcntl(%struct.thread* %0, %struct.freebsd32_fcntl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_fcntl_args*, align 8
  %5 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_fcntl_args* %1, %struct.freebsd32_fcntl_args** %4, align 8
  %6 = load %struct.freebsd32_fcntl_args*, %struct.freebsd32_fcntl_args** %4, align 8
  %7 = getelementptr inbounds %struct.freebsd32_fcntl_args, %struct.freebsd32_fcntl_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %9
    i32 130, label %9
    i32 136, label %9
    i32 132, label %9
    i32 131, label %9
    i32 135, label %9
    i32 134, label %9
    i32 133, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load %struct.freebsd32_fcntl_args*, %struct.freebsd32_fcntl_args** %4, align 8
  %11 = getelementptr inbounds %struct.freebsd32_fcntl_args, %struct.freebsd32_fcntl_args* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.freebsd32_fcntl_args*, %struct.freebsd32_fcntl_args** %4, align 8
  %17 = getelementptr inbounds %struct.freebsd32_fcntl_args, %struct.freebsd32_fcntl_args* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = load %struct.freebsd32_fcntl_args*, %struct.freebsd32_fcntl_args** %4, align 8
  %22 = getelementptr inbounds %struct.freebsd32_fcntl_args, %struct.freebsd32_fcntl_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.freebsd32_fcntl_args*, %struct.freebsd32_fcntl_args** %4, align 8
  %25 = getelementptr inbounds %struct.freebsd32_fcntl_args, %struct.freebsd32_fcntl_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @kern_fcntl_freebsd(%struct.thread* %20, i32 %23, i32 %26, i64 %27)
  ret i32 %28
}

declare dso_local i32 @kern_fcntl_freebsd(%struct.thread*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
