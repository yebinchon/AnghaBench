; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_mdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_mdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i32 0, align 4
@prof_booted = common dso_local global i32 0, align 4
@DUMP_FILENAME_BUFSIZE = common dso_local global i32 0, align 4
@opt_prof_prefix = common dso_local global i8* null, align 8
@prof_dump_seq_mtx = common dso_local global i32 0, align 4
@prof_dump_mseq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_mdump(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @config_prof, align 4
  %10 = call i32 @cassert(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @tsd_reentrancy_level_get(i32* %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @opt_prof, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @prof_booted, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store i32 1, i32* %3, align 4
  br label %53

22:                                               ; preds = %18
  %23 = load i32, i32* @DUMP_FILENAME_BUFSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i8*, i8** @opt_prof_prefix, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %51

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @tsd_tsdn(i32* %37)
  %39 = call i32 @malloc_mutex_lock(i32 %38, i32* @prof_dump_seq_mtx)
  %40 = load i32, i32* @prof_dump_mseq, align 4
  %41 = call i32 @prof_dump_filename(i8* %26, i8 signext 109, i32 %40)
  %42 = load i32, i32* @prof_dump_mseq, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @prof_dump_mseq, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @tsd_tsdn(i32* %44)
  %46 = call i32 @malloc_mutex_unlock(i32 %45, i32* @prof_dump_seq_mtx)
  store i8* %26, i8** %5, align 8
  br label %47

47:                                               ; preds = %36, %22
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @prof_dump(i32* %48, i32 1, i8* %49, i32 0)
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @prof_dump_filename(i8*, i8 signext, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32 @prof_dump(i32*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
