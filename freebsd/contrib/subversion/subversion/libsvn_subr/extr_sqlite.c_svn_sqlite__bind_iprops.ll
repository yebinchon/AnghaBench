; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__bind_iprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__bind_iprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__bind_iprops(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @svn_sqlite__bind_blob(i32* %15, i32 %16, i32* null, i32 0)
  %18 = call i32* @svn_error_trace(i32 %17)
  store i32* %18, i32** %5, align 8
  br label %38

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_skel__unparse_iproplist(i32** %10, i32* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call %struct.TYPE_3__* @svn_skel__unparse(i32* %25, i32* %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %11, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @svn_sqlite__bind_blob(i32* %28, i32 %29, i32* %32, i32 %35)
  %37 = call i32* @svn_error_trace(i32 %36)
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %19, %14
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__bind_blob(i32*, i32, i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_skel__unparse_iproplist(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_skel__unparse(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
