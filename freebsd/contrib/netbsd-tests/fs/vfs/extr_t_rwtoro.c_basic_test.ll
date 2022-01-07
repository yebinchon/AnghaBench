; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_rwtoro.c_basic_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_rwtoro.c_basic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.null_args = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/nullm\00", align 1
@MOUNT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, void (i8*)*, void (i8*)*)* @basic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_test(i32* %0, i8* %1, i32 %2, i32 %3, void (i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (i8*)*, align 8
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.null_args, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (i8*)* %4, void (i8*)** %11, align 8
  store void (i8*)* %5, void (i8*)** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i8*, i8** %13, align 8
  %19 = call i32 @rump_sys_mkdir(i8* %18, i32 511)
  %20 = call i32 @RL(i32 %19)
  %21 = call i32 @memset(%struct.null_args* %14, i32 0, i32 4)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @__UNCONST(i8* %22)
  %24 = getelementptr inbounds %struct.null_args, %struct.null_args* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @MOUNT_NULL, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @rump_sys_mount(i32 %25, i8* %26, i32 0, %struct.null_args* %14, i32 4)
  %28 = call i32 @RL(i32 %27)
  br label %29

29:                                               ; preds = %17, %6
  %30 = load void (i8*)*, void (i8*)** %11, align 8
  %31 = icmp ne void (i8*)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load void (i8*)*, void (i8*)** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i8*, i8** %13, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i8* [ %37, %36 ], [ %39, %38 ]
  call void %33(i8* %41)
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @remount_ro(i32* %43, i8* %44, i32 %45)
  %47 = load void (i8*)*, void (i8*)** %12, align 8
  %48 = icmp ne void (i8*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load void (i8*)*, void (i8*)** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %13, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i8* [ %54, %53 ], [ %56, %55 ]
  call void %50(i8* %58)
  br label %59

59:                                               ; preds = %57, %42
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @rump_sys_unmount(i8* %63, i32 0)
  %65 = call i32 @RL(i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @memset(%struct.null_args*, i32, i32) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, %struct.null_args*, i32) #1

declare dso_local i32 @remount_ro(i32*, i8*, i32) #1

declare dso_local i32 @rump_sys_unmount(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
