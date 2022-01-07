; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_bb_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_bb_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_buf = type { i64, i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_buf*, i32*)* @bb_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bb_store(%struct.blk_buf* %0, i32* %1) #0 {
  %3 = alloca %struct.blk_buf*, align 8
  %4 = alloca i32*, align 8
  store %struct.blk_buf* %0, %struct.blk_buf** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %6 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %9 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %14 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %19 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %18, i32 0, i32 1
  store i64 16, i64* %19, align 8
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %22 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %23, 2
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %27 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %30 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32** @xrealloc(i32** %28, i32 %33)
  %35 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %36 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %35, i32 0, i32 2
  store i32** %34, i32*** %36, align 8
  br label %37

37:                                               ; preds = %25, %2
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %40 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %43 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  store i32* %38, i32** %45, align 8
  ret void
}

declare dso_local i32** @xrealloc(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
