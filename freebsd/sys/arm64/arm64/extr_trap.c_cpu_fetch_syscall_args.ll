; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_4__*, %struct.syscall_args, %struct.proc* }
%struct.TYPE_4__ = type { i64* }
%struct.syscall_args = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

@SYS_syscall = common dso_local global i64 0, align 8
@SYS___syscall = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"ARM64TODO: Could we have more than 8 args?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 8, i32* %6, align 4
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 3
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %3, align 8
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %4, align 8
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  store %struct.syscall_args* %16, %struct.syscall_args** %5, align 8
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %25 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %27 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SYS_syscall, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %33 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SYS___syscall, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %1
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %4, align 8
  %40 = load i64, i64* %38, align 8
  %41 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %42 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %47 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.proc*, %struct.proc** %3, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.proc*, %struct.proc** %3, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %63 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %62, i32 0, i32 3
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  br label %76

64:                                               ; preds = %45
  %65 = load %struct.proc*, %struct.proc** %3, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %71 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %72
  %74 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %75 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %74, i32 0, i32 3
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  br label %76

76:                                               ; preds = %64, %55
  %77 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %78 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %83 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %85 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i64*, i64** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i32 %86, i64* %87, i32 %91)
  %93 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %94 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %76
  %101 = load %struct.thread*, %struct.thread** %2, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  store i64 0, i64* %108, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
