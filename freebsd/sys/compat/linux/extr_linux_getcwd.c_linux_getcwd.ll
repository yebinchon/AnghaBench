; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_getcwd.c_linux_getcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_getcwd.c_linux_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_getcwd_args = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@LINUX_PATH_MAX = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getcwd(%struct.thread* %0, %struct.linux_getcwd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getcwd_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getcwd_args* %1, %struct.linux_getcwd_args** %5, align 8
  %9 = load %struct.linux_getcwd_args*, %struct.linux_getcwd_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_getcwd_args, %struct.linux_getcwd_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ERANGE, align 4
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load i32, i32* @LINUX_PATH_MAX, align 4
  %17 = load i32, i32* @M_LINUX, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i8* @malloc(i32 %16, i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @UIO_SYSSPACE, align 4
  %23 = load %struct.linux_getcwd_args*, %struct.linux_getcwd_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_getcwd_args, %struct.linux_getcwd_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LINUX_PATH_MAX, align 4
  %27 = call i32 @kern___getcwd(%struct.thread* %20, i8* %21, i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %15
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.linux_getcwd_args*, %struct.linux_getcwd_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_getcwd_args, %struct.linux_getcwd_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @copyout(i8* %34, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %30
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @M_LINUX, align 4
  %52 = call i32 @free(i8* %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern___getcwd(%struct.thread*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
