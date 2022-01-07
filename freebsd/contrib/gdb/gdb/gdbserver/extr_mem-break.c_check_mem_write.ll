; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_check_mem_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_check_mem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i64, i8*, i64, %struct.breakpoint* }

@breakpoints = common dso_local global %struct.breakpoint* null, align 8
@breakpoint_len = common dso_local global i64 0, align 8
@breakpoint_data = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_mem_write(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.breakpoint*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.breakpoint*, %struct.breakpoint** @breakpoints, align 8
  store %struct.breakpoint* %15, %struct.breakpoint** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %99, %3
  %21 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %22 = icmp ne %struct.breakpoint* %21, null
  br i1 %22, label %23, label %103

23:                                               ; preds = %20
  %24 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %25 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @breakpoint_len, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %99

33:                                               ; preds = %23
  %34 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %35 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %99

40:                                               ; preds = %33
  %41 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %42 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %63 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %4, align 8
  %69 = sub nsw i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %72 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @memcpy(i8* %76, i8* %80, i32 %81)
  %83 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %84 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %56
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8*, i8** @breakpoint_data, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @memcpy(i8* %91, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %56
  br label %99

99:                                               ; preds = %98, %39, %32
  %100 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %101 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %100, i32 0, i32 3
  %102 = load %struct.breakpoint*, %struct.breakpoint** %101, align 8
  store %struct.breakpoint* %102, %struct.breakpoint** %7, align 8
  br label %20

103:                                              ; preds = %20
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
