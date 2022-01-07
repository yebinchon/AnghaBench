; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"Revprop manifest file for r%ld is corrupt\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i64, i32*, i32*)* @read_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_manifest(i32** %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @read_packed_data_checksummed(i32** %13, i32* %17, i32* %18, i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @apr_psprintf(i32* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 @SVN_ERR_W(i32 %20, i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = call i32* @svn_packed__first_int_stream(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32* @svn_packed__next_int_stream(i32* %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i64 @svn_packed__int_count(i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %12, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32* @apr_array_make(i32* %31, i32 %33, i32 16)
  %35 = load i32**, i32*** %6, align 8
  store i32* %34, i32** %35, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %52, %5
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.TYPE_3__* @apr_array_push(i32* %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %16, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i64 @svn_packed__get_int(i32* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @svn_packed__get_uint(i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %11, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %56
}

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @read_packed_data_checksummed(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32* @svn_packed__first_int_stream(i32*) #1

declare dso_local i32* @svn_packed__next_int_stream(i32*) #1

declare dso_local i64 @svn_packed__int_count(i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @apr_array_push(i32*) #1

declare dso_local i64 @svn_packed__get_int(i32*) #1

declare dso_local i32 @svn_packed__get_uint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
