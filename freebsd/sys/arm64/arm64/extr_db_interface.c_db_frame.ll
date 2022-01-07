; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_interface.c_db_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_interface.c_db_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_variable = type { i64 }

@kdb_frame = common dso_local global i32* null, align 8
@DB_VAR_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_variable*, i64*, i32)* @db_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_frame(%struct.db_variable* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_variable*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.db_variable* %0, %struct.db_variable** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @kdb_frame, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

12:                                               ; preds = %3
  %13 = load i32*, i32** @kdb_frame, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = load %struct.db_variable*, %struct.db_variable** %5, align 8
  %16 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DB_VAR_GET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  br label %31

27:                                               ; preds = %12
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %8, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
