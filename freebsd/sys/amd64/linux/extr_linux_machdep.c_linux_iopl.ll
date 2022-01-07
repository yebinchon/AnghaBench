; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_iopl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_iopl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.linux_iopl_args = type { i32 }

@iopl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRIV_IO = common dso_local global i32 0, align 4
@PSL_IOPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_iopl(%struct.thread* %0, %struct.linux_iopl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_iopl_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_iopl_args* %1, %struct.linux_iopl_args** %5, align 8
  %7 = load i32, i32* @iopl, align 4
  %8 = call i32 @LINUX_CTR(i32 %7)
  %9 = load %struct.linux_iopl_args*, %struct.linux_iopl_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_iopl_args, %struct.linux_iopl_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load i32, i32* @PRIV_IO, align 4
  %18 = call i32 @priv_check(%struct.thread* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %15
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @securelevel_gt(i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %22
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PSL_IOPL, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.linux_iopl_args*, %struct.linux_iopl_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_iopl_args, %struct.linux_iopl_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PSL_IOPL, align 4
  %43 = sdiv i32 %42, 3
  %44 = mul nsw i32 %41, %43
  %45 = or i32 %38, %44
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %30, %28, %20, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @LINUX_CTR(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @securelevel_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
