; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_find_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_CONFIG__DEFAULT_SECTION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i8*, %struct.TYPE_6__**)* @find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_option(%struct.TYPE_5__* %0, i8* %1, i8* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @get_hash_value(i32 %15, i32 %18, i8* %19, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %25 = icmp ne %struct.TYPE_6__** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %29, align 8
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @get_hash_value(i32 %41, i32 %44, i8* %45, i32 %48)
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** @SVN_CONFIG__DEFAULT_SECTION, align 8
  %56 = call i64 @apr_strnatcasecmp(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i8*, i8** @SVN_CONFIG__DEFAULT_SECTION, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32* @find_option(%struct.TYPE_5__* %59, i8* %60, i8* %61, %struct.TYPE_6__** %11)
  store i32* %62, i32** %12, align 8
  br label %63

63:                                               ; preds = %58, %53, %36
  %64 = load i32*, i32** %12, align 8
  store i32* %64, i32** %5, align 8
  br label %66

65:                                               ; preds = %33, %30
  store i32* null, i32** %5, align 8
  br label %66

66:                                               ; preds = %65, %63
  %67 = load i32*, i32** %5, align 8
  ret i32* %67
}

declare dso_local i8* @get_hash_value(i32, i32, i8*, i32) #1

declare dso_local i64 @apr_strnatcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
