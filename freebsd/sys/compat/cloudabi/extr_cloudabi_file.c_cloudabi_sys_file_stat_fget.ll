; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_fget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_fget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_stat_fget_args = type { i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }

@cap_fstat_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_stat_fget(%struct.thread* %0, %struct.cloudabi_sys_file_stat_fget_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_stat_fget_args*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_stat_fget_args* %1, %struct.cloudabi_sys_file_stat_fget_args** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 4)
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = load %struct.cloudabi_sys_file_stat_fget_args*, %struct.cloudabi_sys_file_stat_fget_args** %5, align 8
  %14 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fget_args, %struct.cloudabi_sys_file_stat_fget_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fget(%struct.thread* %12, i32 %15, i32* @cap_fstat_rights, %struct.file** %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @fo_stat(%struct.file* %22, %struct.stat* %6, i32 %25, %struct.thread* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @fdrop(%struct.file* %31, %struct.thread* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %21
  %36 = load %struct.file*, %struct.file** %8, align 8
  %37 = call i32 @cloudabi_convert_filetype(%struct.file* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  %41 = call i32 @convert_stat(%struct.stat* %6, %struct.TYPE_5__* %7)
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.cloudabi_sys_file_stat_fget_args*, %struct.cloudabi_sys_file_stat_fget_args** %5, align 8
  %45 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fget_args, %struct.cloudabi_sys_file_stat_fget_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @copyout(%struct.TYPE_5__* %7, i32 %46, i32 4)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %35, %30, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_stat(%struct.file*, %struct.stat*, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @cloudabi_convert_filetype(%struct.file*) #1

declare dso_local i32 @convert_stat(%struct.stat*, %struct.TYPE_5__*) #1

declare dso_local i32 @copyout(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
