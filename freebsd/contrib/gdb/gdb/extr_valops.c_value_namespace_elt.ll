; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_namespace_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_namespace_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"No symbol \22%s\22 in namespace \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, i8*, i32)* @value_namespace_elt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_namespace_elt(%struct.type* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.value* @value_maybe_namespace_elt(%struct.type* %8, i8* %9, i32 %10)
  store %struct.value* %11, %struct.value** %7, align 8
  %12 = load %struct.value*, %struct.value** %7, align 8
  %13 = icmp eq %struct.value* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call i8* @TYPE_TAG_NAME(%struct.type* %16)
  %18 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %20
}

declare dso_local %struct.value* @value_maybe_namespace_elt(%struct.type*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
