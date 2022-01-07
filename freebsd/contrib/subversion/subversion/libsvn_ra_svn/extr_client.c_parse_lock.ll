; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_parse_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_parse_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ccc(?c)c(?c)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_4__**)* @parse_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_lock(i32* %0, i32* %1, %struct.TYPE_4__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_4__* @svn_lock_create(i32* %9)
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = call i32 @svn_ra_svn__parse_tuple(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %18, i32* %21, i32* %24, i8** %7, i8** %8)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @svn_fspath__canonicalize(i32 %30, i32* %31)
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svn_time_from_cstring(i32* %38, i8* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %3
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @svn_time_from_cstring(i32* %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %45, %3
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local %struct.TYPE_4__* @svn_lock_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32*, i32*, i32*, i32*, i8**, i8**) #1

declare dso_local i32 @svn_fspath__canonicalize(i32, i32*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
