; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_set_rdma_node_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_set_rdma_node_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@sys_dir = common dso_local global i8* null, align 8
@SYS_INFINIBAND = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to open %s\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@set_retry_cnt = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"retrying set Node Description on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @set_rdma_node_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rdma_node_desc(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = trunc i64 %13 to i32
  %17 = load i8*, i8** @sys_dir, align 8
  %18 = load i8*, i8** @SYS_INFINIBAND, align 8
  %19 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = sub i64 %13, 1
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  store i8 0, i8* %21, align 1
  %22 = call i32* @opendir(i8* %15)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @LOG_INFO, align 4
  %27 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %67, %44, %30
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.dirent* @readdir(i32* %32)
  store %struct.dirent* %33, %struct.dirent** %7, align 8
  %34 = icmp ne %struct.dirent* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32, i32* @set_retry_cnt, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.dirent*, %struct.dirent** %7, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %31

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %59, %45
  %47 = load %struct.dirent*, %struct.dirent** %7, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @update_node_desc(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 0
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi i1 [ false, %46 ], [ %56, %54 ]
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load %struct.dirent*, %struct.dirent** %7, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @syslog(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %46

67:                                               ; preds = %57
  br label %31

68:                                               ; preds = %31
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @closedir(i32* %69)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %25
  %72 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @update_node_desc(i8*, i8*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
