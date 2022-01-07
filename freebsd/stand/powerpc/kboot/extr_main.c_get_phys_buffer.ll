; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_get_phys_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_get_phys_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8*, i8* }

@nkexec_segments = common dso_local global i32 0, align 4
@loaded_segments = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8**)* @get_phys_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phys_buffer(i64 %0, i64 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 4194304, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @nkexec_segments, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = icmp sge i64 %14, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  %39 = icmp slt i64 %24, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %73

41:                                               ; preds = %23, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %9

45:                                               ; preds = %9
  %46 = call i8* @host_getmem(i64 4194304)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %48 = load i32, i32* @nkexec_segments, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i8* %46, i8** %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %53 = load i32, i32* @nkexec_segments, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 4194304, i64* %56, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @rounddown2(i64 %57, i64 4194304)
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %61 = load i32, i32* @nkexec_segments, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i8* %59, i8** %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %66 = load i32, i32* @nkexec_segments, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 4194304, i64* %69, align 8
  %70 = load i32, i32* @nkexec_segments, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @nkexec_segments, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @nkexec_segments, align 4
  br label %73

73:                                               ; preds = %45, %40
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = sub nsw i64 %80, %87
  %89 = getelementptr i8, i8* %79, i64 %88
  %90 = load i8**, i8*** %6, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @loaded_segments, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = sub nsw i64 %98, %105
  %107 = sub i64 %97, %106
  %108 = call i32 @min(i64 %91, i64 %107)
  ret i32 %108
}

declare dso_local i8* @host_getmem(i64) #1

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
