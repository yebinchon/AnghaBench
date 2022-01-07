; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_Name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_Name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"0!1\1F0\0B\06\03U\04\03\13\04Love0\10\06\03U\04\07\13\09STOCKHOLM\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Name CN=Love+L=STOCKHOLM\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Name L=STOCKHOLM+CN=Love\00", align 1
@__const.test_Name.cmp_CN = private unnamed_addr constant [4 x i32] [i32 2, i32 5, i32 4, i32 3], align 16
@__const.test_Name.cmp_L = private unnamed_addr constant [4 x i32] [i32 2, i32 5, i32 4, i32 7], align 16
@choice_Name_rdnSequence = common dso_local global i8* null, align 8
@choice_DirectoryString_printableString = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Love\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"STOCKHOLM\00", align 1
@encode_Name = common dso_local global i64 0, align 8
@length_Name = common dso_local global i64 0, align 8
@decode_Name = common dso_local global i64 0, align 8
@free_Name = common dso_local global i64 0, align 8
@cmp_Name = common dso_local global i32 0, align 4
@copy_Name = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_Name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_Name() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca [1 x %struct.TYPE_16__], align 16
  %6 = alloca [1 x %struct.TYPE_16__], align 16
  %7 = alloca [2 x %struct.TYPE_18__], align 16
  %8 = alloca [2 x %struct.TYPE_18__], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 80, i1 false)
  %12 = bitcast i8* %11 to [2 x %struct.test_case]*
  %13 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 1
  store i8* inttoptr (i64 35 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 3
  store %struct.TYPE_17__* bitcast ([25 x i8]* @.str.1 to %struct.TYPE_17__*), %struct.TYPE_17__** %16, align 8
  %17 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 1
  store i8* inttoptr (i64 35 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 3
  store %struct.TYPE_17__* bitcast ([25 x i8]* @.str.2 to %struct.TYPE_17__*), %struct.TYPE_17__** %20, align 8
  store i32 2, i32* %2, align 4
  %21 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.test_Name.cmp_CN to i8*), i64 16, i1 false)
  %22 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x i32]* @__const.test_Name.cmp_L to i8*), i64 16, i1 false)
  %23 = load i8*, i8** @choice_Name_rdnSequence, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %5, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %5, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %34, align 8
  %35 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %5, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i32 2, i32* %36, align 16
  %37 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %41 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load i8*, i8** @choice_DirectoryString_printableString, align 8
  %45 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 16
  %48 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 16
  %53 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32 4, i32* %57, align 8
  %58 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %62 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 1
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32* %61, i32** %64, align 8
  %65 = load i8*, i8** @choice_DirectoryString_printableString, align 8
  %66 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %7, i64 0, i64 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 9, i32* %78, align 8
  %79 = load i8*, i8** @choice_Name_rdnSequence, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %89 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %90, align 8
  %91 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i32 2, i32* %92, align 16
  %93 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 4, i32* %95, align 8
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %97 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32* %96, i32** %99, align 8
  %100 = load i8*, i8** @choice_DirectoryString_printableString, align 8
  %101 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 16
  %104 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %108, align 16
  %109 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 9, i32* %113, align 8
  %114 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 1
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 4, i32* %116, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %118 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i32* %117, i32** %120, align 8
  %121 = load i8*, i8** @choice_DirectoryString_printableString, align 8
  %122 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 1
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %129, align 8
  %130 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %8, i64 0, i64 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i32 4, i32* %134, align 8
  %135 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %136 = getelementptr inbounds %struct.test_case, %struct.test_case* %135, i32 0, i32 3
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %136, align 8
  %137 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 1
  %138 = getelementptr inbounds %struct.test_case, %struct.test_case* %137, i32 0, i32 3
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %138, align 8
  %139 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %140 = load i32, i32* %2, align 4
  %141 = load i64, i64* @encode_Name, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* @length_Name, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* @decode_Name, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* @free_Name, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @cmp_Name, align 4
  %150 = load i64, i64* @copy_Name, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @generic_test(%struct.test_case* %139, i32 %140, i32 24, i32 %142, i32 %144, i32 %146, i32 %148, i32 %149, i32 %151)
  ret i32 %152
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
