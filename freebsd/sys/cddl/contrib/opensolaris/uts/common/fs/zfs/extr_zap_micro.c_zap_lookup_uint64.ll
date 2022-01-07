; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_lookup_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_lookup_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RW_READER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_lookup_uint64(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @RW_READER, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FTAG, align 4
  %25 = call i32 @zap_lockdir(i32* %19, i32 %20, i32* null, i32 %21, i32 %22, i32 %23, i32 %24, i32** %16)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %55

30:                                               ; preds = %7
  %31 = load i32*, i32** %16, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32* @zap_name_alloc_uint64(i32* %31, i32* %32, i32 %33)
  store i32* %34, i32** %18, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32*, i32** %16, align 8
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @zap_unlockdir(i32* %38, i32 %39)
  %41 = load i32, i32* @ENOTSUP, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %55

43:                                               ; preds = %30
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @fzap_lookup(i32* %44, i32 %45, i32 %46, i8* %47, i32* null, i32 0, i32* null)
  store i32 %48, i32* %17, align 4
  %49 = load i32*, i32** %18, align 8
  %50 = call i32 @zap_name_free(i32* %49)
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @zap_unlockdir(i32* %51, i32 %52)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %43, %37, %28
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32* @zap_name_alloc_uint64(i32*, i32*, i32) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_lookup(i32*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
