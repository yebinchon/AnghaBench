; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_wrap_external_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_wrap_external_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 (i32, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@SVN_ERR_CANCELLED = common dso_local global i64 0, align 8
@svn_wc_notify_failed_external = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i32*)* @wrap_external_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @wrap_external_error(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SVN_ERR_CANCELLED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %21, align 8
  %23 = icmp ne i32 (i32, %struct.TYPE_11__*, i32*)* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @svn_wc_notify_failed_external, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.TYPE_11__* @svn_wc_create_notify(i8* %25, i32 %26, i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 %34(i32 %37, %struct.TYPE_11__* %38, i32* %39)
  br label %41

41:                                               ; preds = %24, %19
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 @svn_error_clear(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %5, align 8
  br label %47

45:                                               ; preds = %13, %4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %5, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %48
}

declare dso_local %struct.TYPE_11__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
