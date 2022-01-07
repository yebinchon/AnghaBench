; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getkstack_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getkstack_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_kstack = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_KSTACK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"sysctl: kern.proc.kstack: %d\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"sysctl: kern.proc.kstack unavailable (options DDB or options STACK required in kernel)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"sysctl: kern.proc.pid: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kinfo_kstack* (i64, i32*)* @procstat_getkstack_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kinfo_kstack* @procstat_getkstack_sysctl(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.kinfo_kstack*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_kstack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @CTL_KERN, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* @KERN_PROC, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @KERN_PROC_KSTACK, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %17, i32* %18, align 4
  store i64 0, i64* %9, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %21 = call i32 @nitems(i32* %20)
  %22 = call i32 @sysctl(i32* %19, i32 %21, %struct.kinfo_kstack* null, i64* %9, i32* null, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ESRCH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EPERM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ENOENT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %38)
  store %struct.kinfo_kstack* null, %struct.kinfo_kstack** %3, align 8
  br label %79

40:                                               ; preds = %33, %29, %25, %2
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ENOENT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @warnx(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  store %struct.kinfo_kstack* null, %struct.kinfo_kstack** %3, align 8
  br label %79

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store %struct.kinfo_kstack* null, %struct.kinfo_kstack** %3, align 8
  br label %79

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = call %struct.kinfo_kstack* @malloc(i64 %54)
  store %struct.kinfo_kstack* %55, %struct.kinfo_kstack** %6, align 8
  %56 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %57 = icmp eq %struct.kinfo_kstack* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  store %struct.kinfo_kstack* null, %struct.kinfo_kstack** %3, align 8
  br label %79

61:                                               ; preds = %53
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %64 = call i32 @nitems(i32* %63)
  %65 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %66 = call i32 @sysctl(i32* %62, i32 %64, %struct.kinfo_kstack* %65, i64* %9, i32* null, i32 0)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %72 = call i32 @free(%struct.kinfo_kstack* %71)
  store %struct.kinfo_kstack* null, %struct.kinfo_kstack** %3, align 8
  br label %79

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = udiv i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  store %struct.kinfo_kstack* %78, %struct.kinfo_kstack** %3, align 8
  br label %79

79:                                               ; preds = %73, %68, %58, %52, %47, %37
  %80 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %3, align 8
  ret %struct.kinfo_kstack* %80
}

declare dso_local i32 @sysctl(i32*, i32, %struct.kinfo_kstack*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.kinfo_kstack* @malloc(i64) #1

declare dso_local i32 @free(%struct.kinfo_kstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
