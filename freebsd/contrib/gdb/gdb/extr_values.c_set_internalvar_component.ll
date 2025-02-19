; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_set_internalvar_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_set_internalvar_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internalvar = type { %struct.value* }
%struct.value = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_internalvar_component(%struct.internalvar* %0, i32 %1, i32 %2, i32 %3, %struct.value* %4) #0 {
  %6 = alloca %struct.internalvar*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.value*, align 8
  %11 = alloca i8*, align 8
  store %struct.internalvar* %0, %struct.internalvar** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.value* %4, %struct.value** %10, align 8
  %12 = load %struct.internalvar*, %struct.internalvar** %6, align 8
  %13 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %12, i32 0, i32 0
  %14 = load %struct.value*, %struct.value** %13, align 8
  %15 = call i8* @VALUE_CONTENTS(%struct.value* %14)
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.value*, %struct.value** %10, align 8
  %24 = call i32 @value_as_long(%struct.value* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @modify_field(i8* %22, i32 %24, i32 %25, i32 %26)
  br label %36

28:                                               ; preds = %5
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.value*, %struct.value** %10, align 8
  %31 = call i8* @VALUE_CONTENTS(%struct.value* %30)
  %32 = load %struct.value*, %struct.value** %10, align 8
  %33 = call i32 @VALUE_TYPE(%struct.value* %32)
  %34 = call i32 @TYPE_LENGTH(i32 %33)
  %35 = call i32 @memcpy(i8* %29, i8* %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %21
  ret void
}

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @modify_field(i8*, i32, i32, i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
