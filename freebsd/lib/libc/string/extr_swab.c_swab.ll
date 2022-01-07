; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_swab.c_swab.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_swab.c_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swab(i8* noalias %0, i8* noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %154

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %37, %14
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  %30 = load i8, i8* %28, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %151, %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %154

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i64
  store i64 %50, i64* %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  %53 = load i8, i8* %51, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i64
  store i64 %63, i64* %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i64
  store i64 %76, i64* %7, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  %79 = load i8, i8* %77, align 1
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i8
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i64
  store i64 %102, i64* %7, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i64, i64* %7, align 8
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i64
  store i64 %115, i64* %7, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  %118 = load i8, i8* %116, align 1
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  store i8 %118, i8* %119, align 1
  %121 = load i64, i64* %7, align 8
  %122 = trunc i64 %121 to i8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i64
  store i64 %128, i64* %7, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  %131 = load i8, i8* %129, align 1
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %10, align 8
  store i8 %131, i8* %132, align 1
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i8
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  %140 = load i8, i8* %138, align 1
  %141 = sext i8 %140 to i64
  store i64 %141, i64* %7, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %10, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i64, i64* %7, align 8
  %148 = trunc i64 %147 to i8
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %10, align 8
  store i8 %148, i8* %149, align 1
  br label %151

151:                                              ; preds = %46
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %8, align 4
  br label %43

154:                                              ; preds = %13, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
