; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_mnemonic4int8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_mnemonic4int8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@LDNS_RDF_TYPE_INT8 = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i8*)* @ldns_str2rdf_mnemonic4int8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_str2rdf_mnemonic4int8(%struct.TYPE_5__* %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.TYPE_5__* @ldns_lookup_by_name(%struct.TYPE_5__* %8, i8* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i32, i32* @LDNS_RDF_TYPE_INT8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32* @ldns_native2rdf_int8(i32 %13, i32 %17)
  %19 = load i32**, i32*** %6, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32**, i32*** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @ldns_str2rdf_int8(i32** %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %25, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_5__* @ldns_lookup_by_name(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @ldns_native2rdf_int8(i32, i32) #1

declare dso_local i32 @ldns_str2rdf_int8(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
