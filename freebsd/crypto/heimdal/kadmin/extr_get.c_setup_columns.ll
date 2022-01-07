; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_setup_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_setup_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_name = type { i32* }
%struct.get_entry_data = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@field_names = common dso_local global %struct.field_name* null, align 8
@context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown field name \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.get_entry_data*, i8*)* @setup_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_columns(%struct.get_entry_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.get_entry_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.field_name*, align 8
  store %struct.get_entry_data* %0, %struct.get_entry_data** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %11

11:                                               ; preds = %52, %2
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %13 = call i32 @strsep_copy(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %12, i32 1024)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %16, i8** %7, align 8
  %17 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = load %struct.field_name*, %struct.field_name** @field_names, align 8
  store %struct.field_name* %19, %struct.field_name** %10, align 8
  br label %20

20:                                               ; preds = %38, %15
  %21 = load %struct.field_name*, %struct.field_name** %10, align 8
  %22 = getelementptr inbounds %struct.field_name, %struct.field_name* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.field_name*, %struct.field_name** %10, align 8
  %28 = getelementptr inbounds %struct.field_name, %struct.field_name* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @strcasecmp(i8* %26, i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.get_entry_data*, %struct.get_entry_data** %4, align 8
  %34 = load %struct.field_name*, %struct.field_name** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @add_column(%struct.get_entry_data* %33, %struct.field_name* %34, i8* %35)
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.field_name*, %struct.field_name** %10, align 8
  %40 = getelementptr inbounds %struct.field_name, %struct.field_name* %39, i32 1
  store %struct.field_name* %40, %struct.field_name** %10, align 8
  br label %20

41:                                               ; preds = %32, %20
  %42 = load %struct.field_name*, %struct.field_name** %10, align 8
  %43 = getelementptr inbounds %struct.field_name, %struct.field_name* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @context, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @krb5_warnx(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load %struct.get_entry_data*, %struct.get_entry_data** %4, align 8
  %51 = call i32 @free_columns(%struct.get_entry_data* %50)
  store i32 -1, i32* %3, align 4
  br label %54

52:                                               ; preds = %41
  br label %11

53:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @strsep_copy(i8**, i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @add_column(%struct.get_entry_data*, %struct.field_name*, i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i32 @free_columns(%struct.get_entry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
