; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_ioctl.c_dtrace_ioctl_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_ioctl.c_dtrace_ioctl_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.proc*, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@curproc = common dso_local global %struct.proc* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @dtrace_ioctl_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_ioctl_helper(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %116 [
    i32 129, label %17
    i32 128, label %109
  ]

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %13, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %24, %struct.proc** %12, align 8
  %25 = load %struct.proc*, %struct.proc** %12, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @dtrace_dof_copyin(i64 %33, i32* %15)
  store i32* %34, i32** %14, align 8
  br label %76

35:                                               ; preds = %17
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.proc* @pfind(i32 %38)
  store %struct.proc* %39, %struct.proc** %12, align 8
  %40 = load %struct.proc*, %struct.proc** %12, align 8
  %41 = icmp eq %struct.proc* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %120

44:                                               ; preds = %35
  %45 = load %struct.proc*, %struct.proc** %12, align 8
  %46 = call i32 @P_SHOULDSTOP(%struct.proc* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.proc*, %struct.proc** %12, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @P_TRACED, align 4
  %53 = load i32, i32* @P_WEXIT, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* @P_TRACED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %48
  %59 = load %struct.proc*, %struct.proc** %12, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 1
  %61 = load %struct.proc*, %struct.proc** %60, align 8
  %62 = load %struct.proc*, %struct.proc** @curproc, align 8
  %63 = icmp ne %struct.proc* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %48, %44
  %65 = load %struct.proc*, %struct.proc** %12, align 8
  %66 = call i32 @PROC_UNLOCK(%struct.proc* %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %6, align 4
  br label %120

68:                                               ; preds = %58
  %69 = load %struct.proc*, %struct.proc** %12, align 8
  %70 = call i32 @_PHOLD(%struct.proc* %69)
  %71 = load %struct.proc*, %struct.proc** %12, align 8
  %72 = call i32 @PROC_UNLOCK(%struct.proc* %71)
  %73 = load %struct.proc*, %struct.proc** %12, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32* @dtrace_dof_copyin_proc(%struct.proc* %73, i64 %74, i32* %15)
  store i32* %75, i32** %14, align 8
  br label %76

76:                                               ; preds = %68, %32
  %77 = load i32*, i32** %14, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.proc*, %struct.proc** %12, align 8
  %81 = load %struct.proc*, %struct.proc** @curproc, align 8
  %82 = icmp ne %struct.proc* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.proc*, %struct.proc** %12, align 8
  %85 = call i32 @PRELE(%struct.proc* %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %118

87:                                               ; preds = %76
  %88 = call i32 @mutex_enter(i32* @dtrace_lock)
  %89 = load i32*, i32** %14, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %91 = load %struct.proc*, %struct.proc** %12, align 8
  %92 = call i32 @dtrace_helper_slurp(i32* %89, %struct.TYPE_3__* %90, %struct.proc* %91)
  store i32 %92, i32* %15, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %15, align 4
  br label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = call i32 @mutex_exit(i32* @dtrace_lock)
  %102 = load %struct.proc*, %struct.proc** %12, align 8
  %103 = load %struct.proc*, %struct.proc** @curproc, align 8
  %104 = icmp ne %struct.proc* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.proc*, %struct.proc** %12, align 8
  %107 = call i32 @PRELE(%struct.proc* %106)
  br label %108

108:                                              ; preds = %105, %100
  br label %118

109:                                              ; preds = %5
  %110 = call i32 @mutex_enter(i32* @dtrace_lock)
  %111 = load i64, i64* %9, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dtrace_helper_destroygen(i32* null, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = call i32 @mutex_exit(i32* @dtrace_lock)
  br label %118

116:                                              ; preds = %5
  %117 = load i32, i32* @ENOTTY, align 4
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %116, %109, %108, %86
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %64, %42
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32* @dtrace_dof_copyin(i64, i32*) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i32 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32* @dtrace_dof_copyin_proc(%struct.proc*, i64, i32*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_helper_slurp(i32*, %struct.TYPE_3__*, %struct.proc*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dtrace_helper_destroygen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
