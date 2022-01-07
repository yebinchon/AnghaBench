; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rdf2buffer_wire_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rdf2buffer_wire_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_wire_compress(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @ldns_rdf_get_type(i32* %11)
  %13 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ldns_dname2buffer_wire_compress(i32* %16, i32* %17, i32* %18)
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %10, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ldns_rdf_size(i32* %22)
  %24 = call i64 @ldns_buffer_reserve(i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ldns_rdf_data(i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ldns_rdf_size(i32* %30)
  %32 = call i32 @ldns_buffer_write(i32* %27, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %26, %20
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ldns_buffer_status(i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i32 @ldns_dname2buffer_wire_compress(i32*, i32*, i32*) #1

declare dso_local i64 @ldns_buffer_reserve(i32*, i32) #1

declare dso_local i32 @ldns_rdf_size(i32*) #1

declare dso_local i32 @ldns_buffer_write(i32*, i32, i32) #1

declare dso_local i32 @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
