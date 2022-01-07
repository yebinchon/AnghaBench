; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_ntlm.c_test_libntlm_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_ntlm.c_test_libntlm_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.ntlm_type1 = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i64*, i32*, i32 }
%struct.ntlm_type2 = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i64*, i32*, i32 }
%struct.ntlm_type3 = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i64*, i32*, i32 }
%struct.ntlm_buf = type { i64, i32* }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mydomain\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"digestpassword\00", align 1
@GSS_C_NO_CONTEXT = common dso_local global i32 0, align 4
@NTLM_NEG_UNICODE = common dso_local global i32 0, align 4
@NTLM_NEG_NTLM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"heim_ntlm_encode_type1\00", align 1
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"accept_sec_context v2 %s\00", align 1
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"output.length == 0\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"heim_ntlm_decode_type2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"workstation\00", align 1
@NTLM_NEG_KEYEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"heim_ntlm_encode_type3\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"accept_sec_context v2 2 %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_libntlm_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_libntlm_v2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.ntlm_type1, align 8
  %12 = alloca %struct.ntlm_type2, align 8
  %13 = alloca %struct.ntlm_type3, align 8
  %14 = alloca %struct.ntlm_buf, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ntlm_buf, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca %struct.ntlm_buf, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %19 = load i32, i32* @GSS_C_NO_CONTEXT, align 4
  store i32 %19, i32* %8, align 4
  %20 = bitcast %struct.ntlm_type1* %11 to %struct.ntlm_type3*
  %21 = call i32 @memset(%struct.ntlm_type3* %20, i32 0, i32 64)
  %22 = bitcast %struct.ntlm_type2* %12 to %struct.ntlm_type3*
  %23 = call i32 @memset(%struct.ntlm_type3* %22, i32 0, i32 64)
  %24 = call i32 @memset(%struct.ntlm_type3* %13, i32 0, i32 64)
  %25 = load i32, i32* @NTLM_NEG_UNICODE, align 4
  %26 = load i32, i32* @NTLM_NEG_NTLM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %2, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.ntlm_type1, %struct.ntlm_type1* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strdup(i8* %31)
  %33 = getelementptr inbounds %struct.ntlm_type1, %struct.ntlm_type1* %11, i32 0, i32 10
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ntlm_type1, %struct.ntlm_type1* %11, i32 0, i32 9
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.ntlm_type1, %struct.ntlm_type1* %11, i32 0, i32 8
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.ntlm_type1, %struct.ntlm_type1* %11, i32 0, i32 8
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 0, i64* %40, align 8
  %41 = bitcast %struct.ntlm_type1* %11 to %struct.ntlm_type3*
  %42 = call i64 @heim_ntlm_encode_type1(%struct.ntlm_type3* %41, %struct.ntlm_buf* %14)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %1
  %48 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* %49, i32** %50, align 8
  %51 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %57 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %58 = call i64 @gss_accept_sec_context(i64* %7, i32* %8, i32 %56, %struct.TYPE_4__* %9, i32 %57, i32* null, i32* null, %struct.TYPE_4__* %10, i32* null, i32* null, i32* null)
  store i64 %58, i64* %6, align 8
  %59 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @GSS_ERROR(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %47
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @GSS_C_NO_OID, align 4
  %69 = call i32 @gssapi_err(i64 %66, i64 %67, i32 %68)
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %47
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 1
  store i32* %79, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = bitcast %struct.ntlm_type2* %12 to %struct.ntlm_type3*
  %85 = call i64 @heim_ntlm_decode_type2(%struct.ntlm_buf* %14, %struct.ntlm_type3* %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %77
  %91 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %12, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call i8* @rk_UNCONST(i8* %94)
  %96 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 7
  store i8* %95, i8** %96, align 8
  %97 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %12, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 5
  store i32 %98, i32* %99, align 4
  %100 = call i8* @rk_UNCONST(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 6
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @heim_ntlm_nt_key(i8* %102, %struct.ntlm_buf* %16)
  %104 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %16, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %16, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %12, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %12, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.ntlm_type2, %struct.ntlm_type2* %12, i32 0, i32 3
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %115 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 2
  %116 = call i32 @heim_ntlm_calculate_ntlm2(i32* %105, i64 %107, i8* %108, i32 %110, i32 %112, i32* %113, i8* %114, i32* %115)
  %117 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %16, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @NTLM_NEG_KEYEX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %90
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %126 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %13, i32 0, i32 1
  %127 = call i32 @heim_ntlm_build_ntlm1_master(i8* %125, i32 16, %struct.ntlm_buf* %18, i32* %126)
  %128 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %18, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @free(i32* %129)
  br label %131

131:                                              ; preds = %124, %90
  %132 = call i64 @heim_ntlm_encode_type3(%struct.ntlm_type3* %13, %struct.ntlm_buf* %14)
  store i64 %132, i64* %15, align 8
  %133 = load i64, i64* %15, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %131
  %138 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %139, i64* %140, align 8
  %141 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %14, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* %142, i32** %143, align 8
  %144 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %145 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %146 = call i64 @gss_accept_sec_context(i64* %7, i32* %8, i32 %144, %struct.TYPE_4__* %9, i32 %145, i32* null, i32* null, %struct.TYPE_4__* %10, i32* null, i32* null, i32* null)
  store i64 %146, i64* %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @free(i32* %148)
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @GSS_S_COMPLETE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %137
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* @GSS_C_NO_OID, align 4
  %157 = call i32 @gssapi_err(i64 %154, i64 %155, i32 %156)
  %158 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153, %137
  %160 = call i32 @gss_delete_sec_context(i64* %7, i32* %8, i32* null)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ntlm_type3*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @heim_ntlm_encode_type1(%struct.ntlm_type3*, %struct.ntlm_buf*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @gss_accept_sec_context(i64*, i32*, i32, %struct.TYPE_4__*, i32, i32*, i32*, %struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i32 @gssapi_err(i64, i64, i32) #1

declare dso_local i64 @heim_ntlm_decode_type2(%struct.ntlm_buf*, %struct.ntlm_type3*) #1

declare dso_local i8* @rk_UNCONST(i8*) #1

declare dso_local i32 @heim_ntlm_nt_key(i8*, %struct.ntlm_buf*) #1

declare dso_local i32 @heim_ntlm_calculate_ntlm2(i32*, i64, i8*, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @heim_ntlm_build_ntlm1_master(i8*, i32, %struct.ntlm_buf*, i32*) #1

declare dso_local i64 @heim_ntlm_encode_type3(%struct.ntlm_type3*, %struct.ntlm_buf*) #1

declare dso_local i32 @gss_delete_sec_context(i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
