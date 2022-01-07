; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_remove_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_remove_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32* }

@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i32*)* @zap_remove_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_remove_impl(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32* @zap_name_alloc(%struct.TYPE_12__* %13, i8* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOTSUP, align 4
  %21 = call i32 @SET_ERROR(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @fzap_remove(i32* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  br label %58

31:                                               ; preds = %22
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_13__* @mze_find(i32* %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %12, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %35 = icmp eq %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOENT, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %10, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call %struct.TYPE_14__* @zap_m_phys(%struct.TYPE_12__* %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i32 @bzero(i32* %52, i32 4)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = call i32 @mze_remove(%struct.TYPE_12__* %54, %struct.TYPE_13__* %55)
  br label %57

57:                                               ; preds = %39, %36
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @zap_name_free(i32* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %19
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32* @zap_name_alloc(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_remove(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @mze_find(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @zap_m_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @mze_remove(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
