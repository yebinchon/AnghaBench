; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_create_ctor_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_create_ctor_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i8*, i32, i32 }

@anon_access_token = common dso_local global i32 0, align 4
@authn_access_token = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32*)* @create_ctor_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @create_ctor_baton(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @svn_pool_create(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @apr_pcalloc(i32* %10, i32 112)
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @apr_pcalloc(i32* %13, i32 24)
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* @anon_access_token, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @init_global_rights(i32* %17, i32 %18, i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* @authn_access_token, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @init_global_rights(i32* %22, i32 %23, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @svn_hash__make(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 14
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @svn_hash__make(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 13
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @svn_hash__make(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 12
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 11
  store i32* null, i32** %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @svn_hash__make(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i8* @svn_hash__make(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @svn_hash__make(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @apr_array_make(i32* %67, i32 64, i32 4)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @svn_membuf__create(i32* %74, i32 0, i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @svn_stringbuf_create_empty(i32* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = call i32 @insert_default_acl(%struct.TYPE_5__* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %86
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @init_global_rights(i32*, i32, i32*) #1

declare dso_local i8* @svn_hash__make(i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @svn_membuf__create(i32*, i32, i32*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @insert_default_acl(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
