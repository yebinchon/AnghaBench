; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_sys_machdep.c_arm32_sync_icache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_sys_machdep.c_arm32_sync_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.arm_sync_icache_args = type { i64, i64 }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i8* null, align 8
@SEGV_ACCERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @arm32_sync_icache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm32_sync_icache(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arm_sync_icache_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @copyin(i8* %9, %struct.arm_sync_icache_args* %6, i32 16)
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %25, %27
  %29 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32, %23
  %41 = call i32 @ksiginfo_init_trap(%struct.TYPE_4__* %8)
  %42 = load i8*, i8** @SIGSEGV, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @SEGV_ACCERR, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %49 = call i64 @max(i64 %47, i64 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = call i32 @trapsignal(%struct.thread* %52, %struct.TYPE_4__* %8)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.arm_sync_icache_args, %struct.arm_sync_icache_args* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cpu_icache_sync_range(i64 %57, i64 %59)
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %40, %18, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @copyin(i8*, %struct.arm_sync_icache_args*, i32) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_4__*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_4__*) #1

declare dso_local i32 @cpu_icache_sync_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
