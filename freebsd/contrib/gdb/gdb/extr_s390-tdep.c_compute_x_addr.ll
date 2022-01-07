; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_compute_x_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_compute_x_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prologue_value*, %struct.prologue_value*, i32, i32, i32)* @compute_x_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_x_addr(%struct.prologue_value* %0, %struct.prologue_value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.prologue_value*, align 8
  %7 = alloca %struct.prologue_value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.prologue_value, align 4
  store %struct.prologue_value* %0, %struct.prologue_value** %6, align 8
  store %struct.prologue_value* %1, %struct.prologue_value** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @pv_set_to_constant(%struct.prologue_value* %11, i32 %12)
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.prologue_value*, %struct.prologue_value** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %17, i64 %19
  %21 = call i32 @pv_add(%struct.prologue_value* %11, %struct.prologue_value* %11, %struct.prologue_value* %20)
  br label %22

22:                                               ; preds = %16, %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.prologue_value*, %struct.prologue_value** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %26, i64 %28
  %30 = call i32 @pv_add(%struct.prologue_value* %11, %struct.prologue_value* %11, %struct.prologue_value* %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %33 = bitcast %struct.prologue_value* %32 to i8*
  %34 = bitcast %struct.prologue_value* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  ret void
}

declare dso_local i32 @pv_set_to_constant(%struct.prologue_value*, i32) #1

declare dso_local i32 @pv_add(%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
