; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_setup_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_setup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32*, i32, i32*, i32*)*, i32, i32, i32, i32, %struct.TYPE_5__*, i64, i32, i32 (i32**, i32, i32*, i32*, i32*)* }
%struct.TYPE_5__ = type { i64 }

@svn_tristate_false = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*, i32**, i32*, i32*)* @setup_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_request(i32* %0, %struct.TYPE_4__* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 9
  %17 = load i32 (i32**, i32, i32*, i32*, i32*)*, i32 (i32**, i32, i32*, i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (i32**, i32, i32*, i32*, i32*)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @serf_request_get_alloc(i32* %20)
  store i32* %21, i32** %14, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 9
  %24 = load i32 (i32**, i32, i32*, i32*, i32*)*, i32 (i32**, i32, i32*, i32*, i32*)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 %24(i32** %11, i32 %27, i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %34

33:                                               ; preds = %5
  store i32* null, i32** %11, align 8
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8* null, i8** %13, align 8
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @svn_tristate_false, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %50

49:                                               ; preds = %40
  store i8* null, i8** %13, align 8
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32*, i32** %6, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @setup_serf_req(i32* %52, i32** %53, i32** %12, %struct.TYPE_5__* %56, i32 %59, i32 %62, i32* %63, i32 %66, i8* %67, i32 %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32 (i32*, i32, i32*, i32*)*, i32 (i32*, i32, i32*, i32*)** %79, align 8
  %81 = icmp ne i32 (i32*, i32, i32*, i32*)* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %51
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32 (i32*, i32, i32*, i32*)*, i32 (i32*, i32, i32*, i32*)** %84, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 %85(i32* %86, i32 %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %94

94:                                               ; preds = %82, %51
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32* @serf_request_get_alloc(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @setup_serf_req(i32*, i32**, i32**, %struct.TYPE_5__*, i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
