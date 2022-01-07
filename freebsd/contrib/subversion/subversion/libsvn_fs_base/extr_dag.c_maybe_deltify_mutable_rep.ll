; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_maybe_deltify_mutable_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_maybe_deltify_mutable_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, %struct.TYPE_7__*, i32*)* @maybe_deltify_mutable_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_deltify_mutable_rep(i8* %0, i8* %1, i8* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %15, %5
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %6, align 8
  br label %55

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_8__** %12, i32 %31, i8* %32, %struct.TYPE_7__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %6, align 8
  br label %55

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @svn_fs_base__rep_deltify(i32 %49, i8* %50, i8* %51, %struct.TYPE_7__* %52, i32* %53)
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %46, %43, %23
  %56 = load i32*, i32** %6, align 8
  ret i32* %56
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_8__**, i32, i8*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32* @svn_fs_base__rep_deltify(i32, i8*, i8*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
