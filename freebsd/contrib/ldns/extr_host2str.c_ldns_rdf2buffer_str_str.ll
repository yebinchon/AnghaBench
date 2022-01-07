; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_str(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @ldns_rdf_size(i32* %6)
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %10, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ldns_rdf_size(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i64* @ldns_rdf_data(i32* %14)
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %11
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ldns_buffer_printf(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64* @ldns_rdf_data(i32* %27)
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64* @ldns_rdf_data(i32* %31)
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = call i32 @ldns_characters2buffer_str(i32* %26, i64 %30, i64* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ldns_buffer_printf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ldns_buffer_status(i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %21, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ldns_rdf_size(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*) #1

declare dso_local i32 @ldns_characters2buffer_str(i32*, i64, i64*) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
