; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_fdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_fdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DUMP_FILENAME_BUFSIZE = common dso_local global i32 0, align 4
@config_prof = common dso_local global i32 0, align 4
@opt_prof_final = common dso_local global i32 0, align 4
@opt_prof_prefix = common dso_local global i8* null, align 8
@prof_booted = common dso_local global i32 0, align 4
@prof_dump_seq_mtx = common dso_local global i32 0, align 4
@VSEQ_INVALID = common dso_local global i32 0, align 4
@opt_prof_leak = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prof_fdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_fdump() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DUMP_FILENAME_BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @config_prof, align 4
  %10 = call i32 @cassert(i32 %9)
  %11 = load i32, i32* @opt_prof_final, align 4
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** @opt_prof_prefix, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @prof_booted, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %41

23:                                               ; preds = %0
  %24 = call i32* (...) @tsd_fetch()
  store i32* %24, i32** %1, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @tsd_reentrancy_level_get(i32* %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @tsd_tsdn(i32* %30)
  %32 = call i32 @malloc_mutex_lock(i32 %31, i32* @prof_dump_seq_mtx)
  %33 = load i32, i32* @VSEQ_INVALID, align 4
  %34 = call i32 @prof_dump_filename(i8* %8, float 1.020000e+02, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @tsd_tsdn(i32* %35)
  %37 = call i32 @malloc_mutex_unlock(i32 %36, i32* @prof_dump_seq_mtx)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @opt_prof_leak, align 4
  %40 = call i32 @prof_dump(i32* %38, i32 0, i8* %8, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %45 [
    i32 0, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %41, %41
  ret void

45:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cassert(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @tsd_fetch(...) #2

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #2

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #2

declare dso_local i32 @tsd_tsdn(i32*) #2

declare dso_local i32 @prof_dump_filename(i8*, float, i32) #2

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #2

declare dso_local i32 @prof_dump(i32*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
