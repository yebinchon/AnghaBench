; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_request_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_request_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_create_options = type { %struct.TYPE_7__, %struct.TYPE_6__, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hx509_parse_name: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"hx509_request_add_email\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"hx509_request_add_dns_name\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"hx509_private_key2SPKI: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"hx509_request_set_SubjectPublicKeyInfo\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"_hx509_request_to_pkcs10\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_create(%struct.request_create_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.request_create_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.request_create_options* %0, %struct.request_create_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = call i32 @memset(i32* %12, i32 0, i32 4)
  %20 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %21 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %24 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %27 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_key(i32 %22, i32 %25, i32 %28, i32* %11)
  %30 = load i32, i32* @context, align 4
  %31 = call i32 @hx509_request_init(i32 %30, i32* %8)
  %32 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %33 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %3
  store i32* null, i32** %14, align 8
  %37 = load i32, i32* @context, align 4
  %38 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %39 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hx509_parse_name(i32 %37, i64 %40, i32** %14)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @context, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @hx509_request_set_name(i32 %48, i32 %49, i32* %50)
  %52 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %53 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @hx509_name_to_string(i32* %57, i8** %15)
  %59 = load i8*, i8** %15, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %47
  %62 = call i32 @hx509_name_free(i32** %14)
  br label %63

63:                                               ; preds = %61, %3
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %67 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load i32, i32* @context, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %75 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @_hx509_request_add_email(i32 %72, i32 %73, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load i32, i32* @context, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @hx509_err(i32 %86, i32 1, i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %64

93:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %120, %93
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %97 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %94
  %102 = load i32, i32* @context, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.request_create_options*, %struct.request_create_options** %4, align 8
  %105 = getelementptr inbounds %struct.request_create_options, %struct.request_create_options* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @_hx509_request_add_dns_name(i32 %102, i32 %103, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load i32, i32* @context, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @hx509_err(i32 %116, i32 1, i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %101
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %94

123:                                              ; preds = %94
  %124 = load i32, i32* @context, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @hx509_private_key2SPKI(i32 %124, i32 %125, i32* %12)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i32, i32* @context, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @hx509_request_set_SubjectPublicKeyInfo(i32 %133, i32 %134, i32* %12)
  store i32 %135, i32* %9, align 4
  %136 = call i32 @free_SubjectPublicKeyInfo(i32* %12)
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @context, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @hx509_err(i32 %140, i32 1, i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %132
  %144 = load i32, i32* @context, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @_hx509_request_to_pkcs10(i32 %144, i32 %145, i32 %146, %struct.TYPE_8__* %7)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @context, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @hx509_err(i32 %151, i32 1, i32 %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %143
  %155 = call i32 @hx509_private_key_free(i32* %11)
  %156 = call i32 @hx509_request_free(i32* %8)
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @rk_dumpdata(i8* %160, i32 %162, i32 %164)
  br label %166

166:                                              ; preds = %159, %154
  %167 = call i32 @der_free_octet_string(%struct.TYPE_8__* %7)
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_key(i32, i32, i32, i32*) #1

declare dso_local i32 @hx509_request_init(i32, i32*) #1

declare dso_local i32 @hx509_parse_name(i32, i64, i32**) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @hx509_request_set_name(i32, i32, i32*) #1

declare dso_local i32 @hx509_name_to_string(i32*, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @hx509_name_free(i32**) #1

declare dso_local i32 @_hx509_request_add_email(i32, i32, i32) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @_hx509_request_add_dns_name(i32, i32, i32) #1

declare dso_local i32 @hx509_private_key2SPKI(i32, i32, i32*) #1

declare dso_local i32 @hx509_request_set_SubjectPublicKeyInfo(i32, i32, i32*) #1

declare dso_local i32 @free_SubjectPublicKeyInfo(i32*) #1

declare dso_local i32 @_hx509_request_to_pkcs10(i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @hx509_private_key_free(i32*) #1

declare dso_local i32 @hx509_request_free(i32*) #1

declare dso_local i32 @rk_dumpdata(i8*, i32, i32) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
