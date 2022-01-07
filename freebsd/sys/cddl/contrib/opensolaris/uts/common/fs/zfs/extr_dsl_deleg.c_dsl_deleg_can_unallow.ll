; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_can_unallow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_can_unallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_DELEG_PERM_ALLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@ZFS_DELEG_USER = common dso_local global i64 0, align 8
@ZFS_DELEG_USER_SETS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_deleg_can_unallow(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @ZFS_DELEG_PERM_ALLOW, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @dsl_deleg_access(i8* %12, i32 %13, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @crgetuid(i32* %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 @snprintf(i8* %20, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %55, %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @nvlist_next_nvpair(i32* %26, i32* %27)
  store i32* %28, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = call i64* @nvpair_name(i32* %31)
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @ZFS_DELEG_USER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ZFS_DELEG_USER_SETS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EPERM, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %38, %30
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %47 = load i32*, i32** %8, align 8
  %48 = call i64* @nvpair_name(i32* %47)
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = call i64 @strcmp(i8* %46, i64* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EPERM, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %45
  br label %25

56:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %52, %42, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dsl_deleg_access(i8*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64* @nvpair_name(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strcmp(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
