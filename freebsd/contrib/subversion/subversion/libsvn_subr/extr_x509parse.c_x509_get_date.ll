; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@SVN_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i64 0, align 8
@SVN_ERR_X509_CERT_INVALID_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%2d%2d%2d%2d%2d%2d%c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%4d%2d%2d%2d%2d%2d%c\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i8**, i8*, i32*)* @x509_get_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @x509_get_date(i32* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.TYPE_11__* @asn1_get_tag(i8** %18, i8* %19, i32* %13, i32 128)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVN_ERR_ASN1_UNEXPECTED_TAG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = call i32 @svn_error_clear(%struct.TYPE_11__* %30)
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call %struct.TYPE_11__* @asn1_get_tag(i8** %32, i8* %33, i32* %13, i32 129)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %10, align 8
  store i32 129, i32* %12, align 4
  br label %36

35:                                               ; preds = %23, %4
  store i32 128, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = call %struct.TYPE_11__* @svn_error_create(i32 %40, %struct.TYPE_11__* %41, i32* null)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %5, align 8
  br label %184

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i8* @apr_pstrndup(i32* %44, i8* %46, i32 %47)
  store i8* %48, i8** %14, align 8
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %89 [
    i32 128, label %50
    i32 129, label %72
  ]

50:                                               ; preds = %43
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %58 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i8* %16)
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %62 = call %struct.TYPE_11__* @svn_error_create(i32 %61, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %5, align 8
  br label %184

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 50
  %67 = zext i1 %66 to i32
  %68 = mul nsw i32 100, %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %92

72:                                               ; preds = %43
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %80 = call i32 @sscanf(i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79, i8* %16)
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %84 = call %struct.TYPE_11__* @svn_error_create(i32 %83, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %5, align 8
  br label %184

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1900
  store i32 %88, i32* %86, align 8
  br label %92

89:                                               ; preds = %43
  %90 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %91 = call %struct.TYPE_11__* @svn_error_create(i32 %90, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %5, align 8
  br label %184

92:                                               ; preds = %85, %63
  %93 = load i8, i8* %16, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 90
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %98 = call %struct.TYPE_11__* @svn_error_create(i32 %97, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %5, align 8
  br label %184

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %166, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %166, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 61
  br i1 %113, label %166, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %166, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 59
  br i1 %121, label %166, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %166, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 23
  br i1 %129, label %166, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %166, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 31
  br i1 %137, label %166, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 11
  br i1 %145, label %166, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %156, 6
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 365
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %99
  %167 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_DATE, align 4
  %168 = call %struct.TYPE_11__* @svn_error_create(i32 %167, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %5, align 8
  br label %184

169:                                              ; preds = %162
  %170 = load i32*, i32** %6, align 8
  %171 = call i64 @apr_time_exp_gmt_get(i32* %170, %struct.TYPE_12__* %15)
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* %11, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i64, i64* %11, align 8
  %176 = call %struct.TYPE_11__* @svn_error_wrap_apr(i64 %175, i32* null)
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %5, align 8
  br label %184

177:                                              ; preds = %169
  %178 = load i32, i32* %13, align 4
  %179 = load i8**, i8*** %7, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = sext i32 %178 to i64
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %179, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %183, %struct.TYPE_11__** %5, align 8
  br label %184

184:                                              ; preds = %177, %174, %166, %96, %89, %82, %60, %39
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @asn1_get_tag(i8**, i8*, i32*, i32) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_11__* @svn_error_create(i32, %struct.TYPE_11__*, i32*) #2

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8*) #2

declare dso_local i64 @apr_time_exp_gmt_get(i32*, %struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_11__* @svn_error_wrap_apr(i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
