; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_send_unversioned_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_send_unversioned_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_status_baton = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }

@svn_wc_status_external = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.walk_status_baton*, i8*, i32*, i64, i32*, i64, i32 (i8*, i8*, %struct.TYPE_6__*, i32*)*, i8*, i32*)* @send_unversioned_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_unversioned_item(%struct.walk_status_baton* %0, i8* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 (i8*, i8*, %struct.TYPE_6__*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.walk_status_baton*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32 (i8*, i8*, %struct.TYPE_6__*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i8*, align 8
  store %struct.walk_status_baton* %0, %struct.walk_status_baton** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 (i8*, i8*, %struct.TYPE_6__*, i32*)* %6, i32 (i8*, i8*, %struct.TYPE_6__*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @svn_dirent_basename(i8* %24, i32* null)
  store i8* %25, i8** %23, align 8
  %26 = load i8*, i8** %23, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = call i64 @svn_wc_match_ignore_list(i8* %26, i32* %27, i32* %28)
  store i64 %29, i64* %20, align 8
  %30 = load %struct.walk_status_baton*, %struct.walk_status_baton** %11, align 8
  %31 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @assemble_unversioned(%struct.TYPE_7__** %22, i32 %32, i8* %33, i32* %34, i64 %35, i64 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.walk_status_baton*, %struct.walk_status_baton** %11, align 8
  %42 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i64 @is_external_path(i32 %43, i8* %44, i32* %45)
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %21, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %9
  %50 = load i32, i32* @svn_wc_status_external, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %9
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %20, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %20, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %21, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68, %65, %62
  %72 = load i32 (i8*, i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, i8*, %struct.TYPE_6__*, i32*)** %17, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %19, align 8
  %78 = call i32 %72(i8* %73, i8* %74, %struct.TYPE_6__* %76, i32* %77)
  %79 = call i32* @svn_error_trace(i32 %78)
  store i32* %79, i32** %10, align 8
  br label %82

80:                                               ; preds = %68
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %10, align 8
  br label %82

82:                                               ; preds = %80, %71
  %83 = load i32*, i32** %10, align 8
  ret i32* %83
}

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i64 @svn_wc_match_ignore_list(i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assemble_unversioned(%struct.TYPE_7__**, i32, i8*, i32*, i64, i64, i32*, i32*) #1

declare dso_local i64 @is_external_path(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
