; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_make_fulltext_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_make_fulltext_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i8*, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@rep_kind_fulltext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i8*, i32*, i32*, i32*)* @make_fulltext_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @make_fulltext_rep(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call %struct.TYPE_8__* @apr_pcalloc(i32* %12, i32 40)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @apr_pstrdup(i32* %22, i8* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  br label %27

27:                                               ; preds = %21, %16, %5
  %28 = load i32, i32* @rep_kind_fulltext, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i8* @svn_checksum_dup(i32* %31, i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @svn_checksum_dup(i32* %36, i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32* @apr_pstrdup(i32* %44, i8* %45)
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32* [ %46, %43 ], [ null, %47 ]
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32* %49, i32** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %54
}

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_checksum_dup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
