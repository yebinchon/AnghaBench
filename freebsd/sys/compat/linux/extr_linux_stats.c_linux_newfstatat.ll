; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_newfstatat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_newfstatat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_newfstatat_args = type { i32, i32, i32, i32 }
%struct.stat = type { i32 }

@LINUX_AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_newfstatat(%struct.thread* %0, %struct.linux_newfstatat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_newfstatat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_newfstatat_args* %1, %struct.linux_newfstatat_args** %5, align 8
  %11 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %9, align 4
  %32 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @AT_FDCWD, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %41 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  store i32 %44, i32* %8, align 4
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %45, i32 %48, i8** %6, i32 %49)
  %51 = load %struct.thread*, %struct.thread** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @UIO_SYSSPACE, align 4
  %56 = call i32 @linux_kern_statat(%struct.thread* %51, i32 %52, i32 %53, i8* %54, i32 %55, %struct.stat* %10)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load %struct.linux_newfstatat_args*, %struct.linux_newfstatat_args** %5, align 8
  %61 = getelementptr inbounds %struct.linux_newfstatat_args, %struct.linux_newfstatat_args* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @newstat_copyout(%struct.stat* %10, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %43
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @LFREEPATH(i8* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @linux_kern_statat(%struct.thread*, i32, i32, i8*, i32, %struct.stat*) #1

declare dso_local i32 @newstat_copyout(%struct.stat*, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
