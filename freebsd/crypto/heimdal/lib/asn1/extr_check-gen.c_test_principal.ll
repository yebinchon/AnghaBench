; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"0\1B\A0\100\0E\A0\03\02\01\01\A1\070\05\1B\03lha\A1\07\1B\05SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"0!\A0\160\14\A0\03\02\01\01\A1\0D0\0B\1B\03lha\1B\04root\A1\07\1B\05SU.SE\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"04\A0&0$\A0\03\02\01\03\A1\1D0\1B\1B\04host\1B\13nutcracker.e.kth.se\A1\0A\1B\08E.KTH.SE\00", align 1
@KRB5_NT_PRINCIPAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SU.SE\00", align 1
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"E.KTH.SE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Principal %d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@encode_Principal = common dso_local global i64 0, align 8
@length_Principal = common dso_local global i64 0, align 8
@decode_Principal = common dso_local global i64 0, align 8
@free_Principal = common dso_local global i64 0, align 8
@cmp_principal = common dso_local global i32 0, align 4
@datan_princ = common dso_local global i32 0, align 4
@lha_principal = common dso_local global i32 0, align 4
@lharoot_princ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_principal() #0 {
  %1 = alloca [3 x %struct.test_case], align 16
  %2 = alloca [3 x %struct.TYPE_6__], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [3 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 120, i1 false)
  %7 = bitcast i8* %6 to [3 x %struct.test_case]*
  %8 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 1
  store i8* inttoptr (i64 29 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 2
  store i32* bitcast ([30 x i8]* @.str to i32*), i32** %10, align 16
  %11 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 1
  store i8* inttoptr (i64 35 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 2
  store i32* bitcast ([36 x i8]* @.str.1 to i32*), i32** %13, align 8
  %14 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.test_case, %struct.test_case* %14, i32 0, i32 1
  store i8* inttoptr (i64 54 to i8*), i8** %15, align 8
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %14, i32 0, i32 2
  store i32* bitcast ([55 x i8]* @.str.2 to i32*), i32** %16, align 16
  %17 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* @KRB5_NT_PRINCIPAL, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %18, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 ptrtoint ([6 x i8]* @.str.3 to i32), i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @KRB5_NT_PRINCIPAL, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %28, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 ptrtoint ([6 x i8]* @.str.3 to i32), i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %38, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 ptrtoint ([9 x i8]* @.str.4 to i32), i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 0, i32* %46, align 8
  store i32 3, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %78, %0
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %2, i64 0, i64 %53
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.test_case, %struct.test_case* %57, i32 0, i32 3
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.test_case, %struct.test_case* %61, i32 0, i32 2
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @asprintf(i32** %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.test_case, %struct.test_case* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %47

81:                                               ; preds = %47
  %82 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 0
  %83 = load i32, i32* %5, align 4
  %84 = load i64, i64* @encode_Principal, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* @length_Principal, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* @decode_Principal, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* @free_Principal, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @cmp_principal, align 4
  %93 = call i32 @generic_test(%struct.test_case* %82, i32 %83, i32 24, i32 %85, i32 %87, i32 %89, i32 %91, i32 %92, i32* null)
  store i32 %93, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %105, %81
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.test_case, %struct.test_case* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @free(i32* %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %94

108:                                              ; preds = %94
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i32**, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
