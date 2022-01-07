; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_latest_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_latest_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"get-latest-rev\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @get_latest_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_latest_rev(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @log_command(%struct.TYPE_6__* %13, i32* %14, i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 @trivial_auth_request(i32* %18, i32* %19, %struct.TYPE_6__* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @svn_fs_youngest_rev(i32* %10, i32 %27, i32* %28)
  %30 = call i32 @SVN_CMD_ERR(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @svn_ra_svn__write_cmd_response(i32* %31, i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %36
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @log_command(%struct.TYPE_6__*, i32*, i32*, i8*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
