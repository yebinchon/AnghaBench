; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_init_thp_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_init_thp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_madvise_huge = common dso_local global i32 0, align 4
@opt_abort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"<jemalloc>: no MADV_HUGEPAGE support\0A\00", align 1
@init_thp_state.sys_state_madvise = internal constant [24 x i8] c"always [madvise] never\0A\00", align 16
@init_thp_state.sys_state_always = internal constant [24 x i8] c"[always] madvise never\0A\00", align 16
@init_thp_state.sys_state_never = internal constant [24 x i8] c"always madvise [never]\0A\00", align 16
@.str.1 = private unnamed_addr constant [44 x i8] c"/sys/kernel/mm/transparent_hugepage/enabled\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@thp_mode_default = common dso_local global i32 0, align 4
@init_system_thp_mode = common dso_local global i32 0, align 4
@thp_mode_always = common dso_local global i32 0, align 4
@thp_mode_never = common dso_local global i32 0, align 4
@thp_mode_not_supported = common dso_local global i32 0, align 4
@opt_thp = common dso_local global i32 0, align 4
@SYS_close = common dso_local global i32 0, align 4
@SYS_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_thp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_thp_state() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @have_madvise_huge, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @metadata_thp_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64, i64* @opt_abort, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @malloc_write(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %9, %6
  br label %52

16:                                               ; preds = %0
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %52

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = bitcast [24 x i8]* %1 to i8**
  %25 = call i64 @malloc_read_fd(i32 %23, i8** %24, i32 24)
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @close(i32 %26)
  %28 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_madvise, i64 0, i64 0), i64 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @thp_mode_default, align 4
  store i32 %33, i32* @init_system_thp_mode, align 4
  br label %51

34:                                               ; preds = %22
  %35 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_always, i64 0, i64 0), i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @thp_mode_always, align 4
  store i32 %40, i32* @init_system_thp_mode, align 4
  br label %50

41:                                               ; preds = %34
  %42 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_never, i64 0, i64 0), i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @thp_mode_never, align 4
  store i32 %47, i32* @init_system_thp_mode, align 4
  br label %49

48:                                               ; preds = %41
  br label %52

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %32
  br label %54

52:                                               ; preds = %48, %21, %15
  %53 = load i32, i32* @thp_mode_not_supported, align 4
  store i32 %53, i32* @init_system_thp_mode, align 4
  store i32 %53, i32* @opt_thp, align 4
  br label %54

54:                                               ; preds = %52, %51
  ret void
}

declare dso_local i64 @metadata_thp_enabled(...) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @malloc_read_fd(i32, i8**, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
