; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i64, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@TFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"union compare failed: %d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kiekko\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"invisibility failed: %d (%s)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@DT_WHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"removed file non-white-outed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8192 x i8], align 16
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @mountunion(i8* %17, i8* %16)
  %19 = load i8*, i8** @TFILE, align 8
  %20 = call i32 @xput_tfile(i8* %16, i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** @TFILE, align 8
  %23 = call i32 @xread_tfile(i8* %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @xput_tfile(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @xread_tfile(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = call i32 (...) @FSTEST_ENTER()
  %44 = load i8*, i8** @TFILE, align 8
  %45 = call i32 @rump_sys_unlink(i8* %44)
  %46 = call i32 @RL(i32 %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = load i8*, i8** @TFILE, align 8
  %49 = call i32 @rump_sys_stat(i8* %48, %struct.stat* %8)
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @ATF_REQUIRE_ERRNO(i32 %47, i32 %51)
  %53 = call i32 (...) @FSTEST_EXIT()
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = call i32 @rump_sys_open(i8* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = call i32 @RL(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %60 = call i32 @rump_sys_getdents(i32 %58, i8* %59, i32 8192)
  store i32 %60, i32* %12, align 4
  %61 = call i32 @RL(i32 %60)
  %62 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %63 = bitcast i8* %62 to %struct.dirent*
  store %struct.dirent* %63, %struct.dirent** %9, align 8
  br label %64

64:                                               ; preds = %88, %42
  %65 = load %struct.dirent*, %struct.dirent** %9, align 8
  %66 = bitcast %struct.dirent* %65 to i8*
  %67 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp ult i8* %66, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %64
  %73 = load %struct.dirent*, %struct.dirent** %9, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** @TFILE, align 8
  %77 = call i64 @strcmp(i32 %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.dirent*, %struct.dirent** %9, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DT_WHT, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79, %72
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.dirent*, %struct.dirent** %9, align 8
  %90 = call %struct.dirent* @_DIRENT_NEXT(%struct.dirent* %89)
  store %struct.dirent* %90, %struct.dirent** %9, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @rump_sys_close(i32 %92)
  %94 = call i32 @RL(i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @rump_sys_unmount(i8* %95, i32 0)
  %97 = call i32 @RL(i32 %96)
  %98 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mountunion(i8*, i8*) #2

declare dso_local i32 @xput_tfile(i8*, i8*) #2

declare dso_local i32 @xread_tfile(i8*, i8*) #2

declare dso_local i32 @atf_tc_fail(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_unlink(i8*) #2

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #2

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #2

declare dso_local i32 @FSTEST_EXIT(...) #2

declare dso_local i32 @rump_sys_open(i8*, i32) #2

declare dso_local i32 @rump_sys_getdents(i32, i8*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local %struct.dirent* @_DIRENT_NEXT(%struct.dirent*) #2

declare dso_local i32 @rump_sys_close(i32) #2

declare dso_local i32 @rump_sys_unmount(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
