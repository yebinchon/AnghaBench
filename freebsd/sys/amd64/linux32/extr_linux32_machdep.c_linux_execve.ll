; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_execve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_execve_args = type { i32, i32, i32 }
%struct.image_args = type { i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_execve(%struct.thread* %0, %struct.linux_execve_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_execve_args*, align 8
  %5 = alloca %struct.image_args, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_execve_args* %1, %struct.linux_execve_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.linux_execve_args*, %struct.linux_execve_args** %4, align 8
  %10 = getelementptr inbounds %struct.linux_execve_args, %struct.linux_execve_args* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @LCONVPATHEXIST(%struct.thread* %8, i32 %11, i8** %6)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @UIO_SYSSPACE, align 4
  %15 = load %struct.linux_execve_args*, %struct.linux_execve_args** %4, align 8
  %16 = getelementptr inbounds %struct.linux_execve_args, %struct.linux_execve_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.linux_execve_args*, %struct.linux_execve_args** %4, align 8
  %19 = getelementptr inbounds %struct.linux_execve_args, %struct.linux_execve_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @freebsd32_exec_copyin_args(%struct.image_args* %5, i8* %13, i32 %14, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = call i32 @free(i8* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = call i32 @linux_common_execve(%struct.thread* %28, %struct.image_args* %5)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @LCONVPATHEXIST(%struct.thread*, i32, i8**) #1

declare dso_local i32 @freebsd32_exec_copyin_args(%struct.image_args*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @linux_common_execve(%struct.thread*, %struct.image_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
