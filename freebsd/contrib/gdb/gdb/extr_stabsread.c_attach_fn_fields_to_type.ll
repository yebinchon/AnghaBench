; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_attach_fn_fields_to_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_attach_fn_fields_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.field_info*, %struct.type*)* @attach_fn_fields_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_fn_fields_to_type(%struct.field_info* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.field_info*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  store %struct.field_info* %0, %struct.field_info** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %6 = load %struct.type*, %struct.type** %4, align 8
  %7 = call i32 @TYPE_NFN_FIELDS(%struct.type* %6)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.field_info*, %struct.field_info** %3, align 8
  %10 = getelementptr inbounds %struct.field_info, %struct.field_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.field_info*, %struct.field_info** %3, align 8
  %17 = getelementptr inbounds %struct.field_info, %struct.field_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = call i32* @TYPE_FN_FIELDLISTS(%struct.type* %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load %struct.field_info*, %struct.field_info** %3, align 8
  %28 = getelementptr inbounds %struct.field_info, %struct.field_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.field_info*, %struct.field_info** %3, align 8
  %33 = getelementptr inbounds %struct.field_info, %struct.field_info* %32, i32 0, i32 0
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  br label %8

34:                                               ; preds = %8
  ret i32 1
}

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i32* @TYPE_FN_FIELDLISTS(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
