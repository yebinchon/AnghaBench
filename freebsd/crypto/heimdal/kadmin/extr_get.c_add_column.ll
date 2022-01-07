; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_add_column.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_add_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_entry_data = type { i32*, i32, i32, %struct.field_info** }
%struct.field_info = type { %struct.field_info*, i32*, %struct.field_name* }
%struct.field_name = type { i8*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.get_entry_data*, %struct.field_name*, i8*)* @add_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_column(%struct.get_entry_data* %0, %struct.field_name* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.get_entry_data*, align 8
  %6 = alloca %struct.field_name*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.field_info*, align 8
  store %struct.get_entry_data* %0, %struct.get_entry_data** %5, align 8
  store %struct.field_name* %1, %struct.field_name** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.field_info* @malloc(i32 24)
  store %struct.field_info* %9, %struct.field_info** %8, align 8
  %10 = load %struct.field_info*, %struct.field_info** %8, align 8
  %11 = icmp eq %struct.field_info* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %4, align 4
  br label %79

14:                                               ; preds = %3
  %15 = load %struct.field_name*, %struct.field_name** %6, align 8
  %16 = load %struct.field_info*, %struct.field_info** %8, align 8
  %17 = getelementptr inbounds %struct.field_info, %struct.field_info* %16, i32 0, i32 2
  store %struct.field_name* %15, %struct.field_name** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @strdup(i8* %21)
  %23 = load %struct.field_info*, %struct.field_info** %8, align 8
  %24 = getelementptr inbounds %struct.field_info, %struct.field_info* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.field_info*, %struct.field_info** %8, align 8
  %27 = getelementptr inbounds %struct.field_info, %struct.field_info* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.field_info*, %struct.field_info** %8, align 8
  %30 = getelementptr inbounds %struct.field_info, %struct.field_info* %29, i32 0, i32 0
  store %struct.field_info* null, %struct.field_info** %30, align 8
  %31 = load %struct.field_info*, %struct.field_info** %8, align 8
  %32 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %33 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %32, i32 0, i32 3
  %34 = load %struct.field_info**, %struct.field_info*** %33, align 8
  store %struct.field_info* %31, %struct.field_info** %34, align 8
  %35 = load %struct.field_info*, %struct.field_info** %8, align 8
  %36 = getelementptr inbounds %struct.field_info, %struct.field_info* %35, i32 0, i32 0
  %37 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %38 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %37, i32 0, i32 3
  store %struct.field_info** %36, %struct.field_info*** %38, align 8
  %39 = load %struct.field_name*, %struct.field_name** %6, align 8
  %40 = getelementptr inbounds %struct.field_name, %struct.field_name* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %43 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.field_name*, %struct.field_name** %6, align 8
  %47 = getelementptr inbounds %struct.field_name, %struct.field_name* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %50 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %54 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %28
  %58 = load %struct.get_entry_data*, %struct.get_entry_data** %5, align 8
  %59 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.field_name*, %struct.field_name** %6, align 8
  %62 = getelementptr inbounds %struct.field_name, %struct.field_name* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.field_name*, %struct.field_name** %6, align 8
  %70 = getelementptr inbounds %struct.field_name, %struct.field_name* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  br label %72

72:                                               ; preds = %68, %66
  %73 = phi i8* [ %67, %66 ], [ %71, %68 ]
  %74 = load %struct.field_name*, %struct.field_name** %6, align 8
  %75 = getelementptr inbounds %struct.field_name, %struct.field_name* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @rtbl_add_column_by_id(i32* %60, i32 %63, i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %28
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %12
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.field_info* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @rtbl_add_column_by_id(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
