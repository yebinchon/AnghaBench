; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }

@disallow_getting_krbtgt = common dso_local global i64 0, align 8
@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@KRB5_FCC_PERM = common dso_local global i64 0, align 8
@KRB5_GC_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_retrieve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_retrieve(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i64 @krb5_ret_stringz(i32* %20, i8** %16)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %6, align 8
  br label %149

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @KCM_LOG_REQUEST_NAME(i32 %27, i32* %28, i32 %29, i8* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @krb5_ret_uint32(i32* %32, i32* %12)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i64, i64* %14, align 8
  store i64 %39, i64* %6, align 8
  br label %149

40:                                               ; preds = %26
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @krb5_ret_creds_tag(i32* %41, %struct.TYPE_19__* %13)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i64, i64* %14, align 8
  store i64 %48, i64* %6, align 8
  br label %149

49:                                               ; preds = %40
  %50 = load i64, i64* @disallow_getting_krbtgt, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %78

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @KRB5_TGS_NAME, align 4
  %70 = call i64 @strcmp(i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @krb5_free_cred_contents(i32 %75, %struct.TYPE_19__* %13)
  %77 = load i64, i64* @KRB5_FCC_PERM, align 8
  store i64 %77, i64* %6, align 8
  br label %149

78:                                               ; preds = %60, %52, %49
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = call i64 @kcm_ccache_resolve_client(i32 %79, i32* %80, i32 %81, i8* %82, %struct.TYPE_20__** %15)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i8*, i8** %16, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @krb5_free_cred_contents(i32 %89, %struct.TYPE_19__* %13)
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %6, align 8
  br label %149

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @kcm_ccache_retrieve_cred(i32 %93, %struct.TYPE_20__* %94, i32 %95, %struct.TYPE_19__* %13, %struct.TYPE_19__** %17)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @KRB5_GC_CACHED, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = call i32 @krb5_is_config_principal(i32 %105, %struct.TYPE_21__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = call i32 @HEIMDAL_MUTEX_lock(i32* %112)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %116 = call i32 @kcm_internal_ccache(i32 %114, %struct.TYPE_20__* %115, i32* %19)
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @krb5_get_credentials(i32 %117, i32 0, i32* %19, %struct.TYPE_19__* %13, %struct.TYPE_19__** %17)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 1, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = call i32 @HEIMDAL_MUTEX_unlock(i32* %124)
  br label %126

126:                                              ; preds = %122, %104, %99, %92
  %127 = load i64, i64* %14, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32*, i32** %11, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %132 = call i64 @krb5_store_creds(i32* %130, %struct.TYPE_19__* %131)
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @krb5_free_cred_contents(i32 %136, %struct.TYPE_19__* %13)
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %140 = call i32 @kcm_release_ccache(i32 %138, %struct.TYPE_20__* %139)
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %146 = call i32 @krb5_free_cred_contents(i32 %144, %struct.TYPE_19__* %145)
  br label %147

147:                                              ; preds = %143, %133
  %148 = load i64, i64* %14, align 8
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %147, %86, %72, %45, %36, %24
  %150 = load i64, i64* %6, align 8
  ret i64 %150
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_ret_creds_tag(i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, %struct.TYPE_20__**) #1

declare dso_local i64 @kcm_ccache_retrieve_cred(i32, %struct.TYPE_20__*, i32, %struct.TYPE_19__*, %struct.TYPE_19__**) #1

declare dso_local i32 @krb5_is_config_principal(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @kcm_internal_ccache(i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @krb5_get_credentials(i32, i32, i32*, %struct.TYPE_19__*, %struct.TYPE_19__**) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @krb5_store_creds(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
