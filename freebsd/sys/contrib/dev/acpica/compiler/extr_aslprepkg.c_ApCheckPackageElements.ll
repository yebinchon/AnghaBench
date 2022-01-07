; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackageElements.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackageElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*, %struct.TYPE_7__*, i32, i64, i32, i64)* @ApCheckPackageElements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ApCheckPackageElements(i8* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %33, %6
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @ApCheckObjectType(i8* %24, %struct.TYPE_7__* %25, i32 %26, i64 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %13, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %13, align 8
  br label %14

36:                                               ; preds = %21
  store i64 0, i64* %13, align 8
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i1 [ false, %37 ], [ %43, %41 ]
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @ApCheckObjectType(i8* %47, %struct.TYPE_7__* %48, i32 %49, i64 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %8, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %13, align 8
  br label %37

61:                                               ; preds = %44
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local i32 @ApCheckObjectType(i8*, %struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
