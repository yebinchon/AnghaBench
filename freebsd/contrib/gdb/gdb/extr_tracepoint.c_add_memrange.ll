; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_add_memrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_add_memrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection_list = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@info_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%d,\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c",%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.collection_list*, i32, i8*, i64)* @add_memrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_memrange(%struct.collection_list* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.collection_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.collection_list* %0, %struct.collection_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* @info_verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = call i32 @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @printf_vma(i8* %15)
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %11, %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %22 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %25 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %20, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %31 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %34 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %29, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr i8, i8* %38, i64 %39
  %41 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %42 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %45 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %40, i8** %48, align 8
  %49 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %50 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %54 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %57 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %55, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %19
  %62 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %63 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %63, align 8
  %66 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %67 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %70 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_3__* @xrealloc(%struct.TYPE_3__* %68, i32 %71)
  %73 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %74 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %73, i32 0, i32 2
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %74, align 8
  br label %75

75:                                               ; preds = %61, %19
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @add_register(%struct.collection_list* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @printf_filtered(i8*, i64) #1

declare dso_local i32 @printf_vma(i8*) #1

declare dso_local %struct.TYPE_3__* @xrealloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @add_register(%struct.collection_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
