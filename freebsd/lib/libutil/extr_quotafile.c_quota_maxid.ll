; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_maxid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_maxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32 }
%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_maxid(%struct.quotafile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.quotafile*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %3, align 8
  %6 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %7 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @stat(i32 %8, %struct.stat* %4)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %14 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %30 [
    i32 32, label %16
    i32 64, label %23
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = sub i64 %27, 2
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %23, %16
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
