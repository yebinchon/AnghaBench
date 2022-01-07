; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_response_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_response_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @response_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @response_done(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @svn_ra_serf__server_error_create(%struct.TYPE_6__* %27, i32* %28)
  store i32* %29, i32** %4, align 8
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 400
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 199
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_6__* %43)
  %45 = call i32* @svn_error_trace(i32 %44)
  store i32* %45, i32** %4, align 8
  br label %69

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 300
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 399
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_6__* %64)
  %66 = call i32* @svn_error_trace(i32 %65)
  store i32* %66, i32** %4, align 8
  br label %69

67:                                               ; preds = %58, %52, %46
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %67, %63, %42, %26, %19
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @svn_ra_serf__server_error_create(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
