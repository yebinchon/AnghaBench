; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_ufs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_ufs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vnstat = type { i32, i64, i32, i32 }
%struct.inode = type { i32, i64, i32, i32, i64 }
%struct.ufsmount = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"can't read inode at %p\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't read ufsmount at %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_filestat(i32* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.inode, align 8
  %9 = alloca %struct.ufsmount, align 8
  store i32* %0, i32** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = call i64 @VTOI(%struct.vnode* %11)
  %13 = bitcast %struct.inode* %8 to %struct.ufsmount*
  %14 = call i32 @kvm_read_all(i32* %10, i64 %12, %struct.ufsmount* %13, i32 32)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call i64 @VTOI(%struct.vnode* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kvm_read_all(i32* %22, i64 %24, %struct.ufsmount* %9, i32 32)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %4, align 4
  br label %51

32:                                               ; preds = %21
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %9, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev2udev(i32* %33, i32 %35)
  %37 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %38 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %42 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %46 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %50 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %32, %27, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.ufsmount*, i32) #1

declare dso_local i64 @VTOI(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @dev2udev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
