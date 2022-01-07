; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_encode_targetinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_encode_targetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_targetinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ntlm_buf = type { i64, i32* }
%struct.TYPE_3__ = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_encode_targetinfo(%struct.ntlm_targetinfo* %0, i32 %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntlm_targetinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store %struct.ntlm_targetinfo* %0, %struct.ntlm_targetinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  %11 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %12 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %14 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i32* (...) @krb5_storage_emem()
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %127

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %23 = call i32 @krb5_storage_set_byteorder(i32* %21, i32 %22)
  %24 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %25 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %32 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @encode_ti_string(i32* %29, i32 1, i32 %30, i32 %33)
  %35 = call i32 @CHECK(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %38 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @encode_ti_string(i32* %42, i32 2, i32 %43, i32 %46)
  %48 = call i32 @CHECK(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %58 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @encode_ti_string(i32* %55, i32 3, i32 %56, i32 %59)
  %61 = call i32 @CHECK(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %64 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %71 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @encode_ti_string(i32* %68, i32 4, i32 %69, i32 %72)
  %74 = call i32 @CHECK(i32 %73, i32 0)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %77 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %84 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @encode_ti_string(i32* %81, i32 5, i32 %82, i32 %85)
  %87 = call i32 @CHECK(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %90 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @krb5_store_uint16(i32* %94, i32 6)
  %96 = call i32 @CHECK(i32 %95, i32 0)
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @krb5_store_uint16(i32* %97, i32 4)
  %99 = call i32 @CHECK(i32 %98, i32 0)
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %5, align 8
  %102 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @krb5_store_uint32(i32* %100, i32 %103)
  %105 = call i32 @CHECK(i32 %104, i32 0)
  br label %106

106:                                              ; preds = %93, %88
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @krb5_store_int16(i32* %107, i32 0)
  %109 = call i32 @CHECK(i32 %108, i32 0)
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @krb5_store_int16(i32* %110, i32 0)
  %112 = call i32 @CHECK(i32 %111, i32 0)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @krb5_storage_to_data(i32* %113, %struct.TYPE_3__* %10)
  store i32 %114, i32* %8, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %118 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %122 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %106
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @krb5_storage_free(i32* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %18
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @krb5_storage_set_byteorder(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @encode_ti_string(i32*, i32, i32, i32) #1

declare dso_local i32 @krb5_store_uint16(i32*, i32) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_store_int16(i32*, i32) #1

declare dso_local i32 @krb5_storage_to_data(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
