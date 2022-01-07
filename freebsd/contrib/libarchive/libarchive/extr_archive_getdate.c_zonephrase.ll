; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_zonephrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_zonephrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdstate = type { %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@tZONE = common dso_local global i64 0, align 8
@tDST = common dso_local global i64 0, align 8
@DSTon = common dso_local global i8* null, align 8
@DSToff = common dso_local global i8* null, align 8
@tDAYZONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdstate*)* @zonephrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zonephrase(%struct.gdstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdstate*, align 8
  store %struct.gdstate* %0, %struct.gdstate** %3, align 8
  %4 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %5 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @tZONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %14 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @tDST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %23 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %27 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %33 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @DSTon, align 8
  %35 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %36 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %38 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %38, align 8
  store i32 1, i32* %2, align 4
  br label %100

41:                                               ; preds = %12, %1
  %42 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %43 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @tZONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %41
  %51 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %52 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %56 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %62 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @DSToff, align 8
  %64 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %65 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %67 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 1
  store %struct.TYPE_2__* %69, %struct.TYPE_2__** %67, align 8
  store i32 1, i32* %2, align 4
  br label %100

70:                                               ; preds = %41
  %71 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %72 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @tDAYZONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %70
  %80 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %81 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %85 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %91 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @DSTon, align 8
  %93 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %94 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %96 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 1
  store %struct.TYPE_2__* %98, %struct.TYPE_2__** %96, align 8
  store i32 1, i32* %2, align 4
  br label %100

99:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %79, %50, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
