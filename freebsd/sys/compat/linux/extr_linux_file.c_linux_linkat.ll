; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_linkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_linkat_args = type { i32, i32, i32, i32, i32 }

@LINUX_AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_linkat(%struct.thread* %0, %struct.linux_linkat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_linkat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_linkat_args* %1, %struct.linux_linkat_args** %5, align 8
  %12 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LINUX_AT_SYMLINK_FOLLOW, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @AT_FDCWD, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %31 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @AT_FDCWD, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %10, align 4
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %50 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %48, i32 %51, i8** %6, i32 %52)
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UIO_USERSPACE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @linux_emul_convpath(%struct.thread* %54, i32 %57, i32 %58, i8** %7, i32 1, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @LFREEPATH(i8* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %93

67:                                               ; preds = %46
  %68 = load %struct.linux_linkat_args*, %struct.linux_linkat_args** %5, align 8
  %69 = getelementptr inbounds %struct.linux_linkat_args, %struct.linux_linkat_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LINUX_AT_SYMLINK_FOLLOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @NOFOLLOW, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @FOLLOW, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %11, align 4
  %80 = load %struct.thread*, %struct.thread** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* @UIO_SYSSPACE, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @kern_linkat(%struct.thread* %80, i32 %81, i32 %82, i8* %83, i8* %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @LFREEPATH(i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @LFREEPATH(i8* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %78, %63, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @linux_emul_convpath(%struct.thread*, i32, i32, i8**, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

declare dso_local i32 @kern_linkat(%struct.thread*, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
