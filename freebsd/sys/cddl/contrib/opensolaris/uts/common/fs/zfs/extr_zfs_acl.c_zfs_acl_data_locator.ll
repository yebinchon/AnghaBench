; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_data_locator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_data_locator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_acl_data_locator(i8** %0, i32* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call %struct.TYPE_8__* @list_head(i32* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  br label %35

24:                                               ; preds = %5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call %struct.TYPE_8__* @list_next(i32* %28, %struct.TYPE_8__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  br label %35

35:                                               ; preds = %24, %16
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %6, align 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  ret void
}

declare dso_local %struct.TYPE_8__* @list_head(i32*) #1

declare dso_local %struct.TYPE_8__* @list_next(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
