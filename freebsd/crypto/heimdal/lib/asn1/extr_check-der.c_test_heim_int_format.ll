; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_heim_int_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_heim_int_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\10\00", align 1
@__const.test_heim_int_format.i = private unnamed_addr constant %struct.TYPE_5__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@__const.test_heim_int_format.i2 = private unnamed_addr constant %struct.TYPE_5__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 1 }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.test_heim_int_format.i3 = private unnamed_addr constant %struct.TYPE_5__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 0 }, align 8
@.str.2 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E6S\81\FF\FF\FF\FF\FF\FF\FF\FF\00", align 1
@__const.test_heim_int_format.bni = private unnamed_addr constant %struct.TYPE_5__ { i32 128, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i32 0, i32 0), i32 0 }, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"00000010\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-10\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-00000010\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_heim_int_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_heim_int_format() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_heim_int_format.i to i8*), i64 24, i1 false)
  %10 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_heim_int_format.i2 to i8*), i64 24, i1 false)
  %11 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_heim_int_format.i3 to i8*), i64 24, i1 false)
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %12 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_heim_int_format.bni to i8*), i64 24, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @check_heim_integer_same(i8* %13, i8* %14, %struct.TYPE_5__* %5)
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %1)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %1)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %2)
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %2)
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_5__* %3)
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = call i64 @check_heim_integer_same(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_5__* %3)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = call i32 @der_parse_hex_heim_integer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_5__* %6)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %0
  %54 = call i32 @der_free_heim_integer(%struct.TYPE_5__* %6)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %0
  %58 = call i32 @der_parse_hex_heim_integer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_5__* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @der_free_heim_integer(%struct.TYPE_5__* %6)
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @check_heim_integer_same(i8*, i8*, %struct.TYPE_5__*) #2

declare dso_local i32 @der_parse_hex_heim_integer(i8*, %struct.TYPE_5__*) #2

declare dso_local i32 @der_free_heim_integer(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
