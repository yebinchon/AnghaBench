; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_setregn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_setregn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.roffreg* }
%struct.roffreg = type { i32, i32, %struct.roffreg*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff*, i8*, i64, i32, i8, i32)* @roff_setregn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_setregn(%struct.roff* %0, i8* %1, i64 %2, i32 %3, i8 signext %4, i32 %5) #0 {
  %7 = alloca %struct.roff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.roffreg*, align 8
  store %struct.roff* %0, %struct.roff** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  %14 = load %struct.roff*, %struct.roff** %7, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 0
  %16 = load %struct.roffreg*, %struct.roffreg** %15, align 8
  store %struct.roffreg* %16, %struct.roffreg** %13, align 8
  br label %17

17:                                               ; preds = %40, %6
  %18 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %19 = icmp ne %struct.roffreg* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %22 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %29 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @strncmp(i32 %31, i8* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %27, %20
  %37 = phi i1 [ true, %20 ], [ %35, %27 ]
  br label %38

38:                                               ; preds = %36, %17
  %39 = phi i1 [ false, %17 ], [ %37, %36 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %42 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %41, i32 0, i32 2
  %43 = load %struct.roffreg*, %struct.roffreg** %42, align 8
  store %struct.roffreg* %43, %struct.roffreg** %13, align 8
  br label %17

44:                                               ; preds = %38
  %45 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %46 = icmp eq %struct.roffreg* null, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = call %struct.roffreg* @mandoc_malloc(i32 32)
  store %struct.roffreg* %48, %struct.roffreg** %13, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @mandoc_strndup(i8* %49, i64 %50)
  %52 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %53 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %57 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %60 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %62 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.roff*, %struct.roff** %7, align 8
  %64 = getelementptr inbounds %struct.roff, %struct.roff* %63, i32 0, i32 0
  %65 = load %struct.roffreg*, %struct.roffreg** %64, align 8
  %66 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %67 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %66, i32 0, i32 2
  store %struct.roffreg* %65, %struct.roffreg** %67, align 8
  %68 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %69 = load %struct.roff*, %struct.roff** %7, align 8
  %70 = getelementptr inbounds %struct.roff, %struct.roff* %69, i32 0, i32 0
  store %struct.roffreg* %68, %struct.roffreg** %70, align 8
  br label %71

71:                                               ; preds = %47, %44
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 43, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %78 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %96

81:                                               ; preds = %71
  %82 = load i8, i8* %11, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 45, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %88 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %95

91:                                               ; preds = %81
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %94 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %75
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @INT_MIN, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.roffreg*, %struct.roffreg** %13, align 8
  %103 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %96
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local %struct.roffreg* @mandoc_malloc(i32) #1

declare dso_local i32 @mandoc_strndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
