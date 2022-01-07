; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_update_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_update_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@RW_WRITER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_update_uint64(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %17, align 8
  %24 = load i32, i32* @RW_WRITER, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @FTAG, align 4
  %28 = call i32 @zap_lockdir(i32* %21, i32 %22, i32* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32** %18)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %9, align 4
  br label %67

33:                                               ; preds = %8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.TYPE_5__* @zap_name_alloc_uint64(i32* %34, i32* %35, i32 %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %20, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32*, i32** %18, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @zap_unlockdir(i32* %41, i32 %42)
  %44 = load i32, i32* @ENOTSUP, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @fzap_update(%struct.TYPE_5__* %47, i32 %48, i32 %49, i8* %50, i32 %51, i32* %52)
  store i32 %53, i32* %19, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %18, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %58 = call i32 @zap_name_free(%struct.TYPE_5__* %57)
  %59 = load i32*, i32** %18, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @zap_unlockdir(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %46
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %40, %31
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local %struct.TYPE_5__* @zap_name_alloc_uint64(i32*, i32*, i32) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_update(%struct.TYPE_5__*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
