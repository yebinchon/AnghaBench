; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_devfs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_devfs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.vnstat = type { i32, i64, i32, i32 }
%struct.devfs_dirent = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mount = type { i32, i32, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [30 x i8] c"can't read devfs_dirent at %p\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't read mount at %p\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_filestat(i32* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.devfs_dirent, align 8
  %9 = alloca %struct.mount, align 8
  store i32* %0, i32** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = call i64 @getvnodedata(%struct.vnode* %11)
  %13 = bitcast %struct.devfs_dirent* %8 to %struct.mount*
  %14 = call i32 @kvm_read_all(i32* %10, i64 %12, %struct.mount* %13, i32 16)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = call i64 @getvnodemount(%struct.vnode* %24)
  %26 = call i32 @kvm_read_all(i32* %23, i64 %25, %struct.mount* %9, i32 16)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = call i64 @getvnodemount(%struct.vnode* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 1, i32* %4, align 4
  br label %57

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %41 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %45 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @S_IFMT, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* @S_IFCHR, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %54 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %56 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %33, %28, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.mount*, i32) #1

declare dso_local i64 @getvnodedata(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @getvnodemount(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
