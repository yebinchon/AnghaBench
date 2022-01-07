; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_get_generic_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_get_generic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, %struct.TYPE_7__*, i8*, i32, i32*)* @get_generic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_generic_config(i32** %0, i32** %1, %struct.TYPE_7__* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call %struct.TYPE_6__* @svn_stringbuf_create_empty(i32* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %13, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @svn_config_read3(i32** %14, i8* %19, i32 %20, i32 %21, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_6__* %26, i32* %27)
  %29 = load i32*, i32** %14, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @svn_config__write(i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32, i32* @svn_checksum_md5, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @svn_checksum(i32** %33, i32 %34, i32 %37, i32 %40, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_6__* %46, i32* %49)
  %51 = load i32**, i32*** %7, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %52
}

declare dso_local %struct.TYPE_6__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_read3(i32**, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_config__write(i32*, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_checksum(i32**, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
