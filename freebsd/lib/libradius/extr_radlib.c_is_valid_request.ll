; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_is_valid_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_is_valid_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i32*, %struct.rad_server* }
%struct.rad_server = type { i32* }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@POS_ATTRS = common dso_local global i64 0, align 8
@POS_LENGTH = common dso_local global i64 0, align 8
@POS_CODE = common dso_local global i64 0, align 8
@RAD_ACCESS_REQUEST = common dso_local global i32 0, align 4
@POS_AUTH = common dso_local global i64 0, align 8
@LEN_AUTH = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@MSGSIZE = common dso_local global i32 0, align 4
@RAD_MESSAGE_AUTHENTIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_handle*)* @is_valid_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_request(%struct.rad_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rad_server*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  %11 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %16 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %15, i32 0, i32 3
  %17 = load %struct.rad_server*, %struct.rad_server** %16, align 8
  %18 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %17, i64 %20
  store %struct.rad_server* %21, %struct.rad_server** %7, align 8
  %22 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %23 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @POS_ATTRS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %107

28:                                               ; preds = %1
  %29 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %30 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @POS_LENGTH, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %37 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @POS_LENGTH, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %35, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %47 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %107

51:                                               ; preds = %28
  %52 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %53 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @POS_CODE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RAD_ACCESS_REQUEST, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %51
  %61 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 16, i1 false)
  %62 = call i32 @MD5Init(i32* %4)
  %63 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %64 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @POS_CODE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i64, i64* @POS_AUTH, align 8
  %69 = load i64, i64* @POS_CODE, align 8
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @MD5Update(i32* %4, i32* %67, i32 %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %74 = load i32, i32* @LEN_AUTH, align 4
  %75 = call i32 @MD5Update(i32* %4, i32* %73, i32 %74)
  %76 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %77 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @POS_ATTRS, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @POS_ATTRS, align 8
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @MD5Update(i32* %4, i32* %80, i32 %85)
  %87 = load %struct.rad_server*, %struct.rad_server** %7, align 8
  %88 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.rad_server*, %struct.rad_server** %7, align 8
  %91 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @strlen(i32* %92)
  %94 = call i32 @MD5Update(i32* %4, i32* %89, i32 %93)
  %95 = call i32 @MD5Final(i8* %14, i32* %4)
  %96 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %97 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @POS_AUTH, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = trunc i64 %12 to i32
  %102 = call i64 @memcmp(i32* %100, i8* %14, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %107

105:                                              ; preds = %60
  br label %106

106:                                              ; preds = %105, %51
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %104, %50, %27
  %108 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MD5Init(i32*) #3

declare dso_local i32 @MD5Update(i32*, i32*, i32) #3

declare dso_local i32 @strlen(i32*) #3

declare dso_local i32 @MD5Final(i8*, i32*) #3

declare dso_local i64 @memcmp(i32*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
