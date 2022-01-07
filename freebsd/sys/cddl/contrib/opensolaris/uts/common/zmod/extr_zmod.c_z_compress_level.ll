; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/zmod/extr_zmod.c_z_compress_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/zmod/extr_zmod.c_z_compress_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i8*, i32* }

@zfs_zcalloc = common dso_local global i32 0, align 4
@zfs_zcfree = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z_compress_level(i8* %0, i64* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @bzero(%struct.TYPE_6__* %12, i32 48)
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32* %16, i32** %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @zfs_zcalloc, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @zfs_zcfree, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @deflateInit(%struct.TYPE_6__* %12, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @Z_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %56

35:                                               ; preds = %5
  %36 = load i32, i32* @Z_FINISH, align 4
  %37 = call i32 @deflate(%struct.TYPE_6__* %12, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @Z_STREAM_END, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = call i32 @deflateEnd(%struct.TYPE_6__* %12)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @Z_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @Z_BUF_ERROR, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %6, align 4
  br label %56

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  %55 = call i32 @deflateEnd(%struct.TYPE_6__* %12)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %49, %33
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
