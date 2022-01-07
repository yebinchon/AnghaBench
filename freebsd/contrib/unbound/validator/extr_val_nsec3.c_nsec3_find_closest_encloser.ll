; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_find_closest_encloser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_find_closest_encloser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.query_info = type { i64, i32* }
%struct.ce_response = type { i64, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, %struct.ce_response*)* @nsec3_find_closest_encloser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_find_closest_encloser(%struct.module_env* %0, %struct.nsec3_filter* %1, i32* %2, %struct.query_info* %3, %struct.ce_response* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.nsec3_filter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.ce_response*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.query_info* %3, %struct.query_info** %10, align 8
  store %struct.ce_response* %4, %struct.ce_response** %11, align 8
  %14 = load %struct.query_info*, %struct.query_info** %10, align 8
  %15 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = load %struct.query_info*, %struct.query_info** %10, align 8
  %18 = getelementptr inbounds %struct.query_info, %struct.query_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  br label %20

20:                                               ; preds = %46, %5
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.nsec3_filter*, %struct.nsec3_filter** %8, align 8
  %23 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dname_subdomain_c(i32* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.module_env*, %struct.module_env** %7, align 8
  %29 = load %struct.nsec3_filter*, %struct.nsec3_filter** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.ce_response*, %struct.ce_response** %11, align 8
  %34 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %33, i32 0, i32 3
  %35 = load %struct.ce_response*, %struct.ce_response** %11, align 8
  %36 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %35, i32 0, i32 2
  %37 = call i64 @find_matching_nsec3(%struct.module_env* %28, %struct.nsec3_filter* %29, i32* %30, i32* %31, i64 %32, i32* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.ce_response*, %struct.ce_response** %11, align 8
  %42 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.ce_response*, %struct.ce_response** %11, align 8
  %45 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 1, i32* %6, align 4
  br label %49

46:                                               ; preds = %27
  %47 = call i32 @dname_remove_label(i32** %12, i64* %13)
  br label %20

48:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @dname_subdomain_c(i32*, i32) #1

declare dso_local i64 @find_matching_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
