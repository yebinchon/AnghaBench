; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_tag_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_tag_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, i32, i8*, i64, i64, i32, i32 }
%struct.map_page = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"\02\01\00\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\02\01\7F\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\02\02\00\80\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\02\02\01\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\02\02\02\00\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\02\02\00\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\02\7F\7F\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\02\03\00\80\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\02\7F\01\00\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\02\FF\7F\02\00\00", align 1
@__const.check_tag_length.td = private unnamed_addr constant [10 x %struct.test_data] [%struct.test_data { i32 1, i32 3, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 1, i32 3, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 1, i32 4, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 1, i32 4, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 1, i32 4, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 0, i32 3, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 0, i32 3, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 0, i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 0, i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }, %struct.test_data { i32 0, i32 5, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i64 0, i64 0, i32 0, i32 0 }], align 16
@__const.check_tag_length.values = private unnamed_addr constant [10 x i32] [i32 0, i32 127, i32 128, i32 256, i32 512, i32 0, i32 127, i32 128, i32 256, i32 512], align 16
@OVERRUN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"failed with tag len test %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"failed with success for tag len test %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"wrong expected size for tag test %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"wrong value for tag test %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_tag_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tag_length() #0 {
  %1 = alloca [10 x %struct.test_data], align 16
  %2 = alloca i64, align 8
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.map_page*, align 8
  %10 = bitcast [10 x %struct.test_data]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x %struct.test_data]* @__const.check_tag_length.td to i8*), i64 480, i1 false)
  %11 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([10 x i32]* @__const.check_tag_length.values to i8*), i64 40, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %84, %0
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 10
  br i1 %15, label %16, label %87

16:                                               ; preds = %12
  %17 = load i32, i32* @OVERRUN, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.test_data, %struct.test_data* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.test_data, %struct.test_data* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @map_alloc(i32 %17, i32 %22, i32 %27, %struct.map_page** %9)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.test_data, %struct.test_data* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @decode_TESTuint32(i8* %29, i32 %34, i32* %4, i64* %2)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.test_data, %struct.test_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %46)
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %81

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.test_data, %struct.test_data* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %57)
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x %struct.test_data], [10 x %struct.test_data]* %1, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.test_data, %struct.test_data* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 16
  %65 = load i64, i64* %2, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %68)
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %78)
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.map_page*, %struct.map_page** %9, align 8
  %83 = call i32 @map_free(%struct.map_page* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %12

87:                                               ; preds = %12
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @map_alloc(i32, i32, i32, %struct.map_page**) #2

declare dso_local i32 @decode_TESTuint32(i8*, i32, i32*, i64*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @map_free(%struct.map_page*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
