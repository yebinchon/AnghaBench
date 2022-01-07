; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32 }

@fasttrap_meta_id = common dso_local global i64 0, align 8
@DTRACE_METAPROVNONE = common dso_local global i64 0, align 8
@fasttrap_provs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"fasttrap\00", align 1
@fasttrap_mops = common dso_local global i32 0, align 4
@dtrace_fasttrap_fork = common dso_local global i32* null, align 8
@fasttrap_fork = common dso_local global i32 0, align 4
@dtrace_fasttrap_exec = common dso_local global i32* null, align 8
@fasttrap_exec_exit = common dso_local global i32 0, align 4
@dtrace_fasttrap_exit = common dso_local global i32* null, align 8
@fasttrap_cleanup_mtx = common dso_local global i32 0, align 4
@fasttrap_cleanup_drain = common dso_local global i32 0, align 4
@fasttrap_cleanup_cv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ftcld\00", align 1
@fasttrap_cleanup_proc = common dso_local global i32* null, align 8
@thread_dtor = common dso_local global i32 0, align 4
@fasttrap_thread_dtor_tag = common dso_local global i32 0, align 4
@fasttrap_tpoints = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@fasttrap_procs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@fasttrap_cdev = common dso_local global i32 0, align 4
@fasttrap_count_mtx = common dso_local global i32 0, align 4
@fasttrap_tp_lock = common dso_local global i32 0, align 4
@fasttrap_pid_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fasttrap_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %3, align 4
  %7 = load i64, i64* @fasttrap_meta_id, align 8
  %8 = load i64, i64* @DTRACE_METAPROVNONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i64, i64* @fasttrap_meta_id, align 8
  %12 = call i64 @dtrace_meta_unregister(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %157

15:                                               ; preds = %10, %0
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %62, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 1), align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @mutex_enter(i32* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %30, %struct.TYPE_8__*** %4, align 8
  br label %31

31:                                               ; preds = %57, %20
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = call i32 @mutex_enter(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = call i32 @mutex_exit(i32* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @dtrace_unregister(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.TYPE_8__** %49, %struct.TYPE_8__*** %4, align 8
  br label %57

50:                                               ; preds = %35
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = call i32 @fasttrap_provider_free(%struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %31

58:                                               ; preds = %31
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @mutex_exit(i32* %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @dtrace_meta_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* @fasttrap_mops, i32* null, i64* @fasttrap_meta_id)
  store i32 -1, i32* %1, align 4
  br label %157

70:                                               ; preds = %65
  %71 = load i32*, i32** @dtrace_fasttrap_fork, align 8
  %72 = icmp eq i32* %71, @fasttrap_fork
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  store i32* null, i32** @dtrace_fasttrap_fork, align 8
  %75 = load i32*, i32** @dtrace_fasttrap_exec, align 8
  %76 = icmp eq i32* %75, @fasttrap_exec_exit
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  store i32* null, i32** @dtrace_fasttrap_exec, align 8
  %79 = load i32*, i32** @dtrace_fasttrap_exit, align 8
  %80 = icmp eq i32* %79, @fasttrap_exec_exit
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  store i32* null, i32** @dtrace_fasttrap_exit, align 8
  %83 = call i32 @mtx_lock(i32* @fasttrap_cleanup_mtx)
  store i32 1, i32* @fasttrap_cleanup_drain, align 4
  %84 = call i32 @wakeup(i32* @fasttrap_cleanup_cv)
  %85 = call i32 @mtx_sleep(i32* @fasttrap_cleanup_drain, i32* @fasttrap_cleanup_mtx, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* null, i32** @fasttrap_cleanup_proc, align 8
  %86 = call i32 @mtx_destroy(i32* @fasttrap_cleanup_mtx)
  %87 = load i32, i32* @thread_dtor, align 4
  %88 = load i32, i32* @fasttrap_thread_dtor_tag, align 4
  %89 = call i32 @EVENTHANDLER_DEREGISTER(i32 %87, i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %101, %70
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 1), align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = call i32 @mutex_destroy(i32* %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %90

104:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 1), align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = call i32 @mutex_destroy(i32* %114)
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %2, align 4
  br label %105

119:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %131, %119
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 1), align 8
  %126 = load i32, i32* %2, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = call i32 @mutex_destroy(i32* %129)
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %2, align 4
  br label %120

134:                                              ; preds = %120
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 1), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @kmem_free(%struct.TYPE_9__* %135, i32 %139)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 1), align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @kmem_free(%struct.TYPE_9__* %141, i32 %145)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 1), align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @kmem_free(%struct.TYPE_9__* %147, i32 %151)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %153 = load i32, i32* @fasttrap_cdev, align 4
  %154 = call i32 @destroy_dev(i32 %153)
  %155 = call i32 @mutex_destroy(i32* @fasttrap_count_mtx)
  %156 = call i32 @rm_destroy(i32* @fasttrap_tp_lock)
  store i32 0, i32* %1, align 4
  br label %157

157:                                              ; preds = %134, %68, %14
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

declare dso_local i64 @dtrace_meta_unregister(i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dtrace_unregister(i32) #1

declare dso_local i32 @fasttrap_provider_free(%struct.TYPE_8__*) #1

declare dso_local i32 @dtrace_meta_register(i8*, i32*, i32*, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @rm_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
