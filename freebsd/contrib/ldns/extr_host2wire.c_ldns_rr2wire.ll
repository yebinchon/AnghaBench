; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_rr2wire(i32** %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %13 = call i32* @ldns_buffer_new(i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i64*, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32**, i32*** %6, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %19, i64* %5, align 8
  br label %40

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @ldns_rr2buffer_wire(i32* %21, i32* %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @LDNS_STATUS_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @ldns_buffer_position(i32* %29)
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @ldns_buffer_export(i32* %32)
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32**, i32*** %6, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %28, %20
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ldns_buffer_free(i32* %37)
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %18
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_rr2buffer_wire(i32*, i32*, i32) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

declare dso_local i64 @ldns_buffer_export(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
