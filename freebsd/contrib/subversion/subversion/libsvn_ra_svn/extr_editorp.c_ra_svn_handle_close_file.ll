; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i8*, i32*)* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"s(?c)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_10__*)* @ra_svn_handle_close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_handle_close_file(i32* %0, i32* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @svn_ra_svn__parse_tuple(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %9, i8** %11)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @lookup_token(%struct.TYPE_10__* %15, i32* %16, i32 %17, %struct.TYPE_9__** %10)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 %24(i32 %27, i8* %28, i32* %29)
  %31 = call i32 @SVN_CMD_ERR(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @remove_token(%struct.TYPE_10__* %32, i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @svn_pool_clear(i32 %43)
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32**, i8**) #1

declare dso_local i32 @lookup_token(%struct.TYPE_10__*, i32*, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @remove_token(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
