; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_symlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_symlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_symlinkat_args = type { i32, i32, i32 }

@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_symlinkat(%struct.thread* %0, %struct.linux_symlinkat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_symlinkat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_symlinkat_args* %1, %struct.linux_symlinkat_args** %5, align 8
  %10 = load %struct.linux_symlinkat_args*, %struct.linux_symlinkat_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_symlinkat_args, %struct.linux_symlinkat_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AT_FDCWD, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.linux_symlinkat_args*, %struct.linux_symlinkat_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_symlinkat_args, %struct.linux_symlinkat_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  store i32 %22, i32* %9, align 4
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.linux_symlinkat_args*, %struct.linux_symlinkat_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_symlinkat_args, %struct.linux_symlinkat_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LCONVPATHEXIST(%struct.thread* %23, i32 %26, i8** %6)
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.linux_symlinkat_args*, %struct.linux_symlinkat_args** %5, align 8
  %30 = getelementptr inbounds %struct.linux_symlinkat_args, %struct.linux_symlinkat_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UIO_USERSPACE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @linux_emul_convpath(%struct.thread* %28, i32 %31, i32 %32, i8** %7, i32 1, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @LFREEPATH(i8* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %21
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @UIO_SYSSPACE, align 4
  %47 = call i32 @kern_symlinkat(%struct.thread* %42, i8* %43, i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @LFREEPATH(i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @LFREEPATH(i8* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @LCONVPATHEXIST(%struct.thread*, i32, i8**) #1

declare dso_local i32 @linux_emul_convpath(%struct.thread*, i32, i32, i8**, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

declare dso_local i32 @kern_symlinkat(%struct.thread*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
