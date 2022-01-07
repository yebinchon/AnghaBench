; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status_error = common dso_local global i32 0, align 4
@LDNS_STATUS_PACKET_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_SECTION_QUESTION = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_wire2rr(i32** %0, i32* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  %15 = call i32* (...) @ldns_rr_new()
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = call i32 @ldns_wire2dname(i32** %12, i32* %16, i64 %17, i64* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @status_error, align 4
  %22 = call i32 @LDNS_STATUS_CHECK_GOTO(i32 %20, i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @ldns_rr_set_owner(i32* %23, i32* %24)
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 4
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @LDNS_STATUS_PACKET_OVERFLOW, align 4
  store i32 %32, i32* %14, align 4
  br label %96

33:                                               ; preds = %5
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @ldns_read_uint16(i32* %38)
  %40 = call i32 @ldns_rr_set_type(i32* %34, i32 %39)
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 2
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @ldns_read_uint16(i32* %49)
  %51 = call i32 @ldns_rr_set_class(i32* %45, i32 %50)
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 2
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @LDNS_SECTION_QUESTION, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %33
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 4
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @LDNS_STATUS_PACKET_OVERFLOW, align 4
  store i32 %66, i32* %14, align 4
  br label %96

67:                                               ; preds = %59
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @ldns_read_uint32(i32* %72)
  %74 = call i32 @ldns_rr_set_ttl(i32* %68, i32 %73)
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 4
  %78 = load i64*, i64** %10, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = call i32 @ldns_wire2rdf(i32* %79, i32* %80, i64 %81, i64* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @status_error, align 4
  %86 = call i32 @LDNS_STATUS_CHECK_GOTO(i32 %84, i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @ldns_rr_set_question(i32* %87, i32 0)
  br label %92

89:                                               ; preds = %33
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @ldns_rr_set_question(i32* %90, i32 1)
  br label %92

92:                                               ; preds = %89, %67
  %93 = load i32*, i32** %13, align 8
  %94 = load i32**, i32*** %7, align 8
  store i32* %93, i32** %94, align 8
  %95 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %95, i32* %6, align 4
  br label %100

96:                                               ; preds = %65, %31
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @ldns_rr_free(i32* %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32 @ldns_wire2dname(i32**, i32*, i64, i64*) #1

declare dso_local i32 @LDNS_STATUS_CHECK_GOTO(i32, i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_read_uint16(i32*) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_ttl(i32*, i32) #1

declare dso_local i32 @ldns_read_uint32(i32*) #1

declare dso_local i32 @ldns_wire2rdf(i32*, i32*, i64, i64*) #1

declare dso_local i32 @ldns_rr_set_question(i32*, i32) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
