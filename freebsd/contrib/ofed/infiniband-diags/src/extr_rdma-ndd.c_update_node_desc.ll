; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_update_node_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_update_node_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s/%s/%s/node_desc\00", align 1
@sys_dir = common dso_local global i8* null, align 8
@SYS_INFINIBAND = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to read %s\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: no change (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: change (%s) -> (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @update_node_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_node_desc(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = trunc i64 %16 to i32
  %20 = load i8*, i8** @sys_dir, align 8
  %21 = load i8*, i8** @SYS_INFINIBAND, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i8* %22)
  %24 = sub i64 %16, 1
  %25 = getelementptr inbounds i8, i8* %18, i64 %24
  store i8 0, i8* %25, align 1
  %26 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %79

34:                                               ; preds = %3
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @fgets(i8* %35, i32 128, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %75

44:                                               ; preds = %34
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %46 = call i32 @newline_to_null(i8* %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @build_node_desc(i8* %47, i32 64, i8* %48, i8* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %56 = call i64 @strncmp(i8* %54, i8* %55, i32 64)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @LOG_INFO, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %62 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* %61)
  br label %74

63:                                               ; preds = %53, %44
  %64 = load i32, i32* @LOG_INFO, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %68 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %66, i8* %67)
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @rewind(i32* %69)
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %73 = call i32 @fprintf(i32* %71, i8* %72)
  br label %74

74:                                               ; preds = %63, %58
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %29
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @newline_to_null(i8*) #2

declare dso_local i32 @build_node_desc(i8*, i32, i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
