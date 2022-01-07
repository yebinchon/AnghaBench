; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pshared.c___thr_pshared_offpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pshared.c___thr_pshared_offpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@UMTX_OP_SHM = common dso_local global i32 0, align 4
@UMTX_SHM_CREAT = common dso_local global i32 0, align 4
@UMTX_SHM_LOOKUP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__thr_pshared_offpage(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %10, %struct.pthread** %6, align 8
  %11 = load %struct.pthread*, %struct.pthread** %6, align 8
  %12 = call i32 @pshared_rlock(%struct.pthread* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @pshared_lookup(i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.pthread*, %struct.pthread** %6, align 8
  %16 = call i32 @pshared_unlock(%struct.pthread* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %3, align 8
  br label %65

21:                                               ; preds = %2
  %22 = load i32, i32* @UMTX_OP_SHM, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @UMTX_SHM_CREAT, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @UMTX_SHM_LOOKUP, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @_umtx_op(i32* null, i32 %22, i32 %30, i8* %31, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %65

36:                                               ; preds = %29
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @PROT_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAP_SHARED, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @mmap(i32* null, i32 %37, i32 %40, i32 %41, i32 %42, i32 0)
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** @MAP_FAILED, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %65

50:                                               ; preds = %36
  %51 = load %struct.pthread*, %struct.pthread** %6, align 8
  %52 = call i32 @pshared_wlock(%struct.pthread* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @pshared_insert(i8* %53, i8** %7)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.pthread*, %struct.pthread** %6, align 8
  %56 = call i32 @pshared_unlock(%struct.pthread* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @pshared_clean(i8* %60, i8* %61)
  store i8* null, i8** %7, align 8
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %63, %49, %35, %19
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @pshared_rlock(%struct.pthread*) #1

declare dso_local i8* @pshared_lookup(i8*) #1

declare dso_local i32 @pshared_unlock(%struct.pthread*) #1

declare dso_local i32 @_umtx_op(i32*, i32, i32, i8*, i32*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pshared_wlock(%struct.pthread*) #1

declare dso_local i32 @pshared_insert(i8*, i8**) #1

declare dso_local i32 @pshared_clean(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
