; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_ensure_prop_is_regular_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_ensure_prop_is_regular_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_prop_entry_kind = common dso_local global i32 0, align 4
@SVN_ERR_BAD_PROP_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Property '%s' is an entry property\00", align 1
@svn_prop_wc_kind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Property '%s' is a WC property, not a regular property\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @ensure_prop_is_regular_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_prop_is_regular_kind(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @svn_property_kind2(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @svn_prop_entry_kind, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @SVN_ERR_BAD_PROP_KIND, align 4
  %12 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @svn_error_createf(i32 %11, i32* null, i32 %12, i8* %13)
  store i32* %14, i32** %2, align 8
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @svn_prop_wc_kind, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @SVN_ERR_BAD_PROP_KIND, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @svn_error_createf(i32 %20, i32* null, i32 %21, i8* %22)
  store i32* %23, i32** %2, align 8
  br label %26

24:                                               ; preds = %15
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %24, %19, %10
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local i32 @svn_property_kind2(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
