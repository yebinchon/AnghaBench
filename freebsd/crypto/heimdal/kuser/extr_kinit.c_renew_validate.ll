; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_renew_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_renew_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"get_server\00", align 1
@KRB5_GC_CACHED = common dso_local global i32 0, align 4
@forwardable_flag = common dso_local global i32 0, align 4
@proxiable_flag = common dso_local global i32 0, align 4
@anonymous_flag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"krb5_get_kdc_cred\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@do_afslog = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"krb5_cc_store_cred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i8*, i64)* @renew_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renew_validate(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  %18 = call i32 @memset(%struct.TYPE_21__* %15, i32 0, i32 32)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %22 = call i32 @krb5_cc_get_principal(i32 %19, i32 %20, i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @krb5_warn(i32 %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %182

30:                                               ; preds = %6
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %36 = call i32 @get_server(i32 %31, i32 %33, i8* %34, i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @krb5_warn(i32 %40, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %178

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @KRB5_GC_CACHED, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @krb5_get_credentials(i32 %47, i32 %48, i32 %49, %struct.TYPE_21__* %15, %struct.TYPE_21__** %16)
  br label %51

51:                                               ; preds = %46, %43
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @forwardable_flag, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @forwardable_flag, align 4
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %79

67:                                               ; preds = %51
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %69 = icmp ne %struct.TYPE_21__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* @proxiable_flag, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @proxiable_flag, align 4
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  br label %98

86:                                               ; preds = %79
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %88 = icmp ne %struct.TYPE_21__* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %86
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i64, i64* @anonymous_flag, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* @anonymous_flag, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = call i64 @time(i32* null)
  %110 = load i64, i64* %13, align 8
  %111 = add nsw i64 %109, %110
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %105
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %116 = icmp ne %struct.TYPE_21__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %120 = call i32 @krb5_free_creds(i32 %118, %struct.TYPE_21__* %119)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @krb5_get_kdc_cred(i32 %122, i32 %123, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %17, i32* null, i32* null, %struct.TYPE_21__* %15, %struct.TYPE_21__** %16)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @krb5_warn(i32 %128, i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %178

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @krb5_cc_initialize(i32 %132, i32 %133, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %142 = call i32 @krb5_free_creds(i32 %140, %struct.TYPE_21__* %141)
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @krb5_warn(i32 %143, i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %178

146:                                              ; preds = %131
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %150 = call i32 @krb5_cc_store_cred(i32 %147, i32 %148, %struct.TYPE_21__* %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %146
  %154 = load i8*, i8** %12, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i64, i64* @do_afslog, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = call i64 (...) @k_hasafs()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @krb5_afslog(i32 %163, i32 %164, i32* null, i32* null)
  br label %166

166:                                              ; preds = %162, %159, %156
  br label %167

167:                                              ; preds = %166, %153, %146
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %170 = call i32 @krb5_free_creds(i32 %168, %struct.TYPE_21__* %169)
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @krb5_warn(i32 %174, i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %178

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %173, %139, %127, %39
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @krb5_free_cred_contents(i32 %179, %struct.TYPE_21__* %15)
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %178, %25
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @get_server(i32, i32, i8*, i32*) #1

declare dso_local i32 @krb5_get_credentials(i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__**) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @krb5_free_creds(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @krb5_get_kdc_cred(i32, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__**) #1

declare dso_local i32 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i32 @krb5_cc_store_cred(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @k_hasafs(...) #1

declare dso_local i32 @krb5_afslog(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
