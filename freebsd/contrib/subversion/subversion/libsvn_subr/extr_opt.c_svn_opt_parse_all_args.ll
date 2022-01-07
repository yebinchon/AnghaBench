; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_all_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_all_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }

@DEFAULT_ARRAY_SIZE = common dso_local global i32 0, align 4
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_opt_parse_all_args(i32** %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* @DEFAULT_ARRAY_SIZE, align 4
  %11 = call i32* @apr_array_make(i32* %9, i32 %10, i32 8)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %21 = call i32* @svn_error_create(i32 %20, i32 0, i32* null)
  store i32* %21, i32** %4, align 8
  br label %48

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %31, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i32, i32* %35, i64 %38
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @array_push_str(i32* %32, i32 %41, i32* %42)
  br label %23

44:                                               ; preds = %23
  %45 = load i32*, i32** %8, align 8
  %46 = load i32**, i32*** %5, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %44, %19
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @array_push_str(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
