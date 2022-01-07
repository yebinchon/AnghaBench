; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_log_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_log_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }

@TX_TRUNCATE = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i8*, i8*, i64)* @zvol_log_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_log_truncate(%struct.TYPE_7__* %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @zil_replaying(i32* %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %53

22:                                               ; preds = %5
  %23 = load i32, i32* @TX_TRUNCATE, align 4
  %24 = call %struct.TYPE_9__* @zil_itx_create(i32 %23, i32 24)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %12, align 8
  %28 = load i32, i32* @ZVOL_OBJ, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %22
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %22
  %45 = phi i1 [ true, %22 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @zil_itx_assign(i32* %49, %struct.TYPE_9__* %50, i32* %51)
  br label %53

53:                                               ; preds = %44, %21
  ret void
}

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
