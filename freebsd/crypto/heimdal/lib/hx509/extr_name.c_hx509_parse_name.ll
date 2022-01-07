; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_parse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@choice_Name_rdnSequence = common dso_local global i32 0, align 4
@HX509_PARSING_NAME_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"missing = in %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"missing name before = in %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" = after , in %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown type: %.*s\00", align 1
@HX509_NAME_MALFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_parse_name(i32 %0, i8* %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %18, align 8
  %19 = call %struct.TYPE_6__* @calloc(i32 1, i32 4)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %23, i32 0, i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %175

27:                                               ; preds = %3
  %28 = load i32, i32* @choice_Name_rdnSequence, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %162, %27
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %169

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %10, align 8
  store i32 1, i32* %14, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 61)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @HX509_PARSING_NAME_FAILED, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %64, i32 0, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %172

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @HX509_PARSING_NAME_FAILED, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %74, i32 0, i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %172

78:                                               ; preds = %68
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load i64, i64* %10, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32, i32* @HX509_PARSING_NAME_FAILED, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %88, i32 0, i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %172

92:                                               ; preds = %78
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @stringtooid(i8* %93, i32 %99, i32* %13)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %92
  %104 = load i32, i32* @HX509_PARSING_NAME_FAILED, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %105, i32 0, i32 %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %112, i8* %113)
  br label %172

115:                                              ; preds = %92
  %116 = load i64, i64* %10, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sub i64 %116, %121
  %123 = sub i64 %122, 1
  store i64 %123, i64* %15, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %16, align 8
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, 1
  %134 = call i8* @malloc(i64 %133)
  store i8* %134, i8** %17, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %115
  %138 = call i32 @der_free_oid(i32* %13)
  %139 = load i32, i32* @ENOMEM, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %140, i32 0, i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %172

143:                                              ; preds = %115
  %144 = load i8*, i8** %17, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = load i64, i64* %15, align 8
  %147 = call i32 @memcpy(i8* %144, i8* %145, i64 %146)
  %148 = load i8*, i8** %17, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %17, align 8
  %155 = call i32 @_hx509_name_modify(i32 %151, %struct.TYPE_7__* %153, i32 0, i32* %13, i8* %154)
  store i32 %155, i32* %12, align 4
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @free(i8* %156)
  %158 = call i32 @der_free_oid(i32* %13)
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %143
  br label %172

162:                                              ; preds = %143
  %163 = load i64, i64* %10, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %163, %165
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 %166
  store i8* %168, i8** %8, align 8
  br label %33

169:                                              ; preds = %41
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %171 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %171, align 8
  store i32 0, i32* %4, align 4
  br label %175

172:                                              ; preds = %161, %137, %103, %86, %72, %62
  %173 = call i32 @hx509_name_free(%struct.TYPE_6__** %11)
  %174 = load i32, i32* @HX509_NAME_MALFORMED, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %172, %169, %22
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @stringtooid(i8*, i32, i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @der_free_oid(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_hx509_name_modify(i32, %struct.TYPE_7__*, i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_name_free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
