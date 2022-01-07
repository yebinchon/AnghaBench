; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_calc_b32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_calc_b32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.nsec3_cached_hash = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"b32_ntop_extended_hex: error in encoding: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, i32*, %struct.nsec3_cached_hash*)* @nsec3_calc_b32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_calc_b32(%struct.regional* %0, i32* %1, %struct.nsec3_cached_hash* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regional*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nsec3_cached_hash*, align 8
  %8 = alloca i32, align 4
  store %struct.regional* %0, %struct.regional** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nsec3_cached_hash* %2, %struct.nsec3_cached_hash** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @sldns_buffer_clear(i32* %9)
  %11 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %12 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %15 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @sldns_buffer_begin(i32* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @sldns_buffer_limit(i32* %20)
  %22 = call i32 @sldns_b32_ntop_extended_hex(i32 %13, i32 %16, i8* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %32 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.regional*, %struct.regional** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @sldns_buffer_begin(i32* %34)
  %36 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %37 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @regional_alloc_init(%struct.regional* %33, i64 %35, i64 %38)
  %40 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %41 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %43 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_b32_ntop_extended_hex(i32, i32, i8*, i32) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
