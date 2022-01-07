; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mknodat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mknodat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_mknodat_args = type { i32, i32, i32, i32 }

@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mknodat(%struct.thread* %0, %struct.linux_mknodat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_mknodat_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_mknodat_args* %1, %struct.linux_mknodat_args** %4, align 8
  %8 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %9 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AT_FDCWD, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %17 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %23 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @LCONVPATHCREAT_AT(%struct.thread* %21, i32 %24, i8** %5, i32 %25)
  %27 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %28 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %85 [
    i32 130, label %32
    i32 128, label %32
    i32 132, label %41
    i32 133, label %41
    i32 131, label %53
    i32 0, label %55
    i32 129, label %60
  ]

32:                                               ; preds = %19, %19
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @UIO_SYSSPACE, align 4
  %37 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %38 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kern_mkfifoat(%struct.thread* %33, i32 %34, i8* %35, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %87

41:                                               ; preds = %19, %19
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @UIO_SYSSPACE, align 4
  %46 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %47 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %50 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kern_mknodat(%struct.thread* %42, i32 %43, i8* %44, i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %87

53:                                               ; preds = %19
  %54 = load i32, i32* @EPERM, align 4
  store i32 %54, i32* %6, align 4
  br label %87

55:                                               ; preds = %19
  %56 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %57 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, 129
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %19, %55
  %61 = load %struct.thread*, %struct.thread** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @UIO_SYSSPACE, align 4
  %65 = load i32, i32* @O_WRONLY, align 4
  %66 = load i32, i32* @O_CREAT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @O_TRUNC, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.linux_mknodat_args*, %struct.linux_mknodat_args** %4, align 8
  %71 = getelementptr inbounds %struct.linux_mknodat_args, %struct.linux_mknodat_args* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @kern_openat(%struct.thread* %61, i32 %62, i8* %63, i32 %64, i32 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load %struct.thread*, %struct.thread** %3, align 8
  %78 = load %struct.thread*, %struct.thread** %3, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kern_close(%struct.thread* %77, i32 %82)
  br label %84

84:                                               ; preds = %76, %60
  br label %87

85:                                               ; preds = %19
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %84, %53, %41, %32
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @LFREEPATH(i8* %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @LCONVPATHCREAT_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @kern_mkfifoat(%struct.thread*, i32, i8*, i32, i32) #1

declare dso_local i32 @kern_mknodat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kern_openat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
