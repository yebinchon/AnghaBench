; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i8*, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@HNTLM_ERR_RAND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_calculate_ntlm2(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, %struct.ntlm_buf* %5, i8* %6, %struct.ntlm_buf* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ntlm_buf*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ntlm_buf*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca [16 x i8], align 16
  %21 = alloca i32*, align 8
  %22 = alloca [8 x i8], align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.ntlm_buf* %5, %struct.ntlm_buf** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.ntlm_buf* %7, %struct.ntlm_buf** %17, align 8
  %25 = call i32 @time(i32* null)
  %26 = call i32 @unix2nttime(i32 %25)
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %28 = call i32 @RAND_bytes(i8* %27, i32 8)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @HNTLM_ERR_RAND, align 4
  store i32 %31, i32* %9, align 4
  br label %146

32:                                               ; preds = %8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 @heim_ntlm_ntlmv2_key(i8* %33, i64 %34, i8* %35, i8* %36, i8* %37)
  %39 = call i32* (...) @krb5_storage_emem()
  store i32* %39, i32** %21, align 8
  %40 = load i32*, i32** %21, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %9, align 4
  br label %146

44:                                               ; preds = %32
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %47 = call i32 @krb5_storage_set_flags(i32* %45, i32 %46)
  %48 = load i32*, i32** %21, align 8
  %49 = call i32 @krb5_store_uint32(i32* %48, i32 257)
  %50 = call i32 @CHECK(i32 %49, i32 0)
  %51 = load i32*, i32** %21, align 8
  %52 = call i32 @krb5_store_uint32(i32* %51, i32 0)
  %53 = call i32 @CHECK(i32 %52, i32 0)
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @krb5_store_uint32(i32* %54, i32 %55)
  %57 = call i32 @CHECK(i32 %56, i32 0)
  %58 = load i32*, i32** %21, align 8
  %59 = load i32, i32* %23, align 4
  %60 = ashr i32 %59, 32
  %61 = call i32 @krb5_store_uint32(i32* %58, i32 %60)
  %62 = call i32 @CHECK(i32 %61, i32 0)
  %63 = load i32*, i32** %21, align 8
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %65 = call i32 @krb5_storage_write(i32* %63, i8* %64, i32 8)
  %66 = call i32 @CHECK(i32 %65, i32 8)
  %67 = load i32*, i32** %21, align 8
  %68 = call i32 @krb5_store_uint32(i32* %67, i32 0)
  %69 = call i32 @CHECK(i32 %68, i32 0)
  %70 = load i32*, i32** %21, align 8
  %71 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %72 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %75 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @krb5_storage_write(i32* %70, i8* %73, i32 %76)
  %78 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %79 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @CHECK(i32 %77, i32 %80)
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @krb5_store_uint32(i32* %82, i32 0)
  %84 = call i32 @CHECK(i32 %83, i32 0)
  %85 = load i32*, i32** %21, align 8
  %86 = call i32 @krb5_storage_to_data(i32* %85, %struct.TYPE_4__* %19)
  %87 = call i32 @CHECK(i32 %86, i32 0)
  %88 = load i32*, i32** %21, align 8
  %89 = call i32 @krb5_storage_free(i32* %88)
  store i32* null, i32** %21, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %97 = call i32 @heim_ntlm_derive_ntlm2_sess(i8* %90, i8* %92, i32 %94, i8* %95, i8* %96)
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %44
  %101 = call i32 @krb5_data_free(%struct.TYPE_4__* %19)
  %102 = load i32, i32* %24, align 4
  store i32 %102, i32* %9, align 4
  br label %146

103:                                              ; preds = %44
  %104 = call i32* (...) @krb5_storage_emem()
  store i32* %104, i32** %21, align 8
  %105 = load i32*, i32** %21, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = call i32 @krb5_data_free(%struct.TYPE_4__* %19)
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* %9, align 4
  br label %146

110:                                              ; preds = %103
  %111 = load i32*, i32** %21, align 8
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %113 = call i32 @krb5_storage_write(i32* %111, i8* %112, i32 16)
  %114 = call i32 @CHECK(i32 %113, i32 16)
  %115 = load i32*, i32** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @krb5_storage_write(i32* %115, i8* %117, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CHECK(i32 %120, i32 %122)
  %124 = call i32 @krb5_data_free(%struct.TYPE_4__* %19)
  %125 = load i32*, i32** %21, align 8
  %126 = call i32 @krb5_storage_to_data(i32* %125, %struct.TYPE_4__* %19)
  %127 = call i32 @CHECK(i32 %126, i32 0)
  %128 = load i32*, i32** %21, align 8
  %129 = call i32 @krb5_storage_free(i32* %128)
  store i32* null, i32** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %133 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ntlm_buf*, %struct.ntlm_buf** %17, align 8
  %137 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  store i32 0, i32* %9, align 4
  br label %146

138:                                              ; No predecessors!
  %139 = load i32*, i32** %21, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %21, align 8
  %143 = call i32 @krb5_storage_free(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %144, %110, %107, %100, %42, %30
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32 @unix2nttime(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @heim_ntlm_ntlmv2_key(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @krb5_storage_set_flags(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_storage_write(i32*, i8*, i32) #1

declare dso_local i32 @krb5_storage_to_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @heim_ntlm_derive_ntlm2_sess(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
