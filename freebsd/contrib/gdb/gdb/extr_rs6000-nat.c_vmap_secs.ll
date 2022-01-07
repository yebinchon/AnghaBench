; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_secs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmap*, %struct.TYPE_7__*, i32)* @vmap_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmap_secs(%struct.vmap* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.vmap*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.vmap* %0, %struct.vmap** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.vmap*, %struct.vmap** %4, align 8
  %17 = getelementptr inbounds %struct.vmap, %struct.vmap* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.vmap*, %struct.vmap** %4, align 8
  %19 = getelementptr inbounds %struct.vmap, %struct.vmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %20, %24
  %26 = load %struct.vmap*, %struct.vmap** %4, align 8
  %27 = getelementptr inbounds %struct.vmap, %struct.vmap* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.vmap*, %struct.vmap** %4, align 8
  %35 = getelementptr inbounds %struct.vmap, %struct.vmap* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.vmap*, %struct.vmap** %4, align 8
  %37 = getelementptr inbounds %struct.vmap, %struct.vmap* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %38, %42
  %44 = load %struct.vmap*, %struct.vmap** %4, align 8
  %45 = getelementptr inbounds %struct.vmap, %struct.vmap* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  br label %79

46:                                               ; preds = %3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vmap*, %struct.vmap** %4, align 8
  %52 = getelementptr inbounds %struct.vmap, %struct.vmap* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.vmap*, %struct.vmap** %4, align 8
  %54 = getelementptr inbounds %struct.vmap, %struct.vmap* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %55, %59
  %61 = load %struct.vmap*, %struct.vmap** %4, align 8
  %62 = getelementptr inbounds %struct.vmap, %struct.vmap* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vmap*, %struct.vmap** %4, align 8
  %68 = getelementptr inbounds %struct.vmap, %struct.vmap* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.vmap*, %struct.vmap** %4, align 8
  %70 = getelementptr inbounds %struct.vmap, %struct.vmap* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %71, %75
  %77 = load %struct.vmap*, %struct.vmap** %4, align 8
  %78 = getelementptr inbounds %struct.vmap, %struct.vmap* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %46, %9
  %80 = load %struct.vmap*, %struct.vmap** %4, align 8
  %81 = getelementptr inbounds %struct.vmap, %struct.vmap* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.vmap*, %struct.vmap** %4, align 8
  %84 = getelementptr inbounds %struct.vmap, %struct.vmap* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
