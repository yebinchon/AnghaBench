; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_variable = type { i64 }

@kdb_frame = common dso_local global i32* null, align 8
@DB_VAR_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_frame(%struct.db_variable* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_variable*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.db_variable* %0, %struct.db_variable** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @kdb_frame, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

12:                                               ; preds = %3
  %13 = load i32*, i32** @kdb_frame, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = load %struct.db_variable*, %struct.db_variable** %5, align 8
  %16 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = add i64 %14, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DB_VAR_GET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %33

29:                                               ; preds = %12
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
