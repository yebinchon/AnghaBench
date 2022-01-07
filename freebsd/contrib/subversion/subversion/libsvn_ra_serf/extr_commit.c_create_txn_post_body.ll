; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_txn_post_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_txn_post_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"create-txn-with-props\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"( create-txn )\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_txn_post_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_txn_post_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @svn_skel__make_empty_list(i32* %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_skel__unparse_proplist(i32** %14, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %14, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_skel__prepend(i32* %26, i32* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @svn_skel__prepend_str(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call %struct.TYPE_3__* @svn_skel__unparse(i32* %32, i32* %33)
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %13, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @SERF_BUCKET_SIMPLE_STRING(i8* %37, i32* %38)
  %40 = load i32**, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  br label %45

41:                                               ; preds = %5
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @SERF_BUCKET_SIMPLE_STRING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = load i32**, i32*** %6, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %41, %21
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_skel__unparse_proplist(i32**, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend(i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32* @SERF_BUCKET_SIMPLE_STRING(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
