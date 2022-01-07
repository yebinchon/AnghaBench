; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_grow_seed_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_grow_seed_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32)* @grow_seed_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_seed_array(%struct.torus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.torus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.torus* %0, %struct.torus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.torus*, %struct.torus** %4, align 8
  %9 = getelementptr inbounds %struct.torus, %struct.torus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.torus*, %struct.torus** %4, align 8
  %15 = getelementptr inbounds %struct.torus, %struct.torus* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = udiv i32 %19, 2
  %21 = add i32 2, %20
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.torus*, %struct.torus** %4, align 8
  %25 = getelementptr inbounds %struct.torus, %struct.torus* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i8* @realloc(i32* %26, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %18
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.torus*, %struct.torus** %4, align 8
  %39 = getelementptr inbounds %struct.torus, %struct.torus* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.torus*, %struct.torus** %4, align 8
  %42 = getelementptr inbounds %struct.torus, %struct.torus* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.torus*, %struct.torus** %4, align 8
  %44 = getelementptr inbounds %struct.torus, %struct.torus* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.torus*, %struct.torus** %4, align 8
  %47 = getelementptr inbounds %struct.torus, %struct.torus* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.torus*, %struct.torus** %4, align 8
  %53 = getelementptr inbounds %struct.torus, %struct.torus* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub i32 %51, %54
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %50, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %35, %2
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
