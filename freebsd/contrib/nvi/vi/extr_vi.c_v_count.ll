; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EC_MAPCOMMAND = common dso_local global i32 0, align 4
@EC_MAPNODIGIT = common dso_local global i32 0, align 4
@GC_OK = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"235|Number larger than %lu\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @v_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_count(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %55, %3
  %14 = load i32, i32* %9, align 4
  %15 = mul nsw i32 %14, 10
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %15, %17
  %19 = sub nsw i32 %18, 48
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @EC_MAPCOMMAND, align 4
  %27 = load i32, i32* @EC_MAPNODIGIT, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @v_key(i32* %25, i32 0, %struct.TYPE_3__* %8, i32 %28)
  %30 = load i64, i64* @GC_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %63

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ISDIGIT(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %24, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @M_ERR, align 4
  %42 = load i32, i32* @ULONG_MAX, align 4
  %43 = call i32 @msgq(i32* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 1, i32* %4, align 4
  br label %63

44:                                               ; preds = %13
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @EC_MAPCOMMAND, align 4
  %48 = load i32, i32* @EC_MAPNODIGIT, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @v_key(i32* %46, i32 0, %struct.TYPE_3__* %8, i32 %49)
  %51 = load i64, i64* @GC_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %63

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ISDIGIT(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %13, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %53, %39, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @v_key(i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
