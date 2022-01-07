; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_fchownat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_fchownat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_fchownat_args = type { i32, i32, i32, i32, i32 }

@LINUX_AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_fchownat(%struct.thread* %0, %struct.linux_fchownat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_fchownat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_fchownat_args* %1, %struct.linux_fchownat_args** %5, align 8
  %10 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @AT_FDCWD, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %33, i32 %36, i8** %6, i32 %37)
  %39 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %48

46:                                               ; preds = %31
  %47 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  store i32 %49, i32* %9, align 4
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @UIO_SYSSPACE, align 4
  %54 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %55 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.linux_fchownat_args*, %struct.linux_fchownat_args** %5, align 8
  %58 = getelementptr inbounds %struct.linux_fchownat_args, %struct.linux_fchownat_args* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @kern_fchownat(%struct.thread* %50, i32 %51, i8* %52, i32 %53, i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @LFREEPATH(i8* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %48, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @kern_fchownat(%struct.thread*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
