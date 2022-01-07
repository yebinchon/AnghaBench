; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_link_args = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@CLOUDABI_LOOKUP_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_link(%struct.thread* %0, %struct.cloudabi_sys_file_link_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_link_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_link_args* %1, %struct.cloudabi_sys_file_link_args** %5, align 8
  %9 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %13 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @copyin_path(i32 %11, i32 %14, i8** %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %22 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %25 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @copyin_path(i32 %23, i32 %26, i8** %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @cloudabi_freestr(i8* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %20
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %37 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %41 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @UIO_SYSSPACE, align 4
  %46 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %5, align 8
  %47 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CLOUDABI_LOOKUP_SYMLINK_FOLLOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @FOLLOW, align 4
  br label %57

55:                                               ; preds = %34
  %56 = load i32, i32* @NOFOLLOW, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @kern_linkat(%struct.thread* %35, i32 %39, i32 %42, i8* %43, i8* %44, i32 %45, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @cloudabi_freestr(i8* %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @cloudabi_freestr(i8* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %30, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @copyin_path(i32, i32, i8**) #1

declare dso_local i32 @cloudabi_freestr(i8*) #1

declare dso_local i32 @kern_linkat(%struct.thread*, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
