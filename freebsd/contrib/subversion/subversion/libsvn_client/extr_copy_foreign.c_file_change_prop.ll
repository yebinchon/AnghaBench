; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_change_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_change_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i32, i64 }

@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @file_change_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_change_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton_t*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.file_baton_t*
  store %struct.file_baton_t* %13, %struct.file_baton_t** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @svn_property_kind2(i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @svn_prop_regular_kind, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %22 = call i32 @strcmp(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %4
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %5, align 8
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %28 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %33 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @apr_hash_make(i32 %34)
  %36 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %37 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %43 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %46 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @apr_pstrdup(i32 %47, i8* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %52 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @svn_string_dup(i32* %50, i32 %53)
  %55 = call i32 @svn_hash_sets(i64 %44, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %41, %38
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %56, %24
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i64, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_string_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
