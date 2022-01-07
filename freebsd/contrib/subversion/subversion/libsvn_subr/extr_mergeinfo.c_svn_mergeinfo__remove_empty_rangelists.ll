; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__remove_empty_rangelists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__remove_empty_rangelists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_mergeinfo__remove_empty_rangelists(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32* @apr_hash_first(i32* %13, i64 %14)
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %34, %12
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @apr_hash_this_key(i32* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_3__* @apr_hash_this_val(i32* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i64, i64* %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @svn_hash_sets(i64 %29, i8* %30, i32* null)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @apr_hash_next(i32* %35)
  store i32* %36, i32** %5, align 8
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32* @apr_hash_first(i32*, i64) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_3__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
