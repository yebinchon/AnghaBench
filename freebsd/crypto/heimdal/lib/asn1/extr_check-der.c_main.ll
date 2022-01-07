; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i64 (...) @test_integer()
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = call i64 (...) @test_integer_more()
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = call i64 (...) @test_unsigned()
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = call i64 (...) @test_octet_string()
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = call i64 (...) @test_bmp_string()
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = call i64 (...) @test_universal_string()
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = call i64 (...) @test_general_string()
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = call i64 (...) @test_generalized_time()
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = call i64 (...) @test_oid()
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = call i64 (...) @test_bit_string()
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = call i64 (...) @test_heim_integer()
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = call i64 (...) @test_boolean()
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = call i64 (...) @check_fail_unsigned()
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = call i64 (...) @check_fail_integer()
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  %77 = call i64 (...) @check_fail_length()
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = call i64 (...) @check_fail_boolean()
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = call i64 (...) @check_fail_general_string()
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  %92 = call i64 (...) @check_fail_bmp_string()
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = call i64 (...) @check_fail_universal_string()
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = call i64 (...) @check_fail_heim_integer()
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  %107 = call i64 (...) @check_fail_generalized_time()
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %6, align 4
  %112 = call i64 (...) @check_fail_oid()
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = call i64 (...) @check_fail_bitstring()
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %6, align 4
  %122 = call i64 (...) @test_heim_int_format()
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  %127 = call i64 (...) @test_heim_oid_format()
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %6, align 4
  %132 = call i64 (...) @check_trailing_nul()
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %6, align 4
  %137 = call i64 (...) @test_misc_cmp()
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  %142 = call i64 (...) @corner_generalized_time()
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %6, align 4
  %147 = call i64 (...) @corner_tag()
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @test_integer(...) #1

declare dso_local i64 @test_integer_more(...) #1

declare dso_local i64 @test_unsigned(...) #1

declare dso_local i64 @test_octet_string(...) #1

declare dso_local i64 @test_bmp_string(...) #1

declare dso_local i64 @test_universal_string(...) #1

declare dso_local i64 @test_general_string(...) #1

declare dso_local i64 @test_generalized_time(...) #1

declare dso_local i64 @test_oid(...) #1

declare dso_local i64 @test_bit_string(...) #1

declare dso_local i64 @test_heim_integer(...) #1

declare dso_local i64 @test_boolean(...) #1

declare dso_local i64 @check_fail_unsigned(...) #1

declare dso_local i64 @check_fail_integer(...) #1

declare dso_local i64 @check_fail_length(...) #1

declare dso_local i64 @check_fail_boolean(...) #1

declare dso_local i64 @check_fail_general_string(...) #1

declare dso_local i64 @check_fail_bmp_string(...) #1

declare dso_local i64 @check_fail_universal_string(...) #1

declare dso_local i64 @check_fail_heim_integer(...) #1

declare dso_local i64 @check_fail_generalized_time(...) #1

declare dso_local i64 @check_fail_oid(...) #1

declare dso_local i64 @check_fail_bitstring(...) #1

declare dso_local i64 @test_heim_int_format(...) #1

declare dso_local i64 @test_heim_oid_format(...) #1

declare dso_local i64 @check_trailing_nul(...) #1

declare dso_local i64 @test_misc_cmp(...) #1

declare dso_local i64 @corner_generalized_time(...) #1

declare dso_local i64 @corner_tag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
