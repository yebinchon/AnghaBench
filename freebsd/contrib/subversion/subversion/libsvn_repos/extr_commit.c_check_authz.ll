; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_check_authz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_check_authz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 (i32, i32*, i32*, i8*, i32, i32*)* }

@svn_authz_write = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_UNWRITABLE = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_UNREADABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Access denied\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.edit_baton*, i8*, i32*, i32, i32*)* @check_authz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_authz(%struct.edit_baton* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.edit_baton*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.edit_baton* %0, %struct.edit_baton** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %14 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %13, i32 0, i32 1
  %15 = load i32 (i32, i32*, i32*, i8*, i32, i32*)*, i32 (i32, i32*, i32*, i8*, i32, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, i32*, i32*, i8*, i32, i32*)* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %5
  %18 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %19 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %18, i32 0, i32 1
  %20 = load i32 (i32, i32*, i32*, i8*, i32, i32*)*, i32 (i32, i32*, i32*, i8*, i32, i32*)** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %25 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 %20(i32 %21, i32* %12, i32* %22, i8* %23, i32 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @svn_authz_write, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SVN_ERR_AUTHZ_UNWRITABLE, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @SVN_ERR_AUTHZ_UNREADABLE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32* @svn_error_create(i32 %42, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %43, i32** %6, align 8
  br label %47

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %6, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
