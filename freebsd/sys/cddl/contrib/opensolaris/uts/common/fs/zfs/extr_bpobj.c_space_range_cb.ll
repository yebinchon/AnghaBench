; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bpobj.c_space_range_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bpobj.c_space_range_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.space_range_arg = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*, i32*)* @space_range_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @space_range_cb(i8* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.space_range_arg*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.space_range_arg*
  store %struct.space_range_arg* %9, %struct.space_range_arg** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %14 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %22 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %17
  %26 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %27 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @spa_get_dsl(i32 %28)
  %30 = call i64 @dsl_pool_sync_context(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %34 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = call i64 @bp_get_dsize_sync(i32 %35, %struct.TYPE_7__* %36)
  %38 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %39 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %56

44:                                               ; preds = %25
  %45 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %46 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i64 @bp_get_dsize(i32 %47, %struct.TYPE_7__* %48)
  %50 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %51 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %44, %32
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call i64 @BP_GET_PSIZE(%struct.TYPE_7__* %57)
  %59 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %60 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call i64 @BP_GET_UCSIZE(%struct.TYPE_7__* %65)
  %67 = load %struct.space_range_arg*, %struct.space_range_arg** %7, align 8
  %68 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  br label %73

73:                                               ; preds = %56, %17, %3
  ret i32 0
}

declare dso_local i64 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @spa_get_dsl(i32) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @bp_get_dsize(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
