; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/growfs/extr_growfs.c_dev_to_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/growfs/extr_growfs.c_dev_to_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8* }
%struct.stat = type { i64, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@_PATH_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.statfs* (i8*)* @dev_to_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.statfs* @dev_to_statfs(i8* %0) #0 {
  %2 = alloca %struct.statfs*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.statfs* null, %struct.statfs** %2, align 8
  store i32 1, i32* %13, align 4
  br label %74

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @S_ISCHR(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @S_ISBLK(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.statfs* null, %struct.statfs** %2, align 8
  store i32 1, i32* %13, align 4
  br label %74

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @MNT_NOWAIT, align 4
  %35 = call i32 @getmntinfo(%struct.statfs** %6, i32 %34)
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %70, %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.statfs*, %struct.statfs** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i64 %43
  store %struct.statfs* %44, %struct.statfs** %7, align 8
  %45 = load %struct.statfs*, %struct.statfs** %7, align 8
  %46 = getelementptr inbounds %struct.statfs, %struct.statfs* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i32, i32* @_PATH_DEV, align 4
  %54 = call i32 @strcpy(i8* %17, i32 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strcat(i8* %17, i8* %55)
  store i8* %17, i8** %10, align 8
  br label %57

57:                                               ; preds = %52, %40
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @stat(i8* %58, %struct.stat* %5)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load %struct.statfs*, %struct.statfs** %7, align 8
  store %struct.statfs* %68, %struct.statfs** %2, align 8
  store i32 1, i32* %13, align 4
  br label %74

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %36

73:                                               ; preds = %36
  store %struct.statfs* null, %struct.statfs** %2, align 8
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %67, %32, %21
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load %struct.statfs*, %struct.statfs** %2, align 8
  ret %struct.statfs* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISCHR(i32) #2

declare dso_local i32 @S_ISBLK(i32) #2

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
