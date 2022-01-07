; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crl_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crl_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crl_sign_options = type { i8*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crl alloc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"signer missing\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"hx509_certs_init: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"hx509_query_alloc: %d\00", align 1
@HX509_QUERY_OPTION_PRIVATE_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"no signer certificate found\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Invalid lifetime: %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"MEMORY:revoked-certs\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"hx509_certs_init: MEMORY cert\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"hx509_certs_append: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crl_sign(%struct.crl_sign_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.crl_sign_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.crl_sign_options* %0, %struct.crl_sign_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %9, align 8
  %17 = load i32, i32* @context, align 4
  %18 = call i32 @hx509_lock_init(i32 %17, i32* %10)
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %21 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %20, i32 0, i32 3
  %22 = call i32 @lock_strings(i32 %19, i32* %21)
  %23 = load i32, i32* @context, align 4
  %24 = call i32 @hx509_crl_alloc(i32 %23, i32* %7)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %31 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  store i32* null, i32** %12, align 8
  %37 = load i32, i32* @context, align 4
  %38 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %39 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @hx509_certs_init(i32 %37, i8* %40, i32 0, i32* null, i32** %12)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* @context, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %48 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %45, i32 1, i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32, i32* @context, align 4
  %53 = call i32 @hx509_query_alloc(i32 %52, i32** %13)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @context, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %57, i32 1, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* @HX509_QUERY_OPTION_PRIVATE_KEY, align 4
  %64 = call i32 @hx509_query_match_option(i32* %62, i32 %63)
  %65 = load i32, i32* @context, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @hx509_certs_find(i32 %65, i32* %66, i32* %67, i32** %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @context, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @hx509_query_free(i32 %69, i32* %70)
  %72 = call i32 @hx509_certs_free(i32** %12)
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @context, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %76, i32 1, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %61
  %80 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %81 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %86 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @parse_time(i64 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %93 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* @context, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @hx509_crl_lifetime(i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %79
  store i32* null, i32** %15, align 8
  %102 = load i32, i32* @context, align 4
  %103 = call i32 @hx509_certs_init(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32** %15)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @context, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %107, i32 1, i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %101
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load i32, i32* @context, align 4
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @hx509_certs_append(i32 %116, i32* %117, i32 %118, i8* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %115
  %128 = load i32, i32* @context, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i8**, i8*** %6, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %128, i32 1, i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %127, %115
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %111

140:                                              ; preds = %111
  %141 = load i32, i32* @context, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @hx509_crl_add_revoked_certs(i32 %141, i32 %142, i32* %143)
  %145 = call i32 @hx509_certs_free(i32** %15)
  %146 = load i32, i32* @context, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @hx509_crl_sign(i32 %146, i32* %147, i32 %148, %struct.TYPE_3__* %8)
  %150 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %151 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %140
  %155 = load %struct.crl_sign_options*, %struct.crl_sign_options** %4, align 8
  %156 = getelementptr inbounds %struct.crl_sign_options, %struct.crl_sign_options* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @rk_dumpdata(i64 %157, i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %154, %140
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @free(i32 %165)
  %167 = load i32, i32* @context, align 4
  %168 = call i32 @hx509_crl_free(i32 %167, i32* %7)
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @hx509_cert_free(i32* %169)
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @hx509_lock_free(i32 %171)
  ret i32 0
}

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_crl_alloc(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @hx509_query_alloc(i32, i32**) #1

declare dso_local i32 @hx509_query_match_option(i32*, i32) #1

declare dso_local i32 @hx509_certs_find(i32, i32*, i32*, i32**) #1

declare dso_local i32 @hx509_query_free(i32, i32*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @parse_time(i64, i8*) #1

declare dso_local i32 @hx509_crl_lifetime(i32, i32, i32) #1

declare dso_local i32 @hx509_certs_append(i32, i32*, i32, i8*) #1

declare dso_local i32 @hx509_crl_add_revoked_certs(i32, i32, i32*) #1

declare dso_local i32 @hx509_crl_sign(i32, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @rk_dumpdata(i64, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @hx509_crl_free(i32, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @hx509_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
