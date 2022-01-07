; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_prefork1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_prefork1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@prof_active_mtx = common dso_local global i32 0, align 4
@prof_dump_seq_mtx = common dso_local global i32 0, align 4
@prof_gdump_mtx = common dso_local global i32 0, align 4
@next_thr_uid_mtx = common dso_local global i32 0, align 4
@prof_thread_active_init_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_prefork1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @config_prof, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i64, i64* @opt_prof, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @malloc_mutex_prefork(i32* %9, i32* @prof_active_mtx)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @malloc_mutex_prefork(i32* %11, i32* @prof_dump_seq_mtx)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @malloc_mutex_prefork(i32* %13, i32* @prof_gdump_mtx)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @malloc_mutex_prefork(i32* %15, i32* @next_thr_uid_mtx)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @malloc_mutex_prefork(i32* %17, i32* @prof_thread_active_init_mtx)
  br label %19

19:                                               ; preds = %8, %5, %1
  ret void
}

declare dso_local i32 @malloc_mutex_prefork(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
