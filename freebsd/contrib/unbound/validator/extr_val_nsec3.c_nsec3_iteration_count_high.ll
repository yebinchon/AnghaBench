; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_iteration_count_high.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_iteration_count_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_env = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.key_entry_key = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"nsec3: keysize %d bits, max iterations %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_env*, %struct.nsec3_filter*, %struct.key_entry_key*)* @nsec3_iteration_count_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_iteration_count_high(%struct.val_env* %0, %struct.nsec3_filter* %1, %struct.key_entry_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.val_env*, align 8
  %6 = alloca %struct.nsec3_filter*, align 8
  %7 = alloca %struct.key_entry_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.val_env* %0, %struct.val_env** %5, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %6, align 8
  store %struct.key_entry_key* %2, %struct.key_entry_key** %7, align 8
  %13 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %14 = call i64 @key_entry_keysize(%struct.key_entry_key* %13)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.val_env*, %struct.val_env** %5, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i64 @get_max_iter(%struct.val_env* %15, i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* @VERB_ALGO, align 4
  %19 = load i64, i64* %11, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* %12, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @verbose(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.nsec3_filter*, %struct.nsec3_filter** %6, align 8
  %25 = call %struct.ub_packed_rrset_key* @filter_first(%struct.nsec3_filter* %24, i64* %8, i32* %9)
  store %struct.ub_packed_rrset_key* %25, %struct.ub_packed_rrset_key** %10, align 8
  br label %26

26:                                               ; preds = %37, %3
  %27 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %28 = icmp ne %struct.ub_packed_rrset_key* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @nsec3_get_iter(%struct.ub_packed_rrset_key* %30, i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %41

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.nsec3_filter*, %struct.nsec3_filter** %6, align 8
  %39 = call %struct.ub_packed_rrset_key* @filter_next(%struct.nsec3_filter* %38, i64* %8, i32* %9)
  store %struct.ub_packed_rrset_key* %39, %struct.ub_packed_rrset_key** %10, align 8
  br label %26

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @key_entry_keysize(%struct.key_entry_key*) #1

declare dso_local i64 @get_max_iter(%struct.val_env*, i64) #1

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @filter_first(%struct.nsec3_filter*, i64*, i32*) #1

declare dso_local i64 @nsec3_get_iter(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @filter_next(%struct.nsec3_filter*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
