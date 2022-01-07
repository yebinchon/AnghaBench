; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.freebsd32_kevent_args = type { i32, i32, i32, %struct.kevent32*, i64, %struct.kevent32* }
%struct.kevent32 = type { i32 }
%struct.timespec32 = type { i32 }
%struct.timespec = type { i32 }
%struct.kevent_copyops = type { i32, i32, %struct.freebsd32_kevent_args* }

@freebsd32_kevent_copyin = common dso_local global i32 0, align 4
@freebsd32_kevent_copyout = common dso_local global i32 0, align 4
@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4
@KTR_STRUCT_ARRAY = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_kevent(%struct.thread* %0, %struct.freebsd32_kevent_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_kevent_args*, align 8
  %6 = alloca %struct.timespec32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.kevent_copyops, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_kevent_args* %1, %struct.freebsd32_kevent_args** %5, align 8
  %11 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %9, i32 0, i32 0
  %12 = load i32, i32* @freebsd32_kevent_copyin, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %9, i32 0, i32 1
  %14 = load i32, i32* @freebsd32_kevent_copyout, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %9, i32 0, i32 2
  %16 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  store %struct.freebsd32_kevent_args* %16, %struct.freebsd32_kevent_args** %15, align 8
  %17 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  %23 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @copyin(i64 %24, %struct.timespec32* %6, i32 4)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %21
  %31 = load i32, i32* @tv_sec, align 4
  %32 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CP(i32 %33, i32 %35, i32 %31)
  %37 = load i32, i32* @tv_nsec, align 4
  %38 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CP(i32 %39, i32 %41, i32 %37)
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  br label %44

43:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  %47 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  %50 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %5, align 8
  %53 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.timespec*, %struct.timespec** %8, align 8
  %56 = call i32 @kern_kevent(%struct.thread* %45, i32 %48, i32 %51, i32 %54, %struct.kevent_copyops* %9, %struct.timespec* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %44, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @copyin(i64, %struct.timespec32*, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @kern_kevent(%struct.thread*, i32, i32, i32, %struct.kevent_copyops*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
