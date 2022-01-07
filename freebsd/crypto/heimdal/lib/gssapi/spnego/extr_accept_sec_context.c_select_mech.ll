; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_accept_sec_context.c_select_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_accept_sec_context.c_select_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i8*, i32 }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i64 0, align 8
@GSS_SPNEGO_MECHANISM = common dso_local global %struct.TYPE_19__* null, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@_gss_spnego_mskrb_mechanism_oid_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@_gss_spnego_krb5_mechanism_oid_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GSSAPI_SPNEGO_NAME\00", align 1
@errno = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"host@%s\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32*, i32, %struct.TYPE_19__**)* @select_mech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @select_mech(i64* %0, i32* %1, i32 %2, %struct.TYPE_19__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__** %3, %struct.TYPE_19__*** %9, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 64
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @der_put_oid(i8* %28, i32 64, i32* %29, i64* %11)
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  store i64 %34, i64* %5, align 8
  br label %163

35:                                               ; preds = %4
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 64
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** @GSS_SPNEGO_MECHANISM, align 8
  %45 = call i64 @gss_oid_equal(%struct.TYPE_19__* %12, %struct.TYPE_19__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %48, i64* %5, align 8
  br label %163

49:                                               ; preds = %35
  %50 = load i64*, i64** %6, align 8
  store i64 0, i64* %50, align 8
  %51 = call i64 @gss_oid_equal(%struct.TYPE_19__* %12, %struct.TYPE_19__* @_gss_spnego_mskrb_mechanism_oid_desc)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store %struct.TYPE_19__* @_gss_spnego_krb5_mechanism_oid_desc, %struct.TYPE_19__** %13, align 8
  br label %55

54:                                               ; preds = %49
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %13, align 8
  br label %55

55:                                               ; preds = %54, %53
  %56 = call i64 @gss_indicate_mechs(i64* %17, %struct.TYPE_18__** %14)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %5, align 8
  br label %163

61:                                               ; preds = %55
  store i64 0, i64* %15, align 8
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i64, i64* %15, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i64 %72
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %75 = call i64 @gss_oid_equal(%struct.TYPE_19__* %73, %struct.TYPE_19__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %82

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %62

82:                                               ; preds = %77, %62
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = call i32 @gss_release_oid_set(i64* %17, %struct.TYPE_18__** %14)
  %90 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %90, i64* %5, align 8
  br label %163

91:                                               ; preds = %82
  %92 = call i32 @gss_release_oid_set(i64* %17, %struct.TYPE_18__** %14)
  %93 = load i64*, i64** %6, align 8
  %94 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %95 = call i64 @gss_duplicate_oid(i64* %93, %struct.TYPE_19__* %12, %struct.TYPE_19__** %94)
  store i64 %95, i64* %16, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %161

98:                                               ; preds = %91
  %99 = load i32, i32* @GSS_C_NO_NAME, align 4
  store i32 %99, i32* %18, align 4
  store i8* null, i8** %20, align 8
  %100 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %22, align 8
  %103 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %23, align 8
  %104 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %104, i8** %21, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = call i64 (...) @issuid()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %107, %98
  %111 = trunc i64 %101 to i32
  %112 = call i64 @gethostname(i8* %103, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i64, i64* @errno, align 8
  %116 = load i64*, i64** %6, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %117, i64* %5, align 8
  store i32 1, i32* %25, align 4
  br label %157

118:                                              ; preds = %110
  %119 = call i32 @asprintf(i8** %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %24, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** %20, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122, %118
  %126 = load i64, i64* @ENOMEM, align 8
  %127 = load i64*, i64** %6, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %128, i64* %5, align 8
  store i32 1, i32* %25, align 4
  br label %157

129:                                              ; preds = %122
  %130 = load i8*, i8** %20, align 8
  store i8* %130, i8** %21, align 8
  br label %131

131:                                              ; preds = %129, %107
  %132 = load i8*, i8** %21, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32 %133, i32* %134, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %139 = call i64 @gss_import_name(i64* %137, %struct.TYPE_17__* %19, i32 %138, i32* %18)
  store i64 %139, i64* %16, align 8
  %140 = load i8*, i8** %20, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i8*, i8** %20, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %131
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* @GSS_S_COMPLETE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* %16, align 8
  store i64 %150, i64* %5, align 8
  store i32 1, i32* %25, align 4
  br label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = call i64 @acceptor_approved(i32 %152, %struct.TYPE_19__* %154)
  store i64 %155, i64* %16, align 8
  %156 = call i32 @gss_release_name(i64* %17, i32* %18)
  store i32 0, i32* %25, align 4
  br label %157

157:                                              ; preds = %151, %149, %125, %114
  %158 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %25, align 4
  switch i32 %159, label %165 [
    i32 0, label %160
    i32 1, label %163
  ]

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %91
  %162 = load i64, i64* %16, align 8
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %161, %157, %88, %59, %47, %33
  %164 = load i64, i64* %5, align 8
  ret i64 %164

165:                                              ; preds = %157
  unreachable
}

declare dso_local i64 @der_put_oid(i8*, i32, i32*, i64*) #1

declare dso_local i64 @gss_oid_equal(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @gss_indicate_mechs(i64*, %struct.TYPE_18__**) #1

declare dso_local i32 @gss_release_oid_set(i64*, %struct.TYPE_18__**) #1

declare dso_local i64 @gss_duplicate_oid(i64*, %struct.TYPE_19__*, %struct.TYPE_19__**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @issuid(...) #1

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @acceptor_approved(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
