; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_nametoolong.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_nametoolong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"chdir mountpoint\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_PC_NAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pathconf\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@_PC_NO_TRUNC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @rename_nametoolong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_nametoolong(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @FSTYPE_RUMPFS(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @rump_sys_chdir(i8* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* @_PC_NAME_MAX, align 4
  %23 = call i64 @rump_sys_pathconf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @memset(i8* %39, i8 signext 97, i64 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = load i32, i32* @O_CREAT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @rump_sys_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 438)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rump_sys_close(i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* @_PC_NO_TRUNC, align 4
  %61 = call i64 @rump_sys_pathconf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENAMETOOLONG, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74, %71
  %79 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74, %66
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @rump_sys_unlink(i8* %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @free(i8* %90)
  %92 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i64 @rump_sys_pathconf(i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_rename(i8*, i8*) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
