; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_ntlm_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_ntlm_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_server_init_options = type { i32 }
%struct.ntlm_type2 = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.ntlm_buf = type { i8*, i32 }

@ntlm_server_init.zero2 = internal global [3 x i8] zeroinitializer, align 1
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"krb5_ntlm_alloc\00", align 1
@id = common dso_local global i32 0, align 4
@NTLM_NEG_UNICODE = common dso_local global i32 0, align 4
@NTLM_NEG_NTLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"NUTCRACKER\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"krb5_ntlm_init_request\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"krb5_ntlm_init_get_challange\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ntlm challenge have wrong length\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"krb5_ntlm_init_get_flags\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"heim_ntlm_encode_type2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"type2=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"krb5_ntlm_init_get_opaque\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"opaque=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntlm_server_init(%struct.ntlm_server_init_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.ntlm_server_init_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ntlm_type2, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.ntlm_buf, align 8
  %13 = alloca i8*, align 8
  store %struct.ntlm_server_init_options* %0, %struct.ntlm_server_init_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %14 = call i32 @memset(%struct.ntlm_type2* %9, i32 0, i32 32)
  %15 = load i32, i32* @context, align 4
  %16 = call i64 @krb5_ntlm_alloc(i32 %15, i32* %8)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @context, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @krb5_err(i32 %20, i32 1, i64 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @context, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ntlm_server_init_options*, %struct.ntlm_server_init_options** %4, align 8
  %27 = getelementptr inbounds %struct.ntlm_server_init_options, %struct.ntlm_server_init_options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @id, align 4
  %30 = load i32, i32* @NTLM_NEG_UNICODE, align 4
  %31 = load i32, i32* @NTLM_NEG_NTLM, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @krb5_ntlm_init_request(i32 %24, i32 %25, i32 %28, i32 %29, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @context, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %23
  %41 = load i32, i32* @context, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @krb5_ntlm_init_get_challange(i32 %41, i32 %42, %struct.TYPE_7__* %10)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @context, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @krb5_err(i32 %47, i32 1, i64 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %40
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @context, align 4
  %57 = call i32 @krb5_errx(i32 %56, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @memcpy(i32 %60, i8* %62, i32 4)
  %64 = call i32 @krb5_data_free(%struct.TYPE_7__* %10)
  %65 = load i32, i32* @context, align 4
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 2
  %68 = call i64 @krb5_ntlm_init_get_flags(i32 %65, i32 %66, i32* %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i32, i32* @context, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @krb5_err(i32 %72, i32 1, i64 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %58
  %76 = load i32, i32* @context, align 4
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 0
  %79 = call i32 @krb5_ntlm_init_get_targetname(i32 %76, i32 %77, i8** %78)
  %80 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ntlm_server_init.zero2, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 2, i32* %83, align 8
  %84 = call i64 @heim_ntlm_encode_type2(%struct.ntlm_type2* %9, %struct.ntlm_buf* %12)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @context, align 4
  %89 = call i32 @krb5_errx(i32 %88, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %75
  %91 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %9, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @free(i8* %92)
  %94 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @base64_encode(i8* %95, i32 %97, i8** %13)
  %99 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* @context, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @krb5_ntlm_init_get_opaque(i32 %106, i32 %107, %struct.TYPE_7__* %11)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load i32, i32* @context, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @krb5_err(i32 %112, i32 1, i64 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %90
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @base64_encode(i8* %117, i32 %119, i8** %13)
  %121 = call i32 @krb5_data_free(%struct.TYPE_7__* %11)
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %122)
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* @context, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @krb5_ntlm_free(i32 %126, i32 %127)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ntlm_type2*, i32, i32) #1

declare dso_local i64 @krb5_ntlm_alloc(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_ntlm_init_request(i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i64 @krb5_ntlm_init_get_challange(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_7__*) #1

declare dso_local i64 @krb5_ntlm_init_get_flags(i32, i32, i32*) #1

declare dso_local i32 @krb5_ntlm_init_get_targetname(i32, i32, i8**) #1

declare dso_local i64 @heim_ntlm_encode_type2(%struct.ntlm_type2*, %struct.ntlm_buf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @base64_encode(i8*, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @krb5_ntlm_init_get_opaque(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_ntlm_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
