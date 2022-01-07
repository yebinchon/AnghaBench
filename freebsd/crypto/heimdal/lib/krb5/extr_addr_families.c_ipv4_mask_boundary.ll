; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_ipv4_mask_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_ipv4_mask_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32 }

@KRB5_PROG_ATYPE_NOSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"IPv4 prefix too large (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@KRB5_ADDRESS_INET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, %struct.TYPE_7__*)* @ipv4_mask_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_mask_boundary(i32 %0, %struct.TYPE_7__* %1, i64 %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ugt i64 %16, 32
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @KRB5_PROG_ATYPE_NOSUPP, align 4
  %21 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @krb5_set_error_message(i32 %19, i32 %20, i32 %21, i64 %22)
  %24 = load i32, i32* @KRB5_PROG_ATYPE_NOSUPP, align 4
  store i32 %24, i32* %6, align 4
  br label %90

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 32, %27
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %26, %29
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @_krb5_get_int(i32 %34, i64* %12, i32 %38)
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = xor i32 %46, -1
  %48 = or i32 %45, %47
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** @KRB5_ADDRESS_INET, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i64 @krb5_data_alloc(%struct.TYPE_8__* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %90

57:                                               ; preds = %25
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @_krb5_put_int(i32 %61, i32 %62, i32 %66)
  %68 = load i8*, i8** @KRB5_ADDRESS_INET, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i64 @krb5_data_alloc(%struct.TYPE_8__* %72, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %57
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = call i32 @krb5_free_address(i32 %76, %struct.TYPE_7__* %77)
  store i32 -1, i32* %6, align 4
  br label %90

79:                                               ; preds = %57
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @_krb5_put_int(i32 %83, i32 %84, i32 %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %79, %75, %56, %18
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, i64) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @_krb5_get_int(i32, i64*, i32) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_krb5_put_int(i32, i32, i32) #1

declare dso_local i32 @krb5_free_address(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
