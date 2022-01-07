; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_svn_ra_serf__v2_get_youngest_revnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_svn_ra_serf__v2_get_youngest_revnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The OPTIONS response did not include the youngest revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__v2_get_youngest_revnum(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(i32* %9)
  %11 = call i32 @SVN_ERR_ASSERT(i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @create_options_req(%struct.TYPE_7__** %8, i32* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_8__* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 200
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_8__* %32)
  %34 = call i32* @svn_error_trace(i32 %33)
  store i32* %34, i32** %4, align 8
  br label %51

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SVN_IS_VALID_REVNUM(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %44 = call i32* @svn_error_create(i32 %42, i32* null, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %45, %41, %29
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_options_req(%struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
