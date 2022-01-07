; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_sb_bucket_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_sb_bucket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.sbb_baton* }
%struct.sbb_baton = type { i8*, i64, i32, i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i8**, i64*)* @sb_bucket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_bucket_read(%struct.TYPE_3__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sbb_baton*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.sbb_baton*, %struct.sbb_baton** %13, align 8
  store %struct.sbb_baton* %14, %struct.sbb_baton** %10, align 8
  %15 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %16 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %21 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %8, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %26 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %19
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %34 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %32
  store i8* %36, i8** %34, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %39 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %42, i32* %5, align 4
  br label %96

43:                                               ; preds = %19
  %44 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %45 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %49 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %96

51:                                               ; preds = %4
  %52 = load i8**, i8*** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %55 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %58 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @svn_spillbuf__read(i8** %52, i64* %53, i32 %56, i32 %59)
  store i32* %60, i32** %11, align 8
  %61 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %62 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @svn_pool_clear(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @svn_error_clear(i32* %65)
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %51
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %77 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load %struct.sbb_baton*, %struct.sbb_baton** %10, align 8
  %83 = getelementptr inbounds %struct.sbb_baton, %struct.sbb_baton* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %71, %51
  %87 = load i8**, i8*** %8, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @APR_EOF, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @APR_SUCCESS, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %43, %29
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32* @svn_spillbuf__read(i8**, i64*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
