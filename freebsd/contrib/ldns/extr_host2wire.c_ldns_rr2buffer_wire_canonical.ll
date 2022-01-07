; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2buffer_wire_canonical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2buffer_wire_canonical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rr2buffer_wire_canonical(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ldns_rr_get_type(i32* %10)
  switch i32 %11, label %13 [
    i32 137, label %12
    i32 144, label %12
    i32 143, label %12
    i32 149, label %12
    i32 129, label %12
    i32 145, label %12
    i32 142, label %12
    i32 140, label %12
    i32 135, label %12
    i32 147, label %12
    i32 141, label %12
    i32 139, label %12
    i32 133, label %12
    i32 150, label %12
    i32 131, label %12
    i32 130, label %12
    i32 134, label %12
    i32 136, label %12
    i32 138, label %12
    i32 146, label %12
    i32 128, label %12
    i32 148, label %12
    i32 151, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %9, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @ldns_rr_owner(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ldns_rr_owner(i32* %20)
  %22 = call i32 @ldns_rdf2buffer_wire_canonical(i32* %19, i64 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @ldns_buffer_reserve(i32* %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ldns_rr_get_type(i32* %29)
  %31 = call i32 @ldns_buffer_write_u16(i32* %28, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ldns_rr_get_class(i32* %33)
  %35 = call i32 @ldns_buffer_write_u16(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @ldns_buffer_reserve(i32* %41, i32 6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ldns_rr_ttl(i32* %46)
  %48 = call i32 @ldns_buffer_write_u32(i32* %45, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @ldns_buffer_position(i32* %49)
  store i64 %50, i64* %8, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ldns_buffer_write_u16(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %44, %40
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @ldns_rr_rd_count(i32* %56)
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @ldns_rr_rdf(i32* %64, i64 %65)
  %67 = call i32 @ldns_rdf2buffer_wire_canonical(i32* %63, i64 %66)
  br label %74

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @ldns_rr_rdf(i32* %70, i64 %71)
  %73 = call i32 @ldns_rdf2buffer_wire(i32* %69, i64 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %54

78:                                               ; preds = %54
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @ldns_buffer_position(i32* %84)
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  %88 = sub nsw i64 %87, 2
  %89 = call i32 @ldns_buffer_write_u16_at(i32* %82, i64 %83, i64 %88)
  br label %90

90:                                               ; preds = %81, %78
  br label %91

91:                                               ; preds = %90, %36
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @ldns_buffer_status(i32* %92)
  ret i32 %93
}

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_owner(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_wire_canonical(i32*, i64) #1

declare dso_local i64 @ldns_buffer_reserve(i32*, i32) #1

declare dso_local i32 @ldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i32 @ldns_buffer_write_u32(i32*, i32) #1

declare dso_local i32 @ldns_rr_ttl(i32*) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

declare dso_local i64 @ldns_rr_rd_count(i32*) #1

declare dso_local i64 @ldns_rr_rdf(i32*, i64) #1

declare dso_local i32 @ldns_rdf2buffer_wire(i32*, i64) #1

declare dso_local i32 @ldns_buffer_write_u16_at(i32*, i64, i64) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
