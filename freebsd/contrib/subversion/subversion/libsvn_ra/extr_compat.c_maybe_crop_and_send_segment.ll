; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_maybe_crop_and_send_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_maybe_crop_and_send_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i64, i32* (%struct.TYPE_5__*, i8*, i32*)*, i8*, i32*)* @maybe_crop_and_send_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_crop_and_send_segment(i8* %0, i64 %1, i64 %2, i64 %3, i32* (%struct.TYPE_5__*, i8*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32* (%struct.TYPE_5__*, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* (%struct.TYPE_5__*, i8*, i32*)* %4, i32* (%struct.TYPE_5__*, i8*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %15, align 8
  %18 = call %struct.TYPE_5__* @apr_pcalloc(i32* %17, i32 24)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %16, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  br label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i8* [ %28, %26 ], [ %30, %29 ]
  br label %34

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ null, %33 ]
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32* (%struct.TYPE_5__*, i8*, i32*)*, i32* (%struct.TYPE_5__*, i8*, i32*)** %13, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32* %60(%struct.TYPE_5__* %61, i8* %62, i32* %63)
  store i32* %64, i32** %8, align 8
  br label %67

65:                                               ; preds = %34
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32*, i32** %8, align 8
  ret i32* %68
}

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
