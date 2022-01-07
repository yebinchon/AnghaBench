; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_unload.c_dtrace_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_unload.c_dtrace_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@dtrace_dev = common dso_local global i32 0, align 4
@helper_dev = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_helpers = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@dtrace_provider = common dso_local global i32* null, align 8
@kld_load = common dso_local global i32 0, align 4
@dtrace_kld_load_tag = common dso_local global i32 0, align 4
@kld_unload_try = common dso_local global i32 0, align 4
@dtrace_kld_unload_try_tag = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global i32* null, align 8
@dtrace_nprobes = common dso_local global i64 0, align 8
@dtrace_bymod = common dso_local global i32* null, align 8
@dtrace_byfunc = common dso_local global i32* null, align 8
@dtrace_byname = common dso_local global i32* null, align 8
@dtrace_state_cache = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@dtrace_toxrange = common dso_local global i32* null, align 8
@dtrace_toxranges = common dso_local global i64 0, align 8
@dtrace_toxranges_max = common dso_local global i64 0, align 8
@dtrace_vtime_references = common dso_local global i64 0, align 8
@dtrace_retained = common dso_local global i32* null, align 8
@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_taskq = common dso_local global i32 0, align 4
@dtrace_vtime_active = common dso_local global i64 0, align 8
@dtrace_vtime_switch_func = common dso_local global i32* null, align 8
@dtrace_trap_func = common dso_local global i32* null, align 8
@dtrace_errlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dtrace_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @dtrace_dev, align 4
  %5 = call i32 @destroy_dev(i32 %4)
  %6 = load i32, i32* @helper_dev, align 4
  %7 = call i32 @destroy_dev(i32 %6)
  %8 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %9 = call i32 @mutex_enter(i32* @dtrace_lock)
  %10 = call i32 @mutex_enter(i32* @cpu_lock)
  %11 = load i64, i64* @dtrace_opens, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i64, i64* @dtrace_helpers, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = call i32 @mutex_exit(i32* @cpu_lock)
  %19 = call i32 @mutex_exit(i32* @dtrace_lock)
  %20 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %1, align 4
  br label %96

22:                                               ; preds = %0
  %23 = load i32*, i32** @dtrace_provider, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i64 @dtrace_unregister(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = call i32 @mutex_exit(i32* @cpu_lock)
  %29 = call i32 @mutex_exit(i32* @dtrace_lock)
  %30 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %31 = load i32, i32* @EBUSY, align 4
  store i32 %31, i32* %1, align 4
  br label %96

32:                                               ; preds = %22
  store i32* null, i32** @dtrace_provider, align 8
  %33 = load i32, i32* @kld_load, align 4
  %34 = load i32, i32* @dtrace_kld_load_tag, align 4
  %35 = call i32 @EVENTHANDLER_DEREGISTER(i32 %33, i32 %34)
  %36 = load i32, i32* @kld_unload_try, align 4
  %37 = load i32, i32* @dtrace_kld_unload_try_tag, align 4
  %38 = call i32 @EVENTHANDLER_DEREGISTER(i32 %36, i32 %37)
  %39 = call %struct.TYPE_4__* (...) @dtrace_anon_grab()
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %2, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = call i32 @dtrace_state_destroy(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = call i32 @bzero(i32* @dtrace_anon, i32 4)
  %52 = call i32 @mutex_exit(i32* @cpu_lock)
  %53 = load i32*, i32** @dtrace_probes, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** @dtrace_probes, align 8
  %57 = call i32 @kmem_free(i32* %56, i32 0)
  store i32* null, i32** @dtrace_probes, align 8
  store i64 0, i64* @dtrace_nprobes, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32*, i32** @dtrace_bymod, align 8
  %60 = call i32 @dtrace_hash_destroy(i32* %59)
  %61 = load i32*, i32** @dtrace_byfunc, align 8
  %62 = call i32 @dtrace_hash_destroy(i32* %61)
  %63 = load i32*, i32** @dtrace_byname, align 8
  %64 = call i32 @dtrace_hash_destroy(i32* %63)
  store i32* null, i32** @dtrace_bymod, align 8
  store i32* null, i32** @dtrace_byfunc, align 8
  store i32* null, i32** @dtrace_byname, align 8
  %65 = load i32, i32* @dtrace_state_cache, align 4
  %66 = call i32 @kmem_cache_destroy(i32 %65)
  %67 = load i32, i32* @dtrace_arena, align 4
  %68 = call i32 @delete_unrhdr(i32 %67)
  %69 = load i32*, i32** @dtrace_toxrange, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32*, i32** @dtrace_toxrange, align 8
  %73 = call i32 @kmem_free(i32* %72, i32 0)
  store i32* null, i32** @dtrace_toxrange, align 8
  store i64 0, i64* @dtrace_toxranges, align 8
  store i64 0, i64* @dtrace_toxranges_max, align 8
  br label %74

74:                                               ; preds = %71, %58
  %75 = load i64, i64* @dtrace_vtime_references, align 8
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i64, i64* @dtrace_opens, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32*, i32** @dtrace_retained, align 8
  %84 = icmp eq i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = call i32 @mutex_exit(i32* @dtrace_lock)
  %88 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %89 = call i32 @mutex_destroy(i32* @dtrace_meta_lock)
  %90 = call i32 @mutex_destroy(i32* @dtrace_provider_lock)
  %91 = call i32 @mutex_destroy(i32* @dtrace_lock)
  %92 = load i32, i32* @dtrace_taskq, align 4
  %93 = call i32 @taskq_destroy(i32 %92)
  %94 = call i32 (...) @dtrace_invop_uninit()
  store i64 0, i64* @dtrace_vtime_active, align 8
  store i32* null, i32** @dtrace_vtime_switch_func, align 8
  store i32* null, i32** @dtrace_trap_func, align 8
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %74, %27, %17
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dtrace_unregister(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local %struct.TYPE_4__* @dtrace_anon_grab(...) #1

declare dso_local i32 @dtrace_state_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @dtrace_hash_destroy(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @delete_unrhdr(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @dtrace_invop_uninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
