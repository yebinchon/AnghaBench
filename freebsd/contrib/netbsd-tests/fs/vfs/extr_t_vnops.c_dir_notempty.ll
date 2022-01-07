; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_dir_notempty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_dir_notempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@USES_DIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s/dir\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/dir/file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"create file\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"non-empty directory removed succesfully\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot remove dir/file\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"remove directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @dir_notempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_notempty(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @USES_DIRS, align 4
  %18 = trunc i64 %11 to i32
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @snprintf(i8* %13, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @rump_sys_mkdir(i8* %13, i32 511)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = trunc i64 %15 to i32
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @snprintf(i8* %16, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @rump_sys_open(i8* %16, i32 %31, i32 511)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @rump_sys_close(i32 %38)
  %40 = call i32 @rump_sys_rmdir(i8* %13)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ENOTEMPTY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %37
  %48 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = call i32 @rump_sys_unlink(i8* %16)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i32 @rump_sys_rmdir(i8* %13)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #2

declare dso_local i32 @atf_tc_fail_errno(i8*) #2

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #2

declare dso_local i32 @rump_sys_close(i32) #2

declare dso_local i32 @rump_sys_rmdir(i8*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @rump_sys_unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
