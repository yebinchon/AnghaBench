; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_kqfilter_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_kqfilter_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_file = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.file_operations = type { i32 (%struct.linux_file*, i32*)* }
%struct.linux_cdev = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@LINUX_KQ_FLAG_NEED_READ = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_NEED_WRITE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_file*, i32)* @linux_file_kqfilter_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_file_kqfilter_poll(%struct.linux_file* %0, i32 %1) #0 {
  %3 = alloca %struct.linux_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca %struct.linux_cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.linux_file* %0, %struct.linux_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %10 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %5, align 8
  %18 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %19 = call i32 @linux_get_fop(%struct.linux_file* %18, %struct.file_operations** %6, %struct.linux_cdev** %7)
  %20 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %21 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %25 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %24, i32 0, i32 0
  %26 = load i32 (%struct.linux_file*, i32*)*, i32 (%struct.linux_file*, i32*)** %25, align 8
  %27 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %28 = call i32 %26(%struct.linux_file* %27, i32* null)
  %29 = call i32 @OPW(i32 %22, %struct.thread* %23, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %31 = call i32 @linux_drop_fop(%struct.linux_cdev* %30)
  %32 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %33 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* @LINUX_KQ_FLAG_NEED_READ, align 4
  %36 = load i32, i32* @LINUX_KQ_FLAG_NEED_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %40 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @POLLIN, align 4
  %45 = load i32, i32* @POLLOUT, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %16
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @POLLIN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @LINUX_KQ_FLAG_NEED_READ, align 4
  %56 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %57 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @POLLOUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @LINUX_KQ_FLAG_NEED_WRITE, align 4
  %67 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %68 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %73 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @KNOTE_LOCKED(i32* %74, i32 0)
  br label %76

76:                                               ; preds = %71, %16
  %77 = load %struct.linux_file*, %struct.linux_file** %3, align 8
  %78 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %15
  ret void
}

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @OPW(i32, %struct.thread*, i32) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
