; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zap_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SPA_MINBLOCKSHIFT = common dso_local global i64 0, align 8
@zap_scratch = common dso_local global i64 0, align 8
@ZBT_MICRO = common dso_local global i64 0, align 8
@ZBT_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ZFS: invalid zap_type=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*, i64, i64, i8*)* @zap_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_lookup(i32* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %16, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = load i64, i64* @zap_scratch, align 8
  %25 = load i64, i64* %16, align 8
  %26 = call i32 @dnode_read(i32* %22, %struct.TYPE_6__* %23, i32 0, i64 %24, i64 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %61

31:                                               ; preds = %6
  %32 = load i64, i64* @zap_scratch, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @ZBT_MICRO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @mzap_lookup(%struct.TYPE_6__* %39, i8* %40, i8* %41)
  store i32 %42, i32* %7, align 4
  br label %61

43:                                               ; preds = %31
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @ZBT_HEADER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @fzap_lookup(i32* %48, %struct.TYPE_6__* %49, i8* %50, i64 %51, i64 %52, i8* %53)
  store i32 %54, i32* %7, align 4
  br label %61

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %15, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %47, %38, %29
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @dnode_read(i32*, %struct.TYPE_6__*, i32, i64, i64) #1

declare dso_local i32 @mzap_lookup(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @fzap_lookup(i32*, %struct.TYPE_6__*, i8*, i64, i64, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
