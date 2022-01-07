; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_pread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_pread_args = type { i32, i32, i32, i32 }
%struct.vnode = type { i64 }

@cap_pread_rights = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_pread(%struct.thread* %0, %struct.linux_pread_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_pread_args*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_pread_args* %1, %struct.linux_pread_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.linux_pread_args*, %struct.linux_pread_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_pread_args, %struct.linux_pread_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.linux_pread_args*, %struct.linux_pread_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_pread_args, %struct.linux_pread_args* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.linux_pread_args*, %struct.linux_pread_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_pread_args, %struct.linux_pread_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.linux_pread_args*, %struct.linux_pread_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_pread_args, %struct.linux_pread_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kern_pread(%struct.thread* %8, i32 %11, i32 %14, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.linux_pread_args*, %struct.linux_pread_args** %5, align 8
  %27 = getelementptr inbounds %struct.linux_pread_args, %struct.linux_pread_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fgetvp(%struct.thread* %25, i32 %28, i32* @cap_pread_rights, %struct.vnode** %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VDIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.vnode*, %struct.vnode** %6, align 8
  %42 = call i32 @vrele(%struct.vnode* %41)
  %43 = load i32, i32* @EISDIR, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.vnode*, %struct.vnode** %6, align 8
  %46 = call i32 @vrele(%struct.vnode* %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %40, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @kern_pread(%struct.thread*, i32, i32, i32, i32) #1

declare dso_local i32 @fgetvp(%struct.thread*, i32, i32*, %struct.vnode**) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
