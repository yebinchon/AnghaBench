; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_malloc.c_morecore.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_malloc.c_morecore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { %union.overhead* }

@FIRST_BUCKET_SIZE = common dso_local global i32 0, align 4
@pagesz = common dso_local global i32 0, align 4
@pagepool_end = common dso_local global i32 0, align 4
@pagepool_start = common dso_local global i32 0, align 4
@NPOOLPAGES = common dso_local global i64 0, align 8
@nextf = common dso_local global %union.overhead** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @morecore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @morecore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.overhead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @FIRST_BUCKET_SIZE, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @pagesz, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @pagesz, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @pagepool_end, align 4
  %23 = load i32, i32* @pagepool_start, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @pagesz, align 4
  %29 = sdiv i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @NPOOLPAGES, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @morepages(i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %68

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* @pagepool_start, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %union.overhead*
  store %union.overhead* %40, %union.overhead** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @pagepool_start, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @pagepool_start, align 4
  %44 = load %union.overhead*, %union.overhead** %3, align 8
  %45 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.overhead*, %union.overhead** %45, i64 %47
  store %union.overhead* %44, %union.overhead** %48, align 8
  br label %49

49:                                               ; preds = %53, %37
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %union.overhead*, %union.overhead** %3, align 8
  %55 = ptrtoint %union.overhead* %54 to i64
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = inttoptr i64 %58 to %union.overhead*
  %60 = load %union.overhead*, %union.overhead** %3, align 8
  %61 = bitcast %union.overhead* %60 to %union.overhead**
  store %union.overhead* %59, %union.overhead** %61, align 8
  %62 = load %union.overhead*, %union.overhead** %3, align 8
  %63 = ptrtoint %union.overhead* %62 to i64
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = inttoptr i64 %66 to %union.overhead*
  store %union.overhead* %67, %union.overhead** %3, align 8
  br label %49

68:                                               ; preds = %35, %49
  ret void
}

declare dso_local i64 @morepages(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
