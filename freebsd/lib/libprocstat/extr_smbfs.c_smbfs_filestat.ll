; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_smbfs.c_smbfs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_smbfs.c_smbfs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vnstat = type { i32, i32 }
%struct.smbnode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mount = type { i32, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [29 x i8] c"can't read smbfs fnode at %p\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"can't read mount at %p for vnode %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_filestat(%struct.vnstat* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnstat*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.smbnode, align 8
  %9 = alloca %struct.mount, align 8
  %10 = alloca i32, align 4
  store %struct.vnstat* %0, %struct.vnstat** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %11 = load %struct.vnstat*, %struct.vnstat** %5, align 8
  %12 = call i32 @assert(%struct.vnstat* %11)
  %13 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %14 = call i32 @assert(%struct.vnstat* %13)
  %15 = load %struct.vnstat*, %struct.vnstat** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call i64 @VTOSMB(%struct.vnode* %16)
  %18 = call i32 @kvm_read_all(%struct.vnstat* %15, i64 %17, %struct.smbnode* %8, i32 16)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = call i64 @VTOSMB(%struct.vnode* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 1, i32* %4, align 4
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.vnstat*, %struct.vnstat** %5, align 8
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call i64 @getvnodemount(%struct.vnode* %28)
  %30 = bitcast %struct.mount* %9 to %struct.smbnode*
  %31 = call i32 @kvm_read_all(%struct.vnstat* %27, i64 %29, %struct.smbnode* %30, i32 16)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = call i64 @getvnodemount(%struct.vnode* %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %37, %struct.vnode* %38)
  store i32 1, i32* %4, align 4
  br label %61

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %44 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %46 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %51 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %50, i32 0, i32 0
  store i32 2, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %60 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %34, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @assert(%struct.vnstat*) #1

declare dso_local i32 @kvm_read_all(%struct.vnstat*, i64, %struct.smbnode*, i32) #1

declare dso_local i64 @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i64 @getvnodemount(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
