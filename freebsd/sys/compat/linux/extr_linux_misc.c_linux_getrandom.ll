; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getrandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.linux_getrandom_args = type { i32, i64, i32 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, %struct.iovec* }
%struct.iovec = type { i64, i32 }

@LINUX_GRND_NONBLOCK = common dso_local global i32 0, align 4
@LINUX_GRND_RANDOM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getrandom(%struct.thread* %0, %struct.linux_getrandom_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getrandom_args*, align 8
  %6 = alloca %struct.uio, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getrandom_args* %1, %struct.linux_getrandom_args** %5, align 8
  %9 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LINUX_GRND_NONBLOCK, align 4
  %13 = load i32, i32* @LINUX_GRND_RANDOM, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @INT_MAX, align 8
  %28 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %32 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 5
  store %struct.iovec* %7, %struct.iovec** %39, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @UIO_USERSPACE, align 4
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @UIO_READ, align 4
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 2
  store %struct.thread* %48, %struct.thread** %49, align 8
  %50 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LINUX_GRND_NONBLOCK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @read_random_uio(%struct.uio* %6, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %30
  %59 = load %struct.linux_getrandom_args*, %struct.linux_getrandom_args** %5, align 8
  %60 = getelementptr inbounds %struct.linux_getrandom_args, %struct.linux_getrandom_args* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 %64, i64* %68, align 8
  br label %69

69:                                               ; preds = %58, %30
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @read_random_uio(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
