; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32*, %struct.trapframe*, %struct.syscall_args }
%struct.trapframe = type { i64, i32, i64, i32, i32, i32 }
%struct.syscall_args = type { i64, i32, i32*, %struct.TYPE_2__* }

@CLOUDABI32_SYS_MAXSYSCALL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@cloudabi32_sysent = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @cloudabi32_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi32_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  store %struct.trapframe* %9, %struct.trapframe** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  store %struct.syscall_args* %11, %struct.syscall_args** %5, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %16 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %18 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CLOUDABI32_SYS_MAXSYSCALL, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOSYS, align 4
  store i32 %23, i32* %2, align 4
  br label %107

24:                                               ; preds = %1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cloudabi32_sysent, align 8
  %26 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %27 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %31 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %30, i32 0, i32 3
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %33 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %38 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %43 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %50 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %57 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %64 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %68 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 4
  br i1 %70, label %71, label %95

71:                                               ; preds = %24
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 1
  %74 = load %struct.trapframe*, %struct.trapframe** %73, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %79 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %83 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @copyin(i8* %77, i32* %81, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %71
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %107

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %24
  %96 = load %struct.thread*, %struct.thread** %3, align 8
  %97 = getelementptr inbounds %struct.thread, %struct.thread* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 0, i32* %99, align 4
  %100 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.thread*, %struct.thread** %3, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %102, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %95, %92, %22
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @copyin(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
