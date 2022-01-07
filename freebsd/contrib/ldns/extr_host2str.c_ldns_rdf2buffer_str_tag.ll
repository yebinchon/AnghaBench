; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_tag(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @ldns_rdf_size(i32* %9)
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64* @ldns_rdf_data(i32* %15)
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ldns_rdf_size(i32* %20)
  %22 = icmp uge i64 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %14
  %27 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i64* @ldns_rdf_data(i32* %29)
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64* %31, i64** %7, align 8
  br label %32

32:                                               ; preds = %45, %28
  %33 = load i64, i64* %6, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %7, align 8
  %38 = load i64, i64* %36, align 8
  %39 = trunc i64 %38 to i8
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @isalnum(i8 zeroext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = load i8, i8* %8, align 1
  %48 = call i32 @ldns_buffer_printf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %47)
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %6, align 8
  br label %32

51:                                               ; preds = %32
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ldns_buffer_status(i32* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %43, %26, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, i8 signext) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
