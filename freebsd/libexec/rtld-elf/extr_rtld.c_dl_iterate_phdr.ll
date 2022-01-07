; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dl_iterate_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dl_iterate_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_phdr_info = type { i32 }

@rtld_phdr_lock = common dso_local global i32 0, align 4
@rtld_bind_lock = common dso_local global i32 0, align 4
@obj_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@obj_rtld = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_iterate_phdr(i32 (%struct.dl_phdr_info*, i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.dl_phdr_info*, i32, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dl_phdr_info, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 (%struct.dl_phdr_info*, i32, i8*)* %0, i32 (%struct.dl_phdr_info*, i32, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32 @init_marker(i32* %8)
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @rtld_phdr_lock, align 4
  %14 = call i32 @wlock_acquire(i32 %13, i32* %10)
  %15 = load i32, i32* @rtld_bind_lock, align 4
  %16 = call i32 @wlock_acquire(i32 %15, i32* %9)
  %17 = call i32 @TAILQ_FIRST(i32* @obj_list)
  %18 = call i32* @globallist_curr(i32 %17)
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %50, %2
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @next, align 4
  %25 = call i32 @TAILQ_INSERT_AFTER(i32* @obj_list, i32* %23, i32* %8, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @rtld_fill_dl_phdr_info(i32* %26, %struct.dl_phdr_info* %6)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @hold_object(i32* %28)
  %30 = load i32, i32* @rtld_bind_lock, align 4
  %31 = call i32 @lock_release(i32 %30, i32* %9)
  %32 = load i32 (%struct.dl_phdr_info*, i32, i8*)*, i32 (%struct.dl_phdr_info*, i32, i8*)** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 %32(%struct.dl_phdr_info* %6, i32 4, i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @rtld_bind_lock, align 4
  %36 = call i32 @wlock_acquire(i32 %35, i32* %9)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @unhold_object(i32* %37)
  %39 = call i32* @globallist_next(i32* %8)
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* @next, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* @obj_list, i32* %8, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %22
  %45 = load i32, i32* @rtld_bind_lock, align 4
  %46 = call i32 @lock_release(i32 %45, i32* %9)
  %47 = load i32, i32* @rtld_phdr_lock, align 4
  %48 = call i32 @lock_release(i32 %47, i32* %10)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %22
  br label %19

51:                                               ; preds = %19
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = call i32 @rtld_fill_dl_phdr_info(i32* @obj_rtld, %struct.dl_phdr_info* %6)
  %56 = load i32, i32* @rtld_bind_lock, align 4
  %57 = call i32 @lock_release(i32 %56, i32* %9)
  %58 = load i32 (%struct.dl_phdr_info*, i32, i8*)*, i32 (%struct.dl_phdr_info*, i32, i8*)** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 %58(%struct.dl_phdr_info* %6, i32 4, i8* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* @rtld_phdr_lock, align 4
  %63 = call i32 @lock_release(i32 %62, i32* %10)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @init_marker(i32*) #1

declare dso_local i32 @wlock_acquire(i32, i32*) #1

declare dso_local i32* @globallist_curr(i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, i32*, i32*, i32) #1

declare dso_local i32 @rtld_fill_dl_phdr_info(i32*, %struct.dl_phdr_info*) #1

declare dso_local i32 @hold_object(i32*) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i32 @unhold_object(i32*) #1

declare dso_local i32* @globallist_next(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
