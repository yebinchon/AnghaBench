; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocationsegments.c_gls_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocationsegments.c_gls_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, i32, i32*)* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"range-start\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"range-end\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*, i32*)* @gls_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gls_closed(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SEGMENT, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @SVN_ERR_ASSERT(i32 %25)
  %27 = load i32*, i32** %11, align 8
  %28 = call i8* @svn_hash_gets(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %14, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @svn_hash_gets(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %15, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i8* @svn_hash_gets(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br label %38

38:                                               ; preds = %35, %6
  %39 = phi i1 [ false, %6 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @svn_cstring_atoi64(i64* %17, i8* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @svn_cstring_atoi64(i64* %18, i8* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %17, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i64, i64* %18, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_4__*, i32, i32*)*, i32 (%struct.TYPE_4__*, i32, i32*)** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 %58(%struct.TYPE_4__* %19, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %65
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
