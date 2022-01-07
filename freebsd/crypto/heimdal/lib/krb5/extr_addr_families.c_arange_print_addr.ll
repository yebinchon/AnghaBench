; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_arange_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_arange_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.arange* }
%struct.arange = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"RANGE:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @arange_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arange_print_addr(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.arange*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.arange*, %struct.arange** %15, align 8
  store %struct.arange* %16, %struct.arange** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @strlcpy(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.arange*, %struct.arange** %8, align 8
  %29 = getelementptr inbounds %struct.arange, %struct.arange* %28, i32 0, i32 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %33, %34
  %36 = call i32 @krb5_print_address(i32* %29, i8* %32, i64 %35, i64* %10)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %98

41:                                               ; preds = %26
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %11, align 8
  br label %56

54:                                               ; preds = %41
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %60, %61
  %63 = call i64 @strlcat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  %70 = load i64, i64* %10, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %11, align 8
  br label %78

76:                                               ; preds = %56
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.arange*, %struct.arange** %8, align 8
  %80 = getelementptr inbounds %struct.arange, %struct.arange* %79, i32 0, i32 0
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = sub i64 %84, %85
  %87 = call i32 @krb5_print_address(i32* %80, i8* %83, i64 %86, i64* %10)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %78
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %90, %39
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i64, i64*) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
