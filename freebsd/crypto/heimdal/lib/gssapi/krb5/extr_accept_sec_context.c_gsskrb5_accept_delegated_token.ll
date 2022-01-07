; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_gsskrb5_accept_delegated_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_gsskrb5_accept_delegated_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@GSS_C_DELEG_FLAG = common dso_local global i32 0, align 4
@KRB5_AUTH_CONTEXT_DO_TIME = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_CF_DESTROY_CRED_ON_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_4__*, i32, i32**)* @gsskrb5_accept_delegated_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gsskrb5_accept_delegated_token(i64* %0, %struct.TYPE_4__* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @krb5_cc_default(i32 %19, i32** %9)
  store i64 %20, i64* %10, align 8
  br label %26

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @krb5_cc_type_memory, align 4
  %25 = call i64 @krb5_cc_new_unique(i32 %23, i32 %24, i32* null, i32** %9)
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %110

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @krb5_cc_initialize(i32 %37, i32* %38, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %110

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_TIME, align 4
  %58 = call i32 @krb5_auth_con_removeflags(i32 %53, i32 %56, i32 %57, i64* %11)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i64 @krb5_rd_cred2(i32 %59, i32 %62, i32* %63, i32* %65)
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @krb5_auth_con_setflags(i32 %67, i32 %70, i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %52
  %76 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  br label %110

85:                                               ; preds = %52
  %86 = load i32**, i32*** %8, align 8
  %87 = icmp ne i32** %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i64*, i64** %5, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32**, i32*** %8, align 8
  %92 = call i64 @_gsskrb5_krb5_import_cred(i64* %89, i32* %90, i32* null, i32* null, i32** %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @GSS_S_COMPLETE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %110

97:                                               ; preds = %88
  %98 = load i32**, i32*** %8, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %13, align 8
  %101 = load i32, i32* @GSS_CF_DESTROY_CRED_ON_RELEASE, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @krb5_cc_close(i32 %106, i32* %107)
  store i32* null, i32** %9, align 8
  br label %109

109:                                              ; preds = %97, %85
  br label %110

110:                                              ; preds = %109, %96, %75, %45, %29
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i32**, i32*** %8, align 8
  %115 = icmp eq i32** %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @krb5_cc_close(i32 %117, i32* %118)
  br label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @krb5_cc_destroy(i32 %121, i32* %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %110
  %126 = load i64, i64* %12, align 8
  ret i64 %126
}

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32**) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32*, i32) #1

declare dso_local i32 @krb5_auth_con_removeflags(i32, i32, i32, i64*) #1

declare dso_local i64 @krb5_rd_cred2(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_auth_con_setflags(i32, i32, i64) #1

declare dso_local i64 @_gsskrb5_krb5_import_cred(i64*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
