; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rdf2wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rdf2wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_rdf2wire(i32** %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %11 = call i32* @ldns_buffer_new(i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32**, i32*** %5, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %17, i64* %4, align 8
  br label %37

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @ldns_rdf2buffer_wire(i32* %19, i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @LDNS_STATUS_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @ldns_buffer_position(i32* %26)
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @ldns_buffer_export(i32* %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32**, i32*** %5, align 8
  store i32* %31, i32** %32, align 8
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @ldns_buffer_free(i32* %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %33, %16
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_rdf2buffer_wire(i32*, i32*) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

declare dso_local i64 @ldns_buffer_export(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
