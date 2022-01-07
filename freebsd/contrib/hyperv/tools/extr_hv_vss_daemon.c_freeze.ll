; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_vss_daemon.c_freeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_vss_daemon.c_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32, i32, i32 }

@_PATH_UFSSUSPEND = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@g_ufs_suspend_handle = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to open %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"There is no mount information\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dev = common dso_local global i8* null, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@UFSSUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"error: %d\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Successfully suspend fs: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeze() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.statfs*, align 8
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @_PATH_UFSSUSPEND, align 4
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open(i32 %7, i32 %8)
  store i32 %9, i32* @g_ufs_suspend_handle, align 4
  %10 = load i32, i32* @g_ufs_suspend_handle, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = load i32, i32* @_PATH_UFSSUSPEND, align 4
  %15 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %1, align 4
  br label %88

17:                                               ; preds = %0
  %18 = load i32, i32* @MNT_NOWAIT, align 4
  %19 = call i32 @getmntinfo(%struct.statfs** %2, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %1, align 4
  br label %88

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %83, %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.statfs*, %struct.statfs** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i64 %35
  store %struct.statfs* %36, %struct.statfs** %3, align 8
  %37 = load %struct.statfs*, %struct.statfs** %3, align 8
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** @dev, align 8
  %41 = load i8*, i8** @dev, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i64 @strncmp(i32 %39, i8* %40, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %83

46:                                               ; preds = %32
  %47 = load %struct.statfs*, %struct.statfs** %3, align 8
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MNT_RDONLY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %83

54:                                               ; preds = %46
  %55 = load %struct.statfs*, %struct.statfs** %3, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strncmp(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %83

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @g_ufs_suspend_handle, align 4
  %65 = load i32, i32* @UFSSUSPEND, align 4
  %66 = load %struct.statfs*, %struct.statfs** %3, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 3
  %68 = call i32 @ioctl(i32 %64, i32 %65, i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @LOG_ERR, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %5, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load i32, i32* @LOG_INFO, align 4
  %78 = load %struct.statfs*, %struct.statfs** %3, align 8
  %79 = getelementptr inbounds %struct.statfs, %struct.statfs* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %60, %53, %45
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %29

86:                                               ; preds = %29
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %86, %22, %12
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @VSS_LOG(i32, i8*, ...) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
