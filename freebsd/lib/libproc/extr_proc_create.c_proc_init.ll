; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kinfo_proc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PR_MODEL_LP64 = common dso_local global i32 0, align 4
@PR_MODEL_ILP32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.proc_handle**)* @proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_init(i32 %0, i32 %1, i32 %2, %struct.proc_handle** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_handle**, align 8
  %9 = alloca %struct.kinfo_proc*, align 8
  %10 = alloca %struct.proc_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.proc_handle** %3, %struct.proc_handle*** %8, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %11, align 4
  %16 = call %struct.proc_handle* @malloc(i32 32)
  store %struct.proc_handle* %16, %struct.proc_handle** %10, align 8
  %17 = icmp eq %struct.proc_handle* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %93

19:                                               ; preds = %4
  %20 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %21 = call i32 @memset(%struct.proc_handle* %20, i32 0, i32 32)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %24 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %28 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %31 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = call i32* (...) @procstat_open_sysctl()
  %33 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %34 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %36 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %93

40:                                               ; preds = %19
  %41 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %42 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @KERN_PROC_PID, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.kinfo_proc* @procstat_getprocs(i32* %43, i32 %44, i32 %45, i32* %13)
  store %struct.kinfo_proc* %46, %struct.kinfo_proc** %9, align 8
  %47 = icmp eq %struct.kinfo_proc* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %93

49:                                               ; preds = %40
  %50 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %51 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %54 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %55 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @procstat_getpathname(i32* %52, %struct.kinfo_proc* %53, i32 %56, i32 4)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %59 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %62 = call i32 @procstat_freeprocs(i32* %60, %struct.kinfo_proc* %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %93

66:                                               ; preds = %49
  %67 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %68 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @O_RDONLY, align 4
  %71 = call i32 @open(i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %11, align 4
  br label %93

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @getelfclass(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %88 [
    i32 129, label %79
    i32 130, label %83
    i32 128, label %87
  ]

79:                                               ; preds = %75
  %80 = load i32, i32* @PR_MODEL_LP64, align 4
  %81 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %82 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %90

83:                                               ; preds = %75
  %84 = load i32, i32* @PR_MODEL_ILP32, align 4
  %85 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %86 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %90

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %75, %87
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %83, %79
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @close(i32 %91)
  br label %93

93:                                               ; preds = %90, %73, %65, %48, %39, %18
  %94 = load %struct.proc_handle*, %struct.proc_handle** %10, align 8
  %95 = load %struct.proc_handle**, %struct.proc_handle*** %8, align 8
  store %struct.proc_handle* %94, %struct.proc_handle** %95, align 8
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local %struct.proc_handle* @malloc(i32) #1

declare dso_local i32 @memset(%struct.proc_handle*, i32, i32) #1

declare dso_local i32* @procstat_open_sysctl(...) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(i32*, i32, i32, i32*) #1

declare dso_local i32 @procstat_getpathname(i32*, %struct.kinfo_proc*, i32, i32) #1

declare dso_local i32 @procstat_freeprocs(i32*, %struct.kinfo_proc*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @getelfclass(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
