; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_print_entry_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_print_entry_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_entry_data = type { i32, %struct.field_info* }
%struct.field_info = type { %struct.TYPE_2__*, %struct.field_info* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.get_entry_data*, i32)* @print_entry_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_entry_short(%struct.get_entry_data* %0, i32 %1) #0 {
  %3 = alloca %struct.get_entry_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.field_info*, align 8
  store %struct.get_entry_data* %0, %struct.get_entry_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.get_entry_data*, %struct.get_entry_data** %3, align 8
  %8 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %7, i32 0, i32 1
  %9 = load %struct.field_info*, %struct.field_info** %8, align 8
  store %struct.field_info* %9, %struct.field_info** %6, align 8
  br label %10

10:                                               ; preds = %37, %2
  %11 = load %struct.field_info*, %struct.field_info** %6, align 8
  %12 = icmp ne %struct.field_info* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.field_info*, %struct.field_info** %6, align 8
  %16 = getelementptr inbounds %struct.field_info, %struct.field_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.field_info*, %struct.field_info** %6, align 8
  %21 = getelementptr inbounds %struct.field_info, %struct.field_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %26 = call i32 @format_field(i32 %14, i32 %19, i32 %24, i8* %25, i32 1024, i32 1)
  %27 = load %struct.get_entry_data*, %struct.get_entry_data** %3, align 8
  %28 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.field_info*, %struct.field_info** %6, align 8
  %31 = getelementptr inbounds %struct.field_info, %struct.field_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %36 = call i32 @rtbl_add_column_entry_by_id(i32 %29, i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %13
  %38 = load %struct.field_info*, %struct.field_info** %6, align 8
  %39 = getelementptr inbounds %struct.field_info, %struct.field_info* %38, i32 0, i32 1
  %40 = load %struct.field_info*, %struct.field_info** %39, align 8
  store %struct.field_info* %40, %struct.field_info** %6, align 8
  br label %10

41:                                               ; preds = %10
  ret void
}

declare dso_local i32 @format_field(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtbl_add_column_entry_by_id(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
