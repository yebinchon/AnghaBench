; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_iterator_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_iter = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@I386_PG_V = common dso_local global i32 0, align 4
@I386_PG_FRAME_PAE = common dso_local global i32 0, align 4
@I386_PG_FRAME = common dso_local global i32 0, align 4
@I386_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i386_iter*, i32*, i32*, i32*, i32*)* @_i386_iterator_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i386_iterator_next(%struct.i386_iter* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.i386_iter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vmstate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i386_iter* %0, %struct.i386_iter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %16 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.vmstate*, %struct.vmstate** %18, align 8
  store %struct.vmstate* %19, %struct.vmstate** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %98, %5
  %26 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %27 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %30 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i1 [ false, %25 ], [ %35, %33 ]
  br i1 %37, label %38, label %103

38:                                               ; preds = %36
  %39 = load %struct.vmstate*, %struct.vmstate** %11, align 8
  %40 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %46 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %49 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @_i386_pte_pae_get(%struct.TYPE_5__* %47, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @I386_PG_V, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %98

57:                                               ; preds = %44
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @_i386_entry_to_prot(i32 %58)
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @I386_PG_FRAME_PAE, align 4
  %63 = and i32 %61, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %86

65:                                               ; preds = %38
  %66 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %67 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %70 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @_i386_pte_get(%struct.TYPE_5__* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @I386_PG_V, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %98

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @_i386_entry_to_prot(i32 %79)
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @I386_PG_FRAME, align 4
  %84 = and i32 %82, %83
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %57
  %87 = load %struct.vmstate*, %struct.vmstate** %11, align 8
  %88 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %92 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @I386_PAGE_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = add nsw i32 %90, %95
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %86, %77, %56
  %99 = load %struct.i386_iter*, %struct.i386_iter** %6, align 8
  %100 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %25

103:                                              ; preds = %36
  %104 = load i32, i32* %14, align 4
  ret i32 %104
}

declare dso_local i32 @_i386_pte_pae_get(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_i386_entry_to_prot(i32) #1

declare dso_local i32 @_i386_pte_get(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
