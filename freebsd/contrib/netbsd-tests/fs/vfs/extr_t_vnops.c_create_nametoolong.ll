; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_create_nametoolong.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_create_nametoolong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"chdir mountpoint\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_PC_NAME_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pathconf\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@_PC_NO_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @create_nametoolong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_nametoolong(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @rump_sys_chdir(i8* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @_PC_NAME_MAX, align 4
  %16 = call i64 @rump_sys_pathconf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @memset(i8* %32, i8 signext 97, i64 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* @_PC_NO_TRUNC, align 4
  %39 = call i64 @rump_sys_pathconf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @rump_sys_open(i8* %45, i32 %48, i32 438)
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ENAMETOOLONG, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %52
  %60 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55, %44
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @rump_sys_close(i32 %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @rump_sys_unlink(i8* %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73, %70
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @free(i8* %80)
  %82 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i64 @rump_sys_pathconf(i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
