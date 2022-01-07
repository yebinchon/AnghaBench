; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_readline_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_readline_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symlink_baton_t = type { i8*, i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**, i8**, i8**, i32*, i32*)* @readline_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @readline_symlink(i8* %0, i32** %1, i8** %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.symlink_baton_t*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.symlink_baton_t*
  store %struct.symlink_baton_t* %17, %struct.symlink_baton_t** %13, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load i8**, i8*** %10, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8**, i8*** %9, align 8
  store i8* null, i8** %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.symlink_baton_t*, %struct.symlink_baton_t** %13, align 8
  %30 = getelementptr inbounds %struct.symlink_baton_t, %struct.symlink_baton_t* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32**, i32*** %8, align 8
  store i32* null, i32** %34, align 8
  br label %53

35:                                               ; preds = %28
  store i32 64, i32* %15, align 4
  %36 = load %struct.symlink_baton_t*, %struct.symlink_baton_t** %13, align 8
  %37 = getelementptr inbounds %struct.symlink_baton_t, %struct.symlink_baton_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_subst_read_specialfile(i32** %14, i32 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_stringbuf_from_stream(i32** %43, i32* %44, i32 64, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load i8**, i8*** %10, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.symlink_baton_t*, %struct.symlink_baton_t** %13, align 8
  %52 = getelementptr inbounds %struct.symlink_baton_t, %struct.symlink_baton_t* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %35, %33
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_subst_read_specialfile(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_from_stream(i32**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
