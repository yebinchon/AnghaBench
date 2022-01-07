; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_krb_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_krb_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8**, i8*, i32*, i32*, %struct.TYPE_5__, %struct.TYPE_5__*, i32*, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [128 x i8] c"~}0{\A0\03\02\01\05\A1\03\02\01\1E\A4\11\18\0F20031124001119Z\A5\05\02\03\04\ED\A5\A6\03\02\01\1F\A7\0D\1B\0BNADA.KTH.SE\A8\100\0E\A0\03\02\01\01\A1\070\05\1B\03lha\A9\0D\1B\0BNADA.KTH.SE\AA 0\1E\A0\03\02\01\01\A1\170\15\1B\06krbtgt\1B\0BNADA.KTH.SE\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"KRB-ERROR Test 1\00", align 1
@lha_principal = common dso_local global i32 0, align 4
@nada_tgt_principal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"NADA.KTH.SE\00", align 1
@encode_KRB_ERROR = common dso_local global i64 0, align 8
@length_KRB_ERROR = common dso_local global i64 0, align 8
@decode_KRB_ERROR = common dso_local global i64 0, align 8
@free_KRB_ERROR = common dso_local global i64 0, align 8
@cmp_KRB_ERROR = common dso_local global i32 0, align 4
@copy_KRB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_krb_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_krb_error() #0 {
  %1 = alloca [1 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i8*, align 8
  %7 = bitcast [1 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false)
  %8 = bitcast i8* %7 to [1 x %struct.test_case]*
  %9 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 1
  store i8* inttoptr (i64 127 to i8*), i8** %10, align 8
  %11 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 3
  store %struct.TYPE_6__* bitcast ([17 x i8]* @.str.1 to %struct.TYPE_6__*), %struct.TYPE_6__** %12, align 8
  store i32 1, i32* %2, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %17 = load i32, i32* @lha_principal, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %22 = load i32, i32* @nada_tgt_principal, align 4
  store i32 %22, i32* %21, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 30, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 12
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 11
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 1069632679, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 322981, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 31, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i8** %6, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 10
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 9
  %34 = bitcast %struct.TYPE_5__* %33 to i8*
  %35 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 12, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 8
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %39 = getelementptr inbounds %struct.test_case, %struct.test_case* %38, i32 0, i32 3
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %39, align 8
  %40 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %41 = load i32, i32* %2, align 4
  %42 = load i64, i64* @encode_KRB_ERROR, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* @length_KRB_ERROR, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* @decode_KRB_ERROR, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* @free_KRB_ERROR, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @cmp_KRB_ERROR, align 4
  %51 = load i64, i64* @copy_KRB_ERROR, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @generic_test(%struct.test_case* %40, i32 %41, i32 96, i32 %43, i32 %45, i32 %47, i32 %49, i32 %50, i32 %52)
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
