; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/zmod/extr_zmod.c_z_uncompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/zmod/extr_zmod.c_z_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i8*, i32* }

@zfs_zcalloc = common dso_local global i32 0, align 4
@zfs_zcfree = common dso_local global i32 0, align 4
@DEF_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z_uncompress(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i32 @bzero(%struct.TYPE_6__* %10, i32 48)
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  store i32* %14, i32** %15, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @zfs_zcalloc, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @zfs_zcfree, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @DEF_WBITS, align 4
  %28 = or i32 %27, 32
  %29 = call i32 @inflateInit2(%struct.TYPE_6__* %10, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @Z_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %4
  %35 = load i32, i32* @Z_FINISH, align 4
  %36 = call i32 @inflate(%struct.TYPE_6__* %10, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @Z_STREAM_END, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = call i32 @inflateEnd(%struct.TYPE_6__* %10)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @Z_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @Z_BUF_ERROR, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = call i32 @inflateEnd(%struct.TYPE_6__* %10)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %48, %32
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
