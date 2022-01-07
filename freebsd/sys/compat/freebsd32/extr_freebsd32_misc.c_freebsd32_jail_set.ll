; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_jail_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_jail_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_jail_set_args = type { i32, i32, i32 }
%struct.uio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_jail_set(%struct.thread* %0, %struct.freebsd32_jail_set_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_jail_set_args*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_jail_set_args* %1, %struct.freebsd32_jail_set_args** %5, align 8
  %8 = load %struct.freebsd32_jail_set_args*, %struct.freebsd32_jail_set_args** %5, align 8
  %9 = getelementptr inbounds %struct.freebsd32_jail_set_args, %struct.freebsd32_jail_set_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.freebsd32_jail_set_args*, %struct.freebsd32_jail_set_args** %5, align 8
  %17 = getelementptr inbounds %struct.freebsd32_jail_set_args, %struct.freebsd32_jail_set_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.freebsd32_jail_set_args*, %struct.freebsd32_jail_set_args** %5, align 8
  %20 = getelementptr inbounds %struct.freebsd32_jail_set_args, %struct.freebsd32_jail_set_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @freebsd32_copyinuio(i32 %18, i32 %21, %struct.uio** %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %15
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = load %struct.freebsd32_jail_set_args*, %struct.freebsd32_jail_set_args** %5, align 8
  %31 = getelementptr inbounds %struct.freebsd32_jail_set_args, %struct.freebsd32_jail_set_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kern_jail_set(%struct.thread* %28, %struct.uio* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = load i32, i32* @M_IOV, align 4
  %36 = call i32 @free(%struct.uio* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %25, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @freebsd32_copyinuio(i32, i32, %struct.uio**) #1

declare dso_local i32 @kern_jail_set(%struct.thread*, %struct.uio*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
