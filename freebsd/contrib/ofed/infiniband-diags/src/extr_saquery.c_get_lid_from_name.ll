; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_lid_from_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_lid_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sa_query_result = type { i32, i32 }

@IB_SA_ATTR_NODERECORD = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i8*, i32*)* @get_lid_from_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lid_from_name(%struct.sa_handle* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sa_query_result, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.sa_handle*, %struct.sa_handle** %5, align 8
  %13 = load i32, i32* @IB_SA_ATTR_NODERECORD, align 4
  %14 = call i32 @get_all_records(%struct.sa_handle* %12, i32 %13, %struct.sa_query_result* %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %49, %19
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.TYPE_5__* @sa_get_query_rec(i32 %28, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @strncmp(i8* %34, i8* %39, i32 8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cl_ntoh16(i32 %45)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %10, align 4
  br label %52

48:                                               ; preds = %33, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %21

52:                                               ; preds = %42, %21
  %53 = call i32 @sa_free_result_mad(%struct.sa_query_result* %11)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @get_all_records(%struct.sa_handle*, i32, %struct.sa_query_result*) #1

declare dso_local %struct.TYPE_5__* @sa_get_query_rec(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
