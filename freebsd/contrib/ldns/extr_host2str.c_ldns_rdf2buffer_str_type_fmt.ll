; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_type_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_type_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TYPE%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ldns_rdf2buffer_str_type_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_rdf2buffer_str_type_fmt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @ldns_rdf_data(i32* %8)
  %10 = call i64 @ldns_read_uint16(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @ldns_output_format_covers_type(i32* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TYPE_2__* @ldns_rr_descript(i64 %16)
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.TYPE_2__* @ldns_rr_descript(i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.TYPE_2__* @ldns_rr_descript(i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ldns_buffer_printf(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %36

32:                                               ; preds = %19, %15, %3
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @ldns_buffer_printf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ldns_buffer_status(i32* %37)
  ret i32 %38
}

declare dso_local i64 @ldns_read_uint16(i32) #1

declare dso_local i32 @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_output_format_covers_type(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @ldns_rr_descript(i64) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, i64) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
