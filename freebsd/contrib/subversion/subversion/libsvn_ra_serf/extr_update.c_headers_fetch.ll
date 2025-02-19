; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_headers_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_headers_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SVN_DAV_DELTA_BASE_HEADER = common dso_local global i8* null, align 8
@svn_tristate_false = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*)* @headers_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @headers_fetch(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** @SVN_DAV_DELTA_BASE_HEADER, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @serf_bucket_headers_setn(i32* %17, i8* %18, i8* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @svn_ra_serf__setup_svndiff_accept_encoding(i32* %23, %struct.TYPE_4__* %26)
  br label %40

28:                                               ; preds = %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_tristate_false, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @serf_bucket_headers_setn(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32 @serf_bucket_headers_setn(i32*, i8*, i8*) #1

declare dso_local i32 @svn_ra_serf__setup_svndiff_accept_encoding(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
