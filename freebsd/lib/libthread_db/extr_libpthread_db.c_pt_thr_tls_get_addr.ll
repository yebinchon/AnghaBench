; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_libpthread_db.c_pt_thr_tls_get_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_libpthread_db.c_pt_thr_tls_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@TD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64, i64*)* @pt_thr_tls_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_thr_tls_get_addr(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  %32 = call i32 (i32, i64, ...) @ps_pread(i32 %26, i64 %31, i32* %14, i64 4)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @P2T(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %99

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = call i32 (i32, i64, ...) @ps_pread(i32 %41, i64 %54, i64* %13, i64 8)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @P2T(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %99

61:                                               ; preds = %38
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = call i32 (i32, i64, ...) @ps_pread(i32 %64, i64 %69, i64* %11, i64 8)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @P2T(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %99

76:                                               ; preds = %61
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = add i64 %80, %84
  %86 = load i64*, i64** %9, align 8
  %87 = call i32 (i32, i64, ...) @ps_pread(i32 %79, i64 %85, i64* %86, i64 8)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @P2T(i32 %91)
  store i32 %92, i32* %5, align 4
  br label %99

93:                                               ; preds = %76
  %94 = load i64, i64* %8, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %94
  store i64 %97, i64* %95, align 8
  %98 = load i32, i32* @TD_OK, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %90, %73, %58, %35
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @ps_pread(i32, i64, ...) #1

declare dso_local i32 @P2T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
