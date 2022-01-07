; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_subtract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i64, i64, i64 }

@pv_constant = common dso_local global i64 0, align 8
@pv_register = common dso_local global i64 0, align 8
@pv_unknown = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*)* @pv_subtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_subtract(%struct.prologue_value* %0, %struct.prologue_value* %1, %struct.prologue_value* %2) #0 {
  %4 = alloca %struct.prologue_value*, align 8
  %5 = alloca %struct.prologue_value*, align 8
  %6 = alloca %struct.prologue_value*, align 8
  store %struct.prologue_value* %0, %struct.prologue_value** %4, align 8
  store %struct.prologue_value* %1, %struct.prologue_value** %5, align 8
  store %struct.prologue_value* %2, %struct.prologue_value** %6, align 8
  %7 = call i32 @pv_constant_last(%struct.prologue_value** %5, %struct.prologue_value** %6)
  %8 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %9 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @pv_constant, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %15 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @pv_register, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %21 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @pv_constant, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19, %13
  %26 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %27 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %30 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %32 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %35 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %37 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %40 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %44 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %83

45:                                               ; preds = %19, %3
  %46 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %47 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @pv_register, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %53 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @pv_register, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %59 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %62 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load i64, i64* @pv_constant, align 8
  %67 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %68 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %70 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %73 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %77 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %82

78:                                               ; preds = %57, %51, %45
  %79 = load i64, i64* @pv_unknown, align 8
  %80 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %81 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %65
  br label %83

83:                                               ; preds = %82, %25
  ret void
}

declare dso_local i32 @pv_constant_last(%struct.prologue_value**, %struct.prologue_value**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
