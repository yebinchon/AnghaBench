; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_multistatus.c_svn_ra_serf__handle_multistatus_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_multistatus.c_svn_ra_serf__handle_multistatus_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__handle_multistatus_only(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @serf_bucket_response_get_headers(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i8* @serf_bucket_headers_get(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @strncasecmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @svn_ra_serf__setup_error_parsing(i32** %12, %struct.TYPE_3__* %32, i32 %33, i32 %36, i32 %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  br label %49

45:                                               ; preds = %27, %4
  %46 = load i32, i32* @TRUE, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %31
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @serf_bucket_response_get_headers(i32*) #1

declare dso_local i8* @serf_bucket_headers_get(i32*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__setup_error_parsing(i32**, %struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
