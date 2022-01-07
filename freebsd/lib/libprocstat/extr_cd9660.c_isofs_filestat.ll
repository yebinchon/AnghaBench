; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_cd9660.c_isofs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_cd9660.c_isofs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vnstat = type { i32, i32, i64, i32 }
%struct.iso_node = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.iso_mnt = type { i32, i32, %struct.TYPE_2__, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"can't read iso_node at %p\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't read iso_mnt at %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isofs_filestat(i32* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.iso_node, align 8
  %9 = alloca %struct.iso_mnt, align 8
  store i32* %0, i32** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = call i64 @VTOI(%struct.vnode* %11)
  %13 = call i32 @kvm_read_all(i32* %10, i64 %12, %struct.iso_node* %8, i32 32)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call i64 @VTOI(%struct.vnode* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds %struct.iso_node, %struct.iso_node* %8, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.iso_mnt* %9 to %struct.iso_node*
  %25 = call i32 @kvm_read_all(i32* %21, i64 %23, %struct.iso_node* %24, i32 32)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call i64 @VTOI(%struct.vnode* %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %4, align 4
  br label %52

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds %struct.iso_mnt, %struct.iso_mnt* %9, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev2udev(i32* %33, i32 %35)
  %37 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %38 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.iso_node, %struct.iso_node* %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %43 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.iso_node, %struct.iso_node* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %47 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.iso_node, %struct.iso_node* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %51 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %32, %27, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.iso_node*, i32) #1

declare dso_local i64 @VTOI(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @dev2udev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
