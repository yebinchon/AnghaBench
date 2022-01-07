; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_log_packed_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_log_packed_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: rr %d wire2str-error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_packed_rrset(i32 %0, i8* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca [65535 x i8], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %6, align 8
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %11 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %14, %struct.packed_rrset_data** %7, align 8
  %15 = load i32, i32* @verbosity, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %49

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds [65535 x i8], [65535 x i8]* %8, i64 0, i64 0
  %34 = call i32 @packed_rr_to_string(%struct.ub_packed_rrset_key* %31, i64 %32, i32 0, i8* %33, i32 65535)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  br label %45

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds [65535 x i8], [65535 x i8]* %8, i64 0, i64 0
  %44 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %20

49:                                               ; preds = %18, %20
  ret void
}

declare dso_local i32 @packed_rr_to_string(%struct.ub_packed_rrset_key*, i64, i32, i8*, i32) #1

declare dso_local i32 @log_info(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
