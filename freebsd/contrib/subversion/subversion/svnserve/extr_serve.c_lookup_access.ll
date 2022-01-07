; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lookup_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lookup_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@svn_authz_write = common dso_local global i32 0, align 4
@WRITE_ACCESS = common dso_local global i32 0, align 4
@READ_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_8__*, i32, i8*, i64)* @lookup_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_access(i32* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @svn_authz_write, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @WRITE_ACCESS, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @READ_ACCESS, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @authz_check_access(i64* %13, i8* %25, i32 %26, %struct.TYPE_8__* %27, i32* %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i32*, i32** %14, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = call i32 @log_error(i32* %33, %struct.TYPE_8__* %34)
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @svn_error_clear(i32* %36)
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %6, align 8
  br label %61

39:                                               ; preds = %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call i32 @current_access(%struct.TYPE_8__* %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %47
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %50, %44, %39
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %57, %32
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

declare dso_local i32* @authz_check_access(i64*, i8*, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @log_error(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @current_access(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
