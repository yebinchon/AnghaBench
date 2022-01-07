; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_4__*, %struct.syscall_args, %struct.proc* }
%struct.TYPE_4__ = type { i64* }
%struct.syscall_args = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [43 x i8] c"ARM64TODO: Could we have more than 8 args?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @linux_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.syscall_args*, align 8
  %5 = alloca i64*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 3
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  store %struct.syscall_args* %15, %struct.syscall_args** %4, align 8
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %24 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %26 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.proc*, %struct.proc** %3, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %42 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %41, i32 0, i32 3
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  br label %55

43:                                               ; preds = %1
  %44 = load %struct.proc*, %struct.proc** %3, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %50 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %54 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %53, i32 0, i32 3
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  br label %55

55:                                               ; preds = %43, %34
  %56 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %57 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %62 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %64 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 8
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %55
  %70 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %71 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** %5, align 8
  %74 = call i32 @memcpy(i32 %72, i64* %73, i32 64)
  %75 = load %struct.thread*, %struct.thread** %2, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  store i64 0, i64* %78, align 8
  ret i32 0
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
