; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_is_identical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_is_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prologue_value*, %struct.prologue_value*)* @pv_is_identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv_is_identical(%struct.prologue_value* %0, %struct.prologue_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prologue_value*, align 8
  %5 = alloca %struct.prologue_value*, align 8
  store %struct.prologue_value* %0, %struct.prologue_value** %4, align 8
  store %struct.prologue_value* %1, %struct.prologue_value** %5, align 8
  %6 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %7 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %10 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %16 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %47 [
    i32 128, label %18
    i32 130, label %19
    i32 129, label %28
  ]

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %49

19:                                               ; preds = %14
  %20 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %21 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %24 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %14
  %29 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %30 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %33 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %38 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %41 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %14
  %48 = call i32 @gdb_assert(i32 0)
  br label %49

49:                                               ; preds = %13, %18, %19, %44, %47
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
