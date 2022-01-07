; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_remove_rr_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_remove_rr_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.sldns_buffer = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not decompress RR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32*, i64, %struct.sldns_buffer*, i32*, i32, i32, i32, i32*, i32, i32*)* @az_remove_rr_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_remove_rr_decompress(%struct.auth_zone* %0, i32* %1, i64 %2, %struct.sldns_buffer* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.auth_zone*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sldns_buffer*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %13, align 8
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store %struct.sldns_buffer* %3, %struct.sldns_buffer** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %27 = load %struct.sldns_buffer*, %struct.sldns_buffer** %16, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* %20, align 4
  %34 = load i32*, i32** %21, align 8
  %35 = load i32, i32* %22, align 4
  %36 = call i32 @decompress_rr_into_buffer(%struct.sldns_buffer* %27, i32* %28, i64 %29, i32* %30, i32 %31, i32 %32, i32 %33, i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %11
  %39 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %54

40:                                               ; preds = %11
  %41 = load %struct.sldns_buffer*, %struct.sldns_buffer** %16, align 8
  %42 = call i32* @sldns_buffer_begin(%struct.sldns_buffer* %41)
  store i32* %42, i32** %24, align 8
  %43 = load %struct.sldns_buffer*, %struct.sldns_buffer** %16, align 8
  %44 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %43)
  store i64 %44, i64* %25, align 8
  %45 = load i32*, i32** %24, align 8
  %46 = load i64, i64* %25, align 8
  %47 = call i64 @dname_valid(i32* %45, i64 %46)
  store i64 %47, i64* %26, align 8
  %48 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* %26, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = call i32 @az_remove_rr(%struct.auth_zone* %48, i32* %49, i64 %50, i64 %51, i32* %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %40, %38
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @decompress_rr_into_buffer(%struct.sldns_buffer*, i32*, i64, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32* @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i64 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i64 @dname_valid(i32*, i64) #1

declare dso_local i32 @az_remove_rr(%struct.auth_zone*, i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
