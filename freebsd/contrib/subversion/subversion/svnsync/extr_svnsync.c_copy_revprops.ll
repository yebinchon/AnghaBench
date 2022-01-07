; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_copy_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_copy_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i64, i64, i64, i8*, i32*, i32*)* @copy_revprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_revprops(i32* %0, i32* %1, i32 %2, i64 %3, i64 %4, i64 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i32*, i32** %18, align 8
  %24 = call i32* @svn_pool_create(i32* %23)
  store i32* %24, i32** %19, align 8
  store i32 0, i32* %22, align 4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %19, align 8
  %31 = call i32 @svn_ra_rev_proplist(i32* %28, i32 %29, i32** %20, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %34

33:                                               ; preds = %9
  store i32* null, i32** %20, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @svn_ra_rev_proplist(i32* %35, i32 %36, i32** %21, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %21, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @svnsync_normalize_revprops(i32* %40, i32* %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %21, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32*, i32** %20, align 8
  br label %54

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32* [ %52, %51 ], [ null, %53 ]
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @write_revprops(i32* %22, i32* %46, i32 %47, i32* %48, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @remove_props_not_in_source(i32* %62, i32 %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %22, align 4
  %74 = icmp sgt i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %18, align 8
  %78 = call i32 @log_properties_copied(i32 %75, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %72, %69
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @svn_pool_destroy(i32* %81)
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_rev_proplist(i32*, i32, i32**, i32*) #1

declare dso_local i32 @svnsync_normalize_revprops(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @write_revprops(i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @remove_props_not_in_source(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @log_properties_copied(i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
