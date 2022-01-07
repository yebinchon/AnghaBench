; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.linux_file = type { i32 }
%struct.file_operations = type { i32 (%struct.linux_file*, i32)* }
%struct.linux_cdev = type { i32 }

@LINUX_POLL_TABLE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @linux_file_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_poll(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.linux_file*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.linux_cdev*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.linux_file*
  store %struct.linux_file* %16, %struct.linux_file** %9, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.linux_file*, %struct.linux_file** %9, align 8
  %21 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.thread*, %struct.thread** %8, align 8
  %23 = call i32 @linux_set_current(%struct.thread* %22)
  %24 = load %struct.linux_file*, %struct.linux_file** %9, align 8
  %25 = call i32 @linux_get_fop(%struct.linux_file* %24, %struct.file_operations** %10, %struct.linux_cdev** %11)
  %26 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %27 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %26, i32 0, i32 0
  %28 = load i32 (%struct.linux_file*, i32)*, i32 (%struct.linux_file*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.linux_file*, i32)* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %34 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %33, i32 0, i32 0
  %35 = load i32 (%struct.linux_file*, i32)*, i32 (%struct.linux_file*, i32)** %34, align 8
  %36 = load %struct.linux_file*, %struct.linux_file** %9, align 8
  %37 = load i32, i32* @LINUX_POLL_TABLE_NORMAL, align 4
  %38 = call i32 %35(%struct.linux_file* %36, i32 %37)
  %39 = call i32 @OPW(%struct.file* %31, %struct.thread* %32, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %12, align 4
  br label %43

42:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.linux_cdev*, %struct.linux_cdev** %11, align 8
  %45 = call i32 @linux_drop_fop(%struct.linux_cdev* %44)
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @OPW(%struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
