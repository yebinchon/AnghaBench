; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_send_dirent_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_send_dirent_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@SVN_DIRENT_SIZE = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_SIZE = common dso_local global i32 0, align 4
@SVN_DIRENT_HAS_PROPS = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_HAS_PROPS = common dso_local global i32 0, align 4
@SVN_DIRENT_CREATED_REV = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_CREATED_REV = common dso_local global i32 0, align 4
@SVN_DIRENT_TIME = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_TIME = common dso_local global i32 0, align 4
@SVN_DIRENT_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_RA_SVN_DIRENT_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @send_dirent_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_dirent_fields(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SVN_RA_SVN_DIRENT_KIND, align 4
  %15 = call i32 @svn_ra_svn__write_word(i32* %12, i32* %13, i32 %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SVN_DIRENT_SIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SVN_RA_SVN_DIRENT_SIZE, align 4
  %26 = call i32 @svn_ra_svn__write_word(i32* %23, i32* %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SVN_DIRENT_HAS_PROPS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @SVN_RA_SVN_DIRENT_HAS_PROPS, align 4
  %37 = call i32 @svn_ra_svn__write_word(i32* %34, i32* %35, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SVN_DIRENT_CREATED_REV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @SVN_RA_SVN_DIRENT_CREATED_REV, align 4
  %48 = call i32 @svn_ra_svn__write_word(i32* %45, i32* %46, i32 %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SVN_DIRENT_TIME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @SVN_RA_SVN_DIRENT_TIME, align 4
  %59 = call i32 @svn_ra_svn__write_word(i32* %56, i32* %57, i32 %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SVN_DIRENT_LAST_AUTHOR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @SVN_RA_SVN_DIRENT_LAST_AUTHOR, align 4
  %70 = call i32 @svn_ra_svn__write_word(i32* %67, i32* %68, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_word(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
