; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_setrlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_setrlimit_args = type { i64, i32 }
%struct.rlimit = type { i8*, i8* }
%struct.l_rlimit = type { i64, i64 }

@LINUX_RLIM_NLIMITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@linux_to_bsd_resource = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_setrlimit(%struct.thread* %0, %struct.linux_setrlimit_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_setrlimit_args*, align 8
  %6 = alloca %struct.rlimit, align 8
  %7 = alloca %struct.l_rlimit, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_setrlimit_args* %1, %struct.linux_setrlimit_args** %5, align 8
  %10 = load %struct.linux_setrlimit_args*, %struct.linux_setrlimit_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_setrlimit_args, %struct.linux_setrlimit_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LINUX_RLIM_NLIMITS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32*, i32** @linux_to_bsd_resource, align 8
  %19 = load %struct.linux_setrlimit_args*, %struct.linux_setrlimit_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_setrlimit_args, %struct.linux_setrlimit_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.linux_setrlimit_args*, %struct.linux_setrlimit_args** %5, align 8
  %30 = getelementptr inbounds %struct.linux_setrlimit_args, %struct.linux_setrlimit_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @copyin(i32 %31, %struct.l_rlimit* %7, i32 16)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.l_rlimit, %struct.l_rlimit* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.l_rlimit, %struct.l_rlimit* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @kern_setrlimit(%struct.thread* %46, i32 %47, %struct.rlimit* %6)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %35, %26, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @copyin(i32, %struct.l_rlimit*, i32) #1

declare dso_local i32 @kern_setrlimit(%struct.thread*, i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
