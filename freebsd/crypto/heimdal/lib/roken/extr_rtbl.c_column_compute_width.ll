; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rtbl.c_column_compute_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rtbl.c_column_compute_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.column_data = type { i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@RTBL_HEADER_STYLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.column_data*)* @column_compute_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @column_compute_width(%struct.TYPE_5__* %0, %struct.column_data* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.column_data*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.column_data* %1, %struct.column_data** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RTBL_HEADER_STYLE_NONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.column_data*, %struct.column_data** %4, align 8
  %14 = getelementptr inbounds %struct.column_data, %struct.column_data* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.column_data*, %struct.column_data** %4, align 8
  %17 = getelementptr inbounds %struct.column_data, %struct.column_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @strlen(i32 %18)
  %20 = load %struct.column_data*, %struct.column_data** %4, align 8
  %21 = getelementptr inbounds %struct.column_data, %struct.column_data* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %12
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.column_data*, %struct.column_data** %4, align 8
  %26 = getelementptr inbounds %struct.column_data, %struct.column_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.column_data*, %struct.column_data** %4, align 8
  %31 = getelementptr inbounds %struct.column_data, %struct.column_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.column_data*, %struct.column_data** %4, align 8
  %34 = getelementptr inbounds %struct.column_data, %struct.column_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strlen(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = call i64 @max(i64 %32, i32 %41)
  %43 = load %struct.column_data*, %struct.column_data** %4, align 8
  %44 = getelementptr inbounds %struct.column_data, %struct.column_data* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %23

48:                                               ; preds = %23
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
