; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_is_valid_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_is_valid_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i32*, i32*, %struct.rad_server* }
%struct.rad_server = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@POS_ATTRS = common dso_local global i64 0, align 8
@POS_LENGTH = common dso_local global i64 0, align 8
@POS_CODE = common dso_local global i64 0, align 8
@POS_AUTH = common dso_local global i64 0, align 8
@LEN_AUTH = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@MSGSIZE = common dso_local global i32 0, align 4
@RAD_ACCOUNTING_RESPONSE = common dso_local global i32 0, align 4
@RAD_MESSAGE_AUTHENTIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_handle*, i32, %struct.sockaddr_in*)* @is_valid_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_response(%struct.rad_handle* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rad_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rad_server*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %14 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 3
  %20 = load %struct.rad_server*, %struct.rad_server** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %20, i64 %22
  store %struct.rad_server* %23, %struct.rad_server** %11, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rad_server*, %struct.rad_server** %11, align 8
  %28 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %3
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rad_server*, %struct.rad_server** %11, align 8
  %38 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %32
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rad_server*, %struct.rad_server** %11, align 8
  %48 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %32, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %133

53:                                               ; preds = %43
  %54 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %55 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @POS_ATTRS, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %133

60:                                               ; preds = %53
  %61 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %62 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @POS_LENGTH, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %69 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @POS_LENGTH, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %67, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %79 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %133

83:                                               ; preds = %60
  %84 = call i32 @MD5Init(i32* %8)
  %85 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %86 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @POS_CODE, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i64, i64* @POS_AUTH, align 8
  %91 = load i64, i64* @POS_CODE, align 8
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @MD5Update(i32* %8, i32* %89, i32 %93)
  %95 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %96 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @POS_AUTH, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i64, i64* @LEN_AUTH, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @MD5Update(i32* %8, i32* %99, i32 %101)
  %103 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %104 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @POS_ATTRS, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @POS_ATTRS, align 8
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @MD5Update(i32* %8, i32* %107, i32 %112)
  %114 = load %struct.rad_server*, %struct.rad_server** %11, align 8
  %115 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.rad_server*, %struct.rad_server** %11, align 8
  %118 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @strlen(i32* %119)
  %121 = call i32 @MD5Update(i32* %8, i32* %116, i32 %120)
  %122 = call i32 @MD5Final(i8* %17, i32* %8)
  %123 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %124 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @POS_AUTH, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = trunc i64 %15 to i32
  %129 = call i64 @memcmp(i32* %127, i8* %17, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %133

132:                                              ; preds = %83
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %133

133:                                              ; preds = %132, %131, %82, %59, %52
  %134 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i32*, i32) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @MD5Final(i8*, i32*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
