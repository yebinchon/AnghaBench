; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_..commonsnapshot.c_fs_activity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_..commonsnapshot.c_fs_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrkpid = common dso_local global i32 0, align 4
@activity_stop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s/d%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/d%d/f%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fs_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fs_activity(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32, i32* @wrkpid, align 4
  %9 = call i32 @rump_pub_lwproc_newlwp(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @rump_sys_mkdir(i8* %10, i32 511)
  %12 = call i32 @RL(i32 %11)
  br label %13

13:                                               ; preds = %78, %1
  %14 = load i32, i32* @activity_stop, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %79

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %22, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %27 = call i32 @rump_sys_mkdir(i8* %26, i32 511)
  %28 = call i32 @RL(i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %40, %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %33, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %39 = call i32 @makefile(i8* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %18

47:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %56, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %58, i32 %59)
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %62 = call i32 @rump_sys_unlink(i8* %61)
  %63 = call i32 @RL(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %52

67:                                               ; preds = %52
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %68, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70)
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %73 = call i32 @rump_sys_rmdir(i8* %72)
  %74 = call i32 @RL(i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %48

78:                                               ; preds = %48
  br label %13

79:                                               ; preds = %13
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @rump_sys_rmdir(i8* %80)
  %82 = call i32 @RL(i32 %81)
  %83 = call i32 (...) @rump_pub_lwproc_releaselwp()
  ret i8* null
}

declare dso_local i32 @rump_pub_lwproc_newlwp(i32) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @makefile(i8*) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @rump_sys_rmdir(i8*) #1

declare dso_local i32 @rump_pub_lwproc_releaselwp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
