; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_unlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_unlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_unlinkat_args = type { i32, i32, i32 }
%struct.stat = type { i32 }

@LINUX_AT_REMOVEDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@FD_NONE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_unlinkat(%struct.thread* %0, %struct.linux_unlinkat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_unlinkat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_unlinkat_args* %1, %struct.linux_unlinkat_args** %5, align 8
  %10 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LINUX_AT_REMOVEDIR, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @AT_FDCWD, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %33, i32 %36, i8** %6, i32 %37)
  %39 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LINUX_AT_REMOVEDIR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @FD_NONE, align 4
  %50 = load i32, i32* @UIO_SYSSPACE, align 4
  %51 = call i32 @kern_frmdirat(%struct.thread* %46, i32 %47, i8* %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %7, align 4
  br label %59

52:                                               ; preds = %31
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @FD_NONE, align 4
  %57 = load i32, i32* @UIO_SYSSPACE, align 4
  %58 = call i32 @kern_funlinkat(%struct.thread* %53, i32 %54, i8* %55, i32 %56, i32 %57, i32 0, i32 0)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @EPERM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load %struct.linux_unlinkat_args*, %struct.linux_unlinkat_args** %5, align 8
  %65 = getelementptr inbounds %struct.linux_unlinkat_args, %struct.linux_unlinkat_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LINUX_AT_REMOVEDIR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %63
  %71 = load %struct.thread*, %struct.thread** %4, align 8
  %72 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @UIO_SYSSPACE, align 4
  %76 = call i64 @kern_statat(%struct.thread* %71, i32 %72, i32 %73, i8* %74, i32 %75, %struct.stat* %9, i32* null)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @S_ISDIR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @EISDIR, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %78, %70
  br label %86

86:                                               ; preds = %85, %63, %59
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @LFREEPATH(i8* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @kern_frmdirat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kern_funlinkat(%struct.thread*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @kern_statat(%struct.thread*, i32, i32, i8*, i32, %struct.stat*, i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
