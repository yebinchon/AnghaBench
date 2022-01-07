; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i32, i64 }
%struct.knote = type { i32, %struct.linux_file*, i32* }
%struct.linux_file = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_HAS_READ = common dso_local global i32 0, align 4
@linux_dev_kqfiltops_read = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_HAS_WRITE = common dso_local global i32 0, align 4
@linux_dev_kqfiltops_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.knote*)* @linux_file_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.linux_file*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.linux_file*
  store %struct.linux_file* %13, %struct.linux_file** %6, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %18 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %20 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %29 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.knote*, %struct.knote** %5, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %66 [
    i32 129, label %34
    i32 128, label %50
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* @LINUX_KQ_FLAG_HAS_READ, align 4
  %36 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %37 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.knote*, %struct.knote** %5, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 2
  store i32* @linux_dev_kqfiltops_read, i32** %41, align 8
  %42 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %43 = load %struct.knote*, %struct.knote** %5, align 8
  %44 = getelementptr inbounds %struct.knote, %struct.knote* %43, i32 0, i32 1
  store %struct.linux_file* %42, %struct.linux_file** %44, align 8
  %45 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %46 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.knote*, %struct.knote** %5, align 8
  %49 = call i32 @knlist_add(i32* %47, %struct.knote* %48, i32 1)
  store i32 0, i32* %8, align 4
  br label %68

50:                                               ; preds = %27
  %51 = load i32, i32* @LINUX_KQ_FLAG_HAS_WRITE, align 4
  %52 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %53 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.knote*, %struct.knote** %5, align 8
  %57 = getelementptr inbounds %struct.knote, %struct.knote* %56, i32 0, i32 2
  store i32* @linux_dev_kqfiltops_write, i32** %57, align 8
  %58 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %59 = load %struct.knote*, %struct.knote** %5, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 1
  store %struct.linux_file* %58, %struct.linux_file** %60, align 8
  %61 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %62 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.knote*, %struct.knote** %5, align 8
  %65 = call i32 @knlist_add(i32* %63, %struct.knote* %64, i32 1)
  store i32 0, i32* %8, align 4
  br label %68

66:                                               ; preds = %27
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %50, %34
  %69 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %70 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.thread*, %struct.thread** %7, align 8
  %76 = call i32 @linux_set_current(%struct.thread* %75)
  %77 = load %struct.linux_file*, %struct.linux_file** %6, align 8
  %78 = load i32, i32* @LINUX_KQ_FLAG_HAS_READ, align 4
  %79 = load i32, i32* @LINUX_KQ_FLAG_HAS_WRITE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @linux_file_kqfilter_poll(%struct.linux_file* %77, i32 %80)
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @linux_file_kqfilter_poll(%struct.linux_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
