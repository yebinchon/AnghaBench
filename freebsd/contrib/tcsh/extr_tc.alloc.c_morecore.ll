; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_morecore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_morecore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { %union.overhead* }

@nextf = common dso_local global %union.overhead** null, align 8
@memtop = common dso_local global i8* null, align 8
@membot = common dso_local global i8* null, align 8
@ROUNDUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @morecore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @morecore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.overhead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %union.overhead*, %union.overhead** %7, i64 %9
  %11 = load %union.overhead*, %union.overhead** %10, align 8
  %12 = icmp ne %union.overhead* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %119

14:                                               ; preds = %1
  %15 = call i8* @sbrk(i32 0)
  %16 = bitcast i8* %15 to %union.overhead*
  store %union.overhead* %16, %union.overhead** %3, align 8
  %17 = load %union.overhead*, %union.overhead** %3, align 8
  %18 = bitcast %union.overhead* %17 to i8*
  store i8* %18, i8** @memtop, align 8
  %19 = load i8*, i8** @membot, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** @memtop, align 8
  store i8* %22, i8** @membot, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %union.overhead*, %union.overhead** %3, align 8
  %25 = ptrtoint %union.overhead* %24 to i64
  %26 = and i64 %25, 1023
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %union.overhead*, %union.overhead** %3, align 8
  %30 = ptrtoint %union.overhead* %29 to i64
  %31 = and i64 %30, 1023
  %32 = sub nsw i64 1024, %31
  %33 = trunc i64 %32 to i32
  %34 = call i8* @sbrk(i32 %33)
  store i8* %34, i8** @memtop, align 8
  %35 = load %union.overhead*, %union.overhead** %3, align 8
  %36 = ptrtoint %union.overhead* %35 to i64
  %37 = and i64 %36, 1023
  %38 = sub nsw i64 1024, %37
  %39 = load i8*, i8** @memtop, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** @memtop, align 8
  br label %41

41:                                               ; preds = %28, %23
  %42 = load i32, i32* %2, align 4
  %43 = icmp sle i32 %42, 8
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 3
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 11, %44 ], [ %47, %45 ]
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 3
  %53 = sub nsw i32 %50, %52
  %54 = shl i32 1, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 1, %55
  %57 = call i8* @sbrk(i32 %56)
  store i8* %57, i8** @memtop, align 8
  %58 = load i8*, i8** @memtop, align 8
  %59 = bitcast i8* %58 to %union.overhead*
  store %union.overhead* %59, %union.overhead** %3, align 8
  %60 = load %union.overhead*, %union.overhead** %3, align 8
  %61 = ptrtoint %union.overhead* %60 to i64
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %119

64:                                               ; preds = %48
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = load i8*, i8** @memtop, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** @memtop, align 8
  %70 = load %union.overhead*, %union.overhead** %3, align 8
  %71 = ptrtoint %union.overhead* %70 to i32
  %72 = load i32, i32* @ROUNDUP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = load %union.overhead*, %union.overhead** %3, align 8
  %77 = ptrtoint %union.overhead* %76 to i32
  %78 = load i32, i32* @ROUNDUP, align 4
  %79 = add nsw i32 %78, 1
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* @ROUNDUP, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %union.overhead*
  store %union.overhead* %85, %union.overhead** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %75, %64
  %89 = load %union.overhead*, %union.overhead** %3, align 8
  %90 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %union.overhead*, %union.overhead** %90, i64 %92
  store %union.overhead* %89, %union.overhead** %93, align 8
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 3
  %96 = shl i32 1, %95
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %101, %88
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %5, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load %union.overhead*, %union.overhead** %3, align 8
  %103 = ptrtoint %union.overhead* %102 to i64
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = inttoptr i64 %106 to %union.overhead*
  %108 = load %union.overhead*, %union.overhead** %3, align 8
  %109 = bitcast %union.overhead* %108 to %union.overhead**
  store %union.overhead* %107, %union.overhead** %109, align 8
  %110 = load %union.overhead*, %union.overhead** %3, align 8
  %111 = ptrtoint %union.overhead* %110 to i64
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = inttoptr i64 %114 to %union.overhead*
  store %union.overhead* %115, %union.overhead** %3, align 8
  br label %97

116:                                              ; preds = %97
  %117 = load %union.overhead*, %union.overhead** %3, align 8
  %118 = bitcast %union.overhead* %117 to %union.overhead**
  store %union.overhead* null, %union.overhead** %118, align 8
  br label %119

119:                                              ; preds = %116, %63, %13
  ret void
}

declare dso_local i8* @sbrk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
