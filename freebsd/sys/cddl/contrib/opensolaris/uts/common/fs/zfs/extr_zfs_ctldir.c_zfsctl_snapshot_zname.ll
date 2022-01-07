; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_zname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_zname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i8*)* @zfsctl_snapshot_zname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsctl_snapshot_zname(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @dmu_objset_name(i32* %19, i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcat(i8* %36, i8* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @dmu_objset_name(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
