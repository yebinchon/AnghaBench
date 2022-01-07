; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_nfs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_nfs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vnstat = type { i64, i32, i32, i32 }
%struct.nfsnode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't read nfsnode at %p\00", align 1
@S_IFREG = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i64 0, align 8
@S_IFLNK = common dso_local global i64 0, align 8
@S_IFSOCK = common dso_local global i64 0, align 8
@S_IFIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_filestat(i32* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.nfsnode, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = call i64 @VTONFS(%struct.vnode* %11)
  %13 = call i32 @kvm_read_all(i32* %10, i64 %12, %struct.nfsnode* %8, i32 24)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call i64 @VTONFS(%struct.vnode* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %25 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %30 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %34 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %69 [
    i32 129, label %41
    i32 132, label %45
    i32 134, label %49
    i32 133, label %53
    i32 130, label %57
    i32 128, label %61
    i32 131, label %65
  ]

41:                                               ; preds = %20
  %42 = load i64, i64* @S_IFREG, align 8
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %70

45:                                               ; preds = %20
  %46 = load i64, i64* @S_IFDIR, align 8
  %47 = load i64, i64* %9, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %70

49:                                               ; preds = %20
  %50 = load i64, i64* @S_IFBLK, align 8
  %51 = load i64, i64* %9, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %9, align 8
  br label %70

53:                                               ; preds = %20
  %54 = load i64, i64* @S_IFCHR, align 8
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %70

57:                                               ; preds = %20
  %58 = load i64, i64* @S_IFLNK, align 8
  %59 = load i64, i64* %9, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %70

61:                                               ; preds = %20
  %62 = load i64, i64* @S_IFSOCK, align 8
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %70

65:                                               ; preds = %20
  %66 = load i64, i64* @S_IFIFO, align 8
  %67 = load i64, i64* %9, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %70

69:                                               ; preds = %20
  br label %70

70:                                               ; preds = %69, %65, %61, %57, %53, %49, %45, %41
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %73 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.nfsnode*, i32) #1

declare dso_local i64 @VTONFS(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
