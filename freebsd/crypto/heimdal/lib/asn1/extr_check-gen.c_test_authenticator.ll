; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_authenticator.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"b=0;\A0\03\02\01\05\A1\0A\1B\08E.KTH.SE\A2\100\0E\A0\03\02\01\01\A1\070\05\1B\03lha\A4\03\02\01\0A\A5\11\18\0F19700101000139Z\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"bA0?\A0\03\02\01\05\A1\07\1B\05SU.SE\A2\160\14\A0\03\02\01\01\A1\0D0\0B\1B\03lha\1B\04root\A4\04\02\02\01$\A5\11\18\0F19700101001639Z\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"E.KTH.SE\00", align 1
@KRB5_NT_PRINCIPAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SU.SE\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Authenticator %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@encode_Authenticator = common dso_local global i64 0, align 8
@length_Authenticator = common dso_local global i64 0, align 8
@decode_Authenticator = common dso_local global i64 0, align 8
@free_Authenticator = common dso_local global i64 0, align 8
@cmp_authenticator = common dso_local global i32 0, align 4
@copy_Authenticator = common dso_local global i64 0, align 8
@lha_principal = common dso_local global i32 0, align 4
@lharoot_princ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_authenticator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_authenticator() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca [2 x %struct.TYPE_6__], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 80, i1 false)
  %7 = bitcast i8* %6 to [2 x %struct.test_case]*
  %8 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 1
  store i8* inttoptr (i64 63 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 2
  store i32* bitcast ([64 x i8]* @.str to i32*), i32** %10, align 16
  %11 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 1
  store i8* inttoptr (i64 67 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 2
  store i32* bitcast ([68 x i8]* @.str.1 to i32*), i32** %13, align 8
  %14 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 5, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %18 = load i32, i32* @KRB5_NT_PRINCIPAL, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32* inttoptr (i64 10 to i32*), i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  store i32* inttoptr (i64 99 to i32*), i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 5, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %33 = load i32, i32* @KRB5_NT_PRINCIPAL, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32* inttoptr (i64 292 to i32*), i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i32* inttoptr (i64 999 to i32*), i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 0, i32* %43, align 8
  store i32 2, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %75, %0
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %2, i64 0, i64 %50
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.test_case, %struct.test_case* %54, i32 0, i32 3
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.test_case, %struct.test_case* %58, i32 0, i32 2
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @asprintf(i32** %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %48
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.test_case, %struct.test_case* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %44

78:                                               ; preds = %44
  %79 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* @encode_Authenticator, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* @length_Authenticator, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* @decode_Authenticator, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* @free_Authenticator, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @cmp_authenticator, align 4
  %90 = load i64, i64* @copy_Authenticator, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @generic_test(%struct.test_case* %79, i32 %80, i32 72, i32 %82, i32 %84, i32 %86, i32 %88, i32 %89, i32 %91)
  store i32 %92, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %104, %78
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.test_case, %struct.test_case* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @free(i32* %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i32**, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
