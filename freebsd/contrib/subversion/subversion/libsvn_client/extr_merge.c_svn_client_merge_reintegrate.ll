; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge_reintegrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge_reintegrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_merge_reintegrate(i8* %0, i32* %1, i8* %2, i32 %3, i32* %4, %struct.TYPE_5__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @get_target_and_lock_abspath(i8** %15, i8** %16, i8* %18, %struct.TYPE_5__* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %7
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @merge_reintegrate_locked(i32** %17, i8* %26, i32* %27, i8* %28, i32 %29, i32 %30, i32* %31, %struct.TYPE_5__* %32, i32* %33, i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %35, i32 %38, i8* %39, i32 %40, i32* %41)
  br label %55

43:                                               ; preds = %7
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @merge_reintegrate_locked(i32** %17, i8* %44, i32* %45, i8* %46, i32 %47, i32 %48, i32* %49, %struct.TYPE_5__* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %43, %25
  %56 = load i32*, i32** %17, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @svn_client__make_merge_conflict_error(i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %60
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_target_and_lock_abspath(i8**, i8**, i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @merge_reintegrate_locked(i32**, i8*, i32*, i8*, i32, i32, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @svn_client__make_merge_conflict_error(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
