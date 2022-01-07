; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_get_load_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_get_load_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"First revision cannot be higher than second\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64*, %struct.svnadmin_opt_state*)* @get_load_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_load_range(i64* %0, i64* %1, %struct.svnadmin_opt_state* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.svnadmin_opt_state*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.svnadmin_opt_state* %2, %struct.svnadmin_opt_state** %7, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %10 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %9, i32 0, i32 1
  %11 = call i32 @optrev_to_revnum(i64* %8, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load i64*, i64** %6, align 8
  %14 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %15 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %14, i32 0, i32 0
  %16 = call i32 @optrev_to_revnum(i64* %13, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  br label %46

31:                                               ; preds = %22, %3
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %36, %31
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %55 = call i32* @svn_error_create(i32 %53, i32* null, i32 %54)
  store i32* %55, i32** %4, align 8
  br label %58

56:                                               ; preds = %46
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @optrev_to_revnum(i64*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
