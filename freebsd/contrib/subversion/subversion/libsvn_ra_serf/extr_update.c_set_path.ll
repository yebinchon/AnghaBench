; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_set_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"S:entry\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lock-token\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"start-empty\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32, i64, i8*, i32*)* @set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_path(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @apr_ltoa(i32* %21, i32 %22)
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @svn_depth_to_word(i32 %25)
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null
  %31 = load i32, i32* @SVN_VA_NULL, align 4
  %32 = call i32 @svn_xml_make_open_tag(%struct.TYPE_6__** %16, i32* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_6__** %16, i8* %33, i32* %34)
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @svn_xml_make_close_tag(%struct.TYPE_6__** %16, i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @svn_stream_write(i32 %40, i32 %43, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_6__**, i32*, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @apr_ltoa(i32*, i32) #1

declare dso_local i32 @svn_depth_to_word(i32) #1

declare dso_local i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_6__**, i8*, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_6__**, i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
