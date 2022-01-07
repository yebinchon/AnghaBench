; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@DELETED = common dso_local global i8* null, align 8
@MINDELETED = common dso_local global i32 0, align 4
@STAT_HASH_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ohash_remove(%struct.ohash* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ohash*, %struct.ohash** %4, align 8
  %8 = getelementptr inbounds %struct.ohash, %struct.ohash* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** @DELETED, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i8* null, i8** %3, align 8
  br label %54

22:                                               ; preds = %17
  %23 = load i8*, i8** @DELETED, align 8
  %24 = load %struct.ohash*, %struct.ohash** %4, align 8
  %25 = getelementptr inbounds %struct.ohash, %struct.ohash* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %23, i8** %30, align 8
  %31 = load %struct.ohash*, %struct.ohash** %4, align 8
  %32 = getelementptr inbounds %struct.ohash, %struct.ohash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ohash*, %struct.ohash** %4, align 8
  %36 = getelementptr inbounds %struct.ohash, %struct.ohash* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MINDELETED, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %22
  %41 = load %struct.ohash*, %struct.ohash** %4, align 8
  %42 = getelementptr inbounds %struct.ohash, %struct.ohash* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 4, %43
  %45 = load %struct.ohash*, %struct.ohash** %4, align 8
  %46 = getelementptr inbounds %struct.ohash, %struct.ohash* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.ohash*, %struct.ohash** %4, align 8
  %51 = call i32 @ohash_resize(%struct.ohash* %50)
  br label %52

52:                                               ; preds = %49, %40, %22
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32 @ohash_resize(%struct.ohash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
