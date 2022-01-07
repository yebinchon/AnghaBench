; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getrlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_getrlimit_args = type { i64, i32 }
%struct.l_rlimit = type { i8*, i8* }
%struct.rlimit = type { i64, i64 }

@LINUX_RLIM_NLIMITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@linux_to_bsd_resource = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getrlimit(%struct.thread* %0, %struct.linux_getrlimit_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getrlimit_args*, align 8
  %6 = alloca %struct.l_rlimit, align 8
  %7 = alloca %struct.rlimit, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getrlimit_args* %1, %struct.linux_getrlimit_args** %5, align 8
  %9 = load %struct.linux_getrlimit_args*, %struct.linux_getrlimit_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_getrlimit_args, %struct.linux_getrlimit_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LINUX_RLIM_NLIMITS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32*, i32** @linux_to_bsd_resource, align 8
  %18 = load %struct.linux_getrlimit_args*, %struct.linux_getrlimit_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_getrlimit_args, %struct.linux_getrlimit_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @lim_rlimit(%struct.thread* %28, i32 %29, %struct.rlimit* %7)
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.l_rlimit, %struct.l_rlimit* %6, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.l_rlimit, %struct.l_rlimit* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.linux_getrlimit_args*, %struct.linux_getrlimit_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_getrlimit_args, %struct.linux_getrlimit_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @copyout(%struct.l_rlimit* %6, i32 %41, i32 16)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %25, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @lim_rlimit(%struct.thread*, i32, %struct.rlimit*) #1

declare dso_local i32 @copyout(%struct.l_rlimit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
