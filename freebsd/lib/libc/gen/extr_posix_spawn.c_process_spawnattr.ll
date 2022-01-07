; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_process_spawnattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_process_spawnattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sigaction = type { i32, i32 }

@SIG_DFL = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETPGROUP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSCHEDULER = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSCHEDPARAM = common dso_local global i32 0, align 4
@POSIX_SPAWN_RESETIDS = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGMASK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGDEF = common dso_local global i32 0, align 4
@_SIG_MAXSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @process_spawnattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_spawnattr(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %7 = load i32, i32* @SIG_DFL, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @POSIX_SPAWN_SETPGROUP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @setpgid(i32 0, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @POSIX_SPAWN_SETSCHEDULER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = call i64 @sched_setscheduler(i32 0, i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %2, align 4
  br label %121

41:                                               ; preds = %31
  br label %58

42:                                               ; preds = %24
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @POSIX_SPAWN_SETSCHEDPARAM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = call i64 @sched_setparam(i32 0, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %2, align 4
  br label %121

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @POSIX_SPAWN_RESETIDS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = call i32 (...) @getgid()
  %67 = call i64 @setegid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %2, align 4
  br label %121

71:                                               ; preds = %65
  %72 = call i32 (...) @getuid()
  %73 = call i64 @seteuid(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %2, align 4
  br label %121

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @POSIX_SPAWN_SETSIGMASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @SIG_SETMASK, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = call i32 @__sys_sigprocmask(i32 %86, i32* %88, i32* null)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @POSIX_SPAWN_SETSIGDEF, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  store i32 1, i32* %5, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @_SIG_MAXSIG, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @sigismember(i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @__sys_sigaction(i32 %109, %struct.sigaction* %4, i32* null)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @errno, align 4
  store i32 %113, i32* %2, align 4
  br label %121

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %98

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %90
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %112, %75, %69, %54, %39, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @setpgid(i32, i32) #1

declare dso_local i64 @sched_setscheduler(i32, i32, i32*) #1

declare dso_local i64 @sched_setparam(i32, i32*) #1

declare dso_local i64 @setegid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i64 @seteuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @__sys_sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
