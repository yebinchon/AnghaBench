; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_noderevs.c_svn_fs_x__noderevs_estimate_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_noderevs.c_svn_fs_x__noderevs_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svn_fs_x__noderevs_estimate_size(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @svn_fs_x__string_table_builder_estimate_size(i32* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 16
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %13, %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %21, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 40
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %29, %36
  %38 = add nsw i64 %37, 100
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %9, %8
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i64 @svn_fs_x__string_table_builder_estimate_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
