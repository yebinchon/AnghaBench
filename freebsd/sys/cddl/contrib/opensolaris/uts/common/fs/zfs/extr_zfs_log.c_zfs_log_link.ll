; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_link(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %15, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @zil_replaying(i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %54

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %15, align 8
  %28 = add i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_10__* @zil_itx_create(i32 %26, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %13, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %14, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 1
  %47 = bitcast %struct.TYPE_9__* %46 to i8*
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @bcopy(i8* %44, i8* %47, i64 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @zil_itx_assign(i32* %50, %struct.TYPE_10__* %51, i32* %52)
  br label %54

54:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
