; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_add_undefined_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_add_undefined_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@undef_types_length = common dso_local global i32 0, align 4
@undef_types_allocated = common dso_local global i32 0, align 4
@undef_types = common dso_local global %struct.type** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*)* @add_undefined_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_undefined_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %3 = load i32, i32* @undef_types_length, align 4
  %4 = load i32, i32* @undef_types_allocated, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @undef_types_allocated, align 4
  %8 = mul nsw i32 %7, 2
  store i32 %8, i32* @undef_types_allocated, align 4
  %9 = load %struct.type**, %struct.type*** @undef_types, align 8
  %10 = bitcast %struct.type** %9 to i8*
  %11 = load i32, i32* @undef_types_allocated, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @xrealloc(i8* %10, i32 %14)
  %16 = inttoptr i64 %15 to %struct.type**
  store %struct.type** %16, %struct.type*** @undef_types, align 8
  br label %17

17:                                               ; preds = %6, %1
  %18 = load %struct.type*, %struct.type** %2, align 8
  %19 = load %struct.type**, %struct.type*** @undef_types, align 8
  %20 = load i32, i32* @undef_types_length, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @undef_types_length, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.type*, %struct.type** %19, i64 %22
  store %struct.type* %18, %struct.type** %23, align 8
  ret void
}

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
