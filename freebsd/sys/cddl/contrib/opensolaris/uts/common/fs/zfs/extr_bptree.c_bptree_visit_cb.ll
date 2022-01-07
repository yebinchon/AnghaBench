; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bptree.c_bptree_visit_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bptree.c_bptree_visit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bptree_args = type { i32 (i32, i32*, i32)*, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i8*)* @bptree_visit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bptree_visit_cb(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bptree_args*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.bptree_args*
  store %struct.bptree_args* %17, %struct.bptree_args** %15, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @BP_IS_HOLE(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %6
  store i32 0, i32* %7, align 4
  br label %78

25:                                               ; preds = %20
  %26 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %27 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %26, i32 0, i32 0
  %28 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %27, align 8
  %29 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %30 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %34 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %28(i32 %31, i32* %32, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %25
  %40 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %41 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @bp_get_dsize_sync(i32* %45, i32* %46)
  %48 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %49 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %47
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @BP_GET_PSIZE(i32* %56)
  %58 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %59 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %57
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @BP_GET_UCSIZE(i32* %66)
  %68 = load %struct.bptree_args*, %struct.bptree_args** %15, align 8
  %69 = getelementptr inbounds %struct.bptree_args, %struct.bptree_args* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %67
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  br label %76

76:                                               ; preds = %44, %39, %25
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %24
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @bp_get_dsize_sync(i32*, i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i64 @BP_GET_UCSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
