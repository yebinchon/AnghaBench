; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_options = type { i64, i32, i64, i64, i64, i64, i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hx509_query_alloc: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MEMORY:cert-store\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"hx509_certs_append: %s: %d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hx509_query_match_eku: %d\00", align 1
@HX509_QUERY_OPTION_PRIVATE_KEY = common dso_local global i32 0, align 4
@HX509_QUERY_OPTION_KU_ENCIPHERMENT = common dso_local global i32 0, align 4
@HX509_QUERY_OPTION_KU_DIGITALSIGNATURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"no match found (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"match found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query(%struct.query_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.query_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.query_options* %0, %struct.query_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load i32, i32* @context, align 4
  %14 = call i32 @hx509_query_alloc(i32 %13, i32** %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  %19 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @context, align 4
  %22 = call i32 @hx509_lock_init(i32 %21, i32* %7)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.query_options*, %struct.query_options** %4, align 8
  %25 = getelementptr inbounds %struct.query_options, %struct.query_options* %24, i32 0, i32 7
  %26 = call i32 @lock_strings(i32 %23, i32* %25)
  %27 = load i32, i32* @context, align 4
  %28 = call i32 @hx509_certs_init(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @context, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @hx509_err(i32 %32, i32 1, i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %20
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32, i32* @context, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @hx509_certs_append(i32 %40, i32 %41, i32 %42, i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %6, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.query_options*, %struct.query_options** %4, align 8
  %62 = getelementptr inbounds %struct.query_options, %struct.query_options* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.query_options*, %struct.query_options** %4, align 8
  %68 = getelementptr inbounds %struct.query_options, %struct.query_options* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hx509_query_match_friendly_name(i32* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.query_options*, %struct.query_options** %4, align 8
  %73 = getelementptr inbounds %struct.query_options, %struct.query_options* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.query_options*, %struct.query_options** %4, align 8
  %78 = getelementptr inbounds %struct.query_options, %struct.query_options* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @parse_oid(i64 %79, i32* null, i32* %12)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @hx509_query_match_eku(i32* %81, i32* %12)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = call i32 @der_free_oid(i32* %12)
  br label %90

90:                                               ; preds = %88, %71
  %91 = load %struct.query_options*, %struct.query_options** %4, align 8
  %92 = getelementptr inbounds %struct.query_options, %struct.query_options* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @HX509_QUERY_OPTION_PRIVATE_KEY, align 4
  %98 = call i32 @hx509_query_match_option(i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.query_options*, %struct.query_options** %4, align 8
  %101 = getelementptr inbounds %struct.query_options, %struct.query_options* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @HX509_QUERY_OPTION_KU_ENCIPHERMENT, align 4
  %107 = call i32 @hx509_query_match_option(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.query_options*, %struct.query_options** %4, align 8
  %110 = getelementptr inbounds %struct.query_options, %struct.query_options* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* @HX509_QUERY_OPTION_KU_DIGITALSIGNATURE, align 4
  %116 = call i32 @hx509_query_match_option(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.query_options*, %struct.query_options** %4, align 8
  %119 = getelementptr inbounds %struct.query_options, %struct.query_options* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* @context, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.query_options*, %struct.query_options** %4, align 8
  %126 = getelementptr inbounds %struct.query_options, %struct.query_options* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @hx509_query_match_expr(i32 %123, i32* %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load i32, i32* @context, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @hx509_certs_find(i32 %130, i32 %131, i32* %132, i32* %10)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @context, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @hx509_query_free(i32 %134, i32* %135)
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  br label %153

142:                                              ; preds = %129
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %144 = load %struct.query_options*, %struct.query_options** %4, align 8
  %145 = getelementptr inbounds %struct.query_options, %struct.query_options* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @context, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @print_certificate(i32 %149, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %139
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @hx509_cert_free(i32 %154)
  %156 = call i32 @hx509_certs_free(i32* %9)
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @hx509_lock_free(i32 %157)
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

declare dso_local i32 @hx509_query_alloc(i32, i32**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_append(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_query_match_friendly_name(i32*, i32) #1

declare dso_local i32 @parse_oid(i64, i32*, i32*) #1

declare dso_local i32 @hx509_query_match_eku(i32*, i32*) #1

declare dso_local i32 @der_free_oid(i32*) #1

declare dso_local i32 @hx509_query_match_option(i32*, i32) #1

declare dso_local i32 @hx509_query_match_expr(i32, i32*, i32) #1

declare dso_local i32 @hx509_certs_find(i32, i32, i32*, i32*) #1

declare dso_local i32 @hx509_query_free(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_certificate(i32, i32, i32) #1

declare dso_local i32 @hx509_cert_free(i32) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @hx509_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
