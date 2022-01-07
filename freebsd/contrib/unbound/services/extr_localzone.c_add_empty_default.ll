; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_add_empty_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_add_empty_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { i32 }
%struct.local_zone = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"%s 10800 IN SOA localhost. nobody.invalid. 1 3600 1200 604800 10800\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s 10800 IN NS localhost. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, %struct.config_file*, i8*)* @add_empty_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_empty_default(%struct.local_zones* %0, %struct.config_file* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.local_zones*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.local_zone*, align 8
  %9 = alloca [1024 x i8], align 16
  store %struct.local_zones* %0, %struct.local_zones** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.local_zones*, %struct.local_zones** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @lz_exists(%struct.local_zones* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.config_file*, %struct.config_file** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @lz_nodefault(%struct.config_file* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store i32 1, i32* %4, align 4
  br label %55

20:                                               ; preds = %14
  %21 = load %struct.local_zones*, %struct.local_zones** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %24 = call %struct.local_zone* @lz_enter_zone(%struct.local_zones* %21, i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.local_zone* %24, %struct.local_zone** %8, align 8
  %25 = icmp ne %struct.local_zone* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %55

27:                                               ; preds = %20
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @snprintf(i8* %28, i32 1024, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.local_zone*, %struct.local_zone** %8, align 8
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %33 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.local_zone*, %struct.local_zone** %8, align 8
  %37 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_unlock(i32* %37)
  store i32 0, i32* %4, align 4
  br label %55

39:                                               ; preds = %27
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @snprintf(i8* %40, i32 1024, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.local_zone*, %struct.local_zone** %8, align 8
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %45 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load %struct.local_zone*, %struct.local_zone** %8, align 8
  %49 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %48, i32 0, i32 0
  %50 = call i32 @lock_rw_unlock(i32* %49)
  store i32 0, i32* %4, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.local_zone*, %struct.local_zone** %8, align 8
  %53 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %52, i32 0, i32 0
  %54 = call i32 @lock_rw_unlock(i32* %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %47, %35, %26, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @lz_exists(%struct.local_zones*, i8*) #1

declare dso_local i64 @lz_nodefault(%struct.config_file*, i8*) #1

declare dso_local %struct.local_zone* @lz_enter_zone(%struct.local_zones*, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @lz_enter_rr_into_zone(%struct.local_zone*, i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
