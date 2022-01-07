; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_temp_clear_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_temp_clear_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_wc__db_temp_clear_access(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @svn_dirent_is_absolute(i8* %10)
  %12 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_3__** %8, i8** %7, i32* %13, i8* %14, i32* %15, i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @svn_error_clear(i32* %21)
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @svn_hash_sets(i32 %26, i8* %27, i32* null)
  br label %29

29:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32* @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_3__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
