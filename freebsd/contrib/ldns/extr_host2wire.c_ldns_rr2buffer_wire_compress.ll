; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2buffer_wire_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_rr2buffer_wire_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4
@LDNS_RR_COMPRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rr2buffer_wire_compress(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @ldns_rr_owner(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @ldns_rr_owner(i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @ldns_dname2buffer_wire_compress(i32* %15, i64 %17, i32* %18)
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ldns_buffer_reserve(i32* %21, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ldns_rr_get_type(i32* %26)
  %28 = call i32 @ldns_buffer_write_u16(i32* %25, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ldns_rr_get_class(i32* %30)
  %32 = call i32 @ldns_buffer_write_u16(i32* %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @ldns_buffer_reserve(i32* %38, i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ldns_rr_ttl(i32* %43)
  %45 = call i32 @ldns_buffer_write_u32(i32* %42, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @ldns_buffer_position(i32* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ldns_buffer_write_u16(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %41, %37
  %51 = load i64, i64* @LDNS_RR_COMPRESS, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ldns_rr_get_type(i32* %52)
  %54 = call %struct.TYPE_2__* @ldns_rr_descript(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i64, i64* %9, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @ldns_rr_rd_count(i32* %61)
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @ldns_rr_rdf(i32* %66, i64 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @ldns_rdf2buffer_wire_compress(i32* %65, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %59

74:                                               ; preds = %59
  br label %91

75:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %87, %75
  %77 = load i64, i64* %9, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @ldns_rr_rd_count(i32* %78)
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @ldns_rr_rdf(i32* %83, i64 %84)
  %86 = call i32 @ldns_rdf2buffer_wire(i32* %82, i32 %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %76

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i64 @ldns_buffer_position(i32* %97)
  %99 = load i64, i64* %10, align 8
  %100 = sub nsw i64 %98, %99
  %101 = sub nsw i64 %100, 2
  %102 = call i32 @ldns_buffer_write_u16_at(i32* %95, i64 %96, i64 %101)
  br label %103

103:                                              ; preds = %94, %91
  br label %104

104:                                              ; preds = %103, %33
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @ldns_buffer_status(i32* %105)
  ret i32 %106
}

declare dso_local i64 @ldns_rr_owner(i32*) #1

declare dso_local i32 @ldns_dname2buffer_wire_compress(i32*, i64, i32*) #1

declare dso_local i64 @ldns_buffer_reserve(i32*, i32) #1

declare dso_local i32 @ldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i32 @ldns_buffer_write_u32(i32*, i32) #1

declare dso_local i32 @ldns_rr_ttl(i32*) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

declare dso_local %struct.TYPE_2__* @ldns_rr_descript(i32) #1

declare dso_local i64 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_wire_compress(i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i64) #1

declare dso_local i32 @ldns_rdf2buffer_wire(i32*, i32) #1

declare dso_local i32 @ldns_buffer_write_u16_at(i32*, i64, i64) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
