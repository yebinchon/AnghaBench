; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_sb_bucket_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_sb_bucket_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.sbb_baton* }
%struct.sbb_baton = type { i8*, i32, i32, i32 }

@APR_EOF = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i32*)* @sb_bucket_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_bucket_peek(%struct.TYPE_3__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sbb_baton*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  store %struct.sbb_baton* %11, %struct.sbb_baton** %7, align 8
  %12 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %13 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %18 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %17, i32 0, i32 0
  %19 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %20 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %19, i32 0, i32 1
  %21 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %22 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %25 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @svn_spillbuf__read(i8** %18, i32* %20, i32 %23, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %29 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @svn_pool_clear(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_error_clear(i32* %32)
  br label %34

34:                                               ; preds = %16, %3
  %35 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %36 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = load %struct.sbb_baton*, %struct.sbb_baton** %7, align 8
  %40 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @APR_EOF, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @APR_SUCCESS, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  ret i32 %51
}

declare dso_local i32* @svn_spillbuf__read(i8**, i32*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
