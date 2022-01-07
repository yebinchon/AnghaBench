; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_hmac_key2buffer_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_hmac_key2buffer_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Key: \00", align 1
@LDNS_RDF_TYPE_B64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ldns_hmac_key2buffer_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_hmac_key2buffer_str(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @ldns_buffer_printf(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @ldns_key_hmac_size(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @LDNS_RDF_TYPE_B64, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ldns_key_hmac_key(i32* %14)
  %16 = call i32* @ldns_rdf_new_frm_data(i32 %12, i64 %13, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ldns_rdf2buffer_str(i32* %17, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @ldns_rdf_deep_free(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ldns_buffer_printf(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @ldns_buffer_printf(i32*, i8*) #1

declare dso_local i64 @ldns_key_hmac_size(i32*) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i64, i32) #1

declare dso_local i32 @ldns_key_hmac_key(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
