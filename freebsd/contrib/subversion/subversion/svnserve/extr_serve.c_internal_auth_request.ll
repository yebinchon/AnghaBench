; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_internal_auth_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_internal_auth_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"w((!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!)c)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"w(?c)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_7__*, i32, i32)* @internal_auth_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @internal_auth_request(i32* %0, i32* %1, %struct.TYPE_7__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_ra_svn__write_tuple(i32* %15, i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @send_mechs(i32* %19, i32* %20, %struct.TYPE_7__* %21, i32 %22, i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @svn_ra_svn__write_tuple(i32* %26, i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @svn_pool_create(i32* %35)
  store i32* %36, i32** %14, align 8
  br label %37

37:                                               ; preds = %58, %5
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @svn_pool_clear(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @svn_ra_svn__read_tuple(i32* %40, i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %12, i8** %13)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %62

48:                                               ; preds = %37
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @auth(i32* %11, i32* %49, i8* %50, i8* %51, %struct.TYPE_7__* %52, i32 %53, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %37, label %62

62:                                               ; preds = %58, %47
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @svn_pool_destroy(i32* %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %65
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @send_mechs(i32*, i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_ra_svn__read_tuple(i32*, i32*, i8*, i8**, i8**) #1

declare dso_local i32 @auth(i32*, i32*, i8*, i8*, %struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
