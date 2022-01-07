; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_misc_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_misc_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__const.test_misc_cmp.os1 = private unnamed_addr constant %struct.TYPE_14__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, align 8
@__const.test_misc_cmp.os1.1 = private unnamed_addr constant %struct.TYPE_14__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__const.test_misc_cmp.os2 = private unnamed_addr constant %struct.TYPE_14__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, align 8
@__const.test_misc_cmp.bs1 = private unnamed_addr constant %struct.TYPE_16__ { i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, align 8
@__const.test_misc_cmp.bs2 = private unnamed_addr constant %struct.TYPE_16__ { i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0F\00", align 1
@__const.test_misc_cmp.bs1.4 = private unnamed_addr constant %struct.TYPE_16__ { i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@__const.test_misc_cmp.bs2.6 = private unnamed_addr constant %struct.TYPE_16__ { i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, align 8
@__const.test_misc_cmp.bs1.7 = private unnamed_addr constant %struct.TYPE_15__ { i32 1, i32* null, i32* null }, align 8
@__const.test_misc_cmp.us1 = private unnamed_addr constant %struct.TYPE_13__ { i32 1, i32* null, i32* null }, align 8
@__const.test_misc_cmp.us1.8 = private unnamed_addr constant %struct.TYPE_13__ { i32 1, i32* null, i32* null }, align 8
@__const.test_misc_cmp.us2 = private unnamed_addr constant %struct.TYPE_13__ { i32 1, i32* null, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_misc_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_misc_cmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_14__* @__const.test_misc_cmp.os1 to i8*), i64 16, i1 false)
  %21 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = call i32 @der_heim_octet_string_cmp(%struct.TYPE_14__* %3, %struct.TYPE_14__* %4)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %73

26:                                               ; preds = %0
  %27 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_14__* @__const.test_misc_cmp.os1.1 to i8*), i64 16, i1 false)
  %28 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_14__* @__const.test_misc_cmp.os2 to i8*), i64 16, i1 false)
  %29 = call i32 @der_heim_octet_string_cmp(%struct.TYPE_14__* %5, %struct.TYPE_14__* %6)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %1, align 4
  br label %73

33:                                               ; preds = %26
  %34 = bitcast %struct.TYPE_16__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_16__* @__const.test_misc_cmp.bs1 to i8*), i64 16, i1 false)
  %35 = bitcast %struct.TYPE_16__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.TYPE_16__* @__const.test_misc_cmp.bs2 to i8*), i64 16, i1 false)
  %36 = call i32 @der_heim_bit_string_cmp(%struct.TYPE_16__* %7, %struct.TYPE_16__* %8)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %1, align 4
  br label %73

40:                                               ; preds = %33
  %41 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.TYPE_16__* @__const.test_misc_cmp.bs1.4 to i8*), i64 16, i1 false)
  %42 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_16__* @__const.test_misc_cmp.bs2.6 to i8*), i64 16, i1 false)
  %43 = call i32 @der_heim_bit_string_cmp(%struct.TYPE_16__* %9, %struct.TYPE_16__* %10)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %1, align 4
  br label %73

47:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  %48 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.TYPE_15__* @__const.test_misc_cmp.bs1.7 to i8*), i64 24, i1 false)
  %49 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 24, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32* %11, i32** %50, align 8
  %51 = call i32 @der_heim_bmp_string_cmp(%struct.TYPE_15__* %12, %struct.TYPE_15__* %13)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %1, align 4
  br label %73

55:                                               ; preds = %47
  %56 = bitcast %struct.TYPE_13__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 bitcast (%struct.TYPE_13__* @__const.test_misc_cmp.us1 to i8*), i64 24, i1 false)
  %57 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 24, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32* %14, i32** %58, align 8
  %59 = call i32 @der_heim_universal_string_cmp(%struct.TYPE_13__* %15, %struct.TYPE_13__* %16)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %1, align 4
  br label %73

63:                                               ; preds = %55
  store i32 97, i32* %17, align 4
  %64 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.TYPE_13__* @__const.test_misc_cmp.us1.8 to i8*), i64 24, i1 false)
  %65 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 bitcast (%struct.TYPE_13__* @__const.test_misc_cmp.us2 to i8*), i64 24, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32* %17, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32* %17, i32** %67, align 8
  %68 = call i32 @der_heim_universal_string_cmp(%struct.TYPE_13__* %18, %struct.TYPE_13__* %19)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %1, align 4
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %72, %71, %62, %54, %46, %39, %32, %25
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @der_heim_octet_string_cmp(%struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @der_heim_bit_string_cmp(%struct.TYPE_16__*, %struct.TYPE_16__*) #2

declare dso_local i32 @der_heim_bmp_string_cmp(%struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i32 @der_heim_universal_string_cmp(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
