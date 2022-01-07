; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_verify_ntlm2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_verify_ntlm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i8* }

@HNTLM_ERR_INVALID_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@authtimediff = common dso_local global i64 0, align 8
@HNTLM_ERR_TIME_SKEW = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@HNTLM_ERR_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_verify_ntlm2(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, %struct.ntlm_buf* %6, %struct.ntlm_buf* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ntlm_buf*, align 8
  %18 = alloca %struct.ntlm_buf*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [16 x i8], align 16
  %22 = alloca [8 x i8], align 1
  %23 = alloca [16 x i8], align 16
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store %struct.ntlm_buf* %6, %struct.ntlm_buf** %17, align 8
  store %struct.ntlm_buf* %7, %struct.ntlm_buf** %18, align 8
  store i8* %8, i8** %19, align 8
  %29 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %30 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %32 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %31, i32 0, i32 1
  store i8* null, i8** %32, align 8
  %33 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %9
  %38 = load i32, i32* @HNTLM_ERR_INVALID_LENGTH, align 4
  store i32 %38, i32* %10, align 4
  br label %188

39:                                               ; preds = %9
  %40 = load i64, i64* %15, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i64 @time(i32* null)
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = call i32 @heim_ntlm_ntlmv2_key(i8* %45, i64 %46, i8* %47, i8* %48, i8* %49)
  %51 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %52 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %55 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32* @krb5_storage_from_readonly_mem(i8* %53, i32 %56)
  store i32* %57, i32** %24, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %10, align 4
  br label %188

62:                                               ; preds = %44
  %63 = load i32*, i32** %24, align 8
  %64 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %65 = call i32 @krb5_storage_set_flags(i32* %63, i32 %64)
  %66 = load i32*, i32** %24, align 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %68 = call i32 @krb5_storage_read(i32* %66, i8* %67, i32 16)
  %69 = call i32 @CHECK(i32 %68, i32 16)
  %70 = load i32*, i32** %24, align 8
  %71 = call i32 @krb5_ret_uint32(i32* %70, i32* %26)
  %72 = call i32 @CHECK(i32 %71, i32 0)
  %73 = load i32, i32* %26, align 4
  %74 = call i32 @CHECK(i32 %73, i32 257)
  %75 = load i32*, i32** %24, align 8
  %76 = call i32 @krb5_ret_uint32(i32* %75, i32* %26)
  %77 = call i32 @CHECK(i32 %76, i32 0)
  %78 = load i32, i32* %26, align 4
  %79 = call i32 @CHECK(i32 %78, i32 0)
  %80 = load i32*, i32** %24, align 8
  %81 = call i32 @krb5_ret_uint32(i32* %80, i32* %26)
  %82 = call i32 @CHECK(i32 %81, i32 0)
  %83 = load i32, i32* %26, align 4
  store i32 %83, i32* %27, align 4
  %84 = load i32*, i32** %24, align 8
  %85 = call i32 @krb5_ret_uint32(i32* %84, i32* %26)
  %86 = call i32 @CHECK(i32 %85, i32 0)
  %87 = load i32, i32* %26, align 4
  %88 = shl i32 %87, 32
  %89 = load i32, i32* %27, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %27, align 4
  %91 = load i32, i32* %27, align 4
  %92 = call i64 @nt2unixtime(i32 %91)
  store i64 %92, i64* %25, align 8
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub nsw i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i64 @abs(i32 %96)
  %98 = load i64, i64* @authtimediff, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %62
  %101 = load i32, i32* @HNTLM_ERR_TIME_SKEW, align 4
  store i32 %101, i32* %20, align 4
  br label %178

102:                                              ; preds = %62
  %103 = load i32*, i32** %24, align 8
  %104 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %105 = call i32 @krb5_storage_read(i32* %103, i8* %104, i32 8)
  %106 = call i32 @CHECK(i32 %105, i32 8)
  %107 = load i32*, i32** %24, align 8
  %108 = call i32 @krb5_ret_uint32(i32* %107, i32* %26)
  %109 = call i32 @CHECK(i32 %108, i32 0)
  %110 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %111 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %24, align 8
  %114 = load i32, i32* @SEEK_CUR, align 4
  %115 = call i32 @krb5_storage_seek(i32* %113, i32 0, i32 %114)
  %116 = sub nsw i32 %112, %115
  %117 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %118 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %120 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @malloc(i32 %121)
  %123 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %124 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %126 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %102
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %20, align 4
  br label %178

131:                                              ; preds = %102
  %132 = load i32*, i32** %24, align 8
  %133 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %134 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %137 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @krb5_storage_read(i32* %132, i8* %135, i32 %138)
  %140 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %141 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @CHECK(i32 %139, i32 %142)
  %144 = load i32*, i32** %24, align 8
  %145 = call i32 @krb5_storage_free(i32* %144)
  store i32* null, i32** %24, align 8
  %146 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %147 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 16
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i32, i32* @HNTLM_ERR_INVALID_LENGTH, align 4
  store i32 %151, i32* %20, align 4
  br label %178

152:                                              ; preds = %131
  %153 = load i8*, i8** %19, align 8
  %154 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %155 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 16
  %158 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %159 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 16
  %162 = load i8*, i8** %16, align 8
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %164 = call i32 @heim_ntlm_derive_ntlm2_sess(i8* %153, i8* %157, i32 %161, i8* %162, i8* %163)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %152
  br label %178

168:                                              ; preds = %152
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %170 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %171 = call i64 @memcmp(i8* %169, i8* %170, i32 16)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %175 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %174)
  %176 = load i32, i32* @HNTLM_ERR_AUTH, align 4
  store i32 %176, i32* %10, align 4
  br label %188

177:                                              ; preds = %168
  store i32 0, i32* %10, align 4
  br label %188

178:                                              ; preds = %167, %150, %129, %100
  %179 = load %struct.ntlm_buf*, %struct.ntlm_buf** %18, align 8
  %180 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %179)
  %181 = load i32*, i32** %24, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32*, i32** %24, align 8
  %185 = call i32 @krb5_storage_free(i32* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %20, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %186, %177, %173, %60, %37
  %189 = load i32, i32* %10, align 4
  ret i32 %189
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @heim_ntlm_ntlmv2_key(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32* @krb5_storage_from_readonly_mem(i8*, i32) #1

declare dso_local i32 @krb5_storage_set_flags(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i8*, i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i64 @nt2unixtime(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @heim_ntlm_derive_ntlm2_sess(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
