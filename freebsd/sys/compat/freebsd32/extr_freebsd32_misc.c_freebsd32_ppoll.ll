; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_ppoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_ppoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_ppoll_args = type { i32, i32, i32*, i32* }
%struct.timespec32 = type { i32 }
%struct.timespec = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_ppoll(%struct.thread* %0, %struct.freebsd32_ppoll_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_ppoll_args*, align 8
  %6 = alloca %struct.timespec32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec32, align 4
  %10 = alloca %struct.timespec32*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_ppoll_args* %1, %struct.freebsd32_ppoll_args** %5, align 8
  %12 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %13 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @copyin(i32* %19, %struct.timespec32* %6, i32 4)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %16
  %26 = load i32, i32* @tv_sec, align 4
  %27 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CP(i32 %28, i32 %30, i32 %26)
  %32 = load i32, i32* @tv_nsec, align 4
  %33 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CP(i32 %34, i32 %36, i32 %32)
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  br label %39

38:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %41 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %46 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @copyin(i32* %47, %struct.timespec32* %9, i32 4)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %44
  store %struct.timespec32* %9, %struct.timespec32** %10, align 8
  br label %55

54:                                               ; preds = %39
  store %struct.timespec32* null, %struct.timespec32** %10, align 8
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %58 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.freebsd32_ppoll_args*, %struct.freebsd32_ppoll_args** %5, align 8
  %61 = getelementptr inbounds %struct.freebsd32_ppoll_args, %struct.freebsd32_ppoll_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.timespec*, %struct.timespec** %8, align 8
  %64 = load %struct.timespec32*, %struct.timespec32** %10, align 8
  %65 = call i32 @kern_poll(%struct.thread* %56, i32 %59, i32 %62, %struct.timespec* %63, %struct.timespec32* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %51, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @copyin(i32*, %struct.timespec32*, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @kern_poll(%struct.thread*, i32, i32, %struct.timespec*, %struct.timespec32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
