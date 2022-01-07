; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_commit-cmd.c_copy_warning_notify_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_commit-cmd.c_copy_warning_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.copy_warning_notify_baton = type { i64, i64, i32, i32 (i32, %struct.TYPE_4__*, i32*)* }

@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_notify_commit_copied = common dso_local global i64 0, align 8
@svn_wc_notify_commit_copied_replaced = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [103 x i8] c"svn: The depth of this commit is '%s', but copies are always performed recursively in the repository.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i32*)* @copy_warning_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_warning_notify_func(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.copy_warning_notify_baton*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.copy_warning_notify_baton*
  store %struct.copy_warning_notify_baton* %10, %struct.copy_warning_notify_baton** %7, align 8
  %11 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %12 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %11, i32 0, i32 3
  %13 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.TYPE_4__*, i32*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %17 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %16, i32 0, i32 3
  %18 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %17, align 8
  %19 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %20 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 %18(i32 %21, %struct.TYPE_4__* %22, i32* %23)
  br label %25

25:                                               ; preds = %15, %3
  %26 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %27 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %32 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_depth_infinity, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @svn_node_dir, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @svn_wc_notify_commit_copied, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @svn_wc_notify_commit_copied_replaced, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %58 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @svn_depth_to_word(i64 %59)
  %61 = call i32* @svn_cmdline_printf(i32* %55, i32 %56, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @svn_error_clear(i32* %62)
  %64 = load i64, i64* @TRUE, align 8
  %65 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %7, align 8
  %66 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %54, %48, %36, %30, %25
  ret void
}

declare dso_local i32* @svn_cmdline_printf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_depth_to_word(i64) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
