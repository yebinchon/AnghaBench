; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_args = type { i32 }

@quota_test5.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"test4: unknown option %c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/diskdev\00", align 1
@MOUNT_FFS = common dso_local global i32 0, align 4
@FSTEST_MNTNAME = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mount ffs rw %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unlinked_file\00", align 1
@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"create %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"test unlinked_file\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unlink unlinked_file\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"fsync unlinked_file\00", align 1
@RUMP_RB_NOSYNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"reboot failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quota_test5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_test5(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ufs_args, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp ult i32 %14, %16
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %48

20:                                               ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %36 [
    i32 76, label %27
    i32 82, label %30
    i32 85, label %33
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %44

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %33, %30, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %10

48:                                               ; preds = %18
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = call i32 @__UNCONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @MOUNT_FFS, align 4
  %55 = load i32, i32* @FSTEST_MNTNAME, align 4
  %56 = load i32, i32* @MNT_UPDATE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @MNT_LOG, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %56, %63
  %65 = call i32 @rump_sys_mount(i32 %54, i32 %55, i32 %64, %struct.ufs_args* %9, i32 4)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @FSTEST_MNTNAME, align 4
  %69 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i32, i32* @O_EXCL, align 4
  %76 = load i32, i32* @O_CREAT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @O_RDWR, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @rump_sys_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 420)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %74
  %86 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test5.buf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test5.buf, i64 0, i64 0))
  %89 = call i32 @rump_sys_write(i32 %87, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test5.buf, i64 0, i64 0), i32 %88)
  %90 = call i32 @rump_sys_unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %85
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @rump_sys_fsync(i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* @RUMP_RB_NOSYNC, align 4
  %102 = call i32 @rump_sys_reboot(i32 %101, i32* null)
  %103 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %105

104:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @rump_sys_mount(i32, i32, i32, %struct.ufs_args*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @rump_sys_fsync(i32) #1

declare dso_local i32 @rump_sys_reboot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
