; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c__gsskrb5_create_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c__gsskrb5_create_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32*, i32*, i32, i32, i32*, i32*, i64, i64, i32*, i32*, i32*, i32* }

@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_S_BAD_BINDINGS = common dso_local global i64 0, align 8
@KRB5_AUTH_CONTEXT_DO_SEQUENCE = common dso_local global i32 0, align 4
@KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_create_ctx(i64* %0, i32** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32**, i32*** %8, align 8
  store i32* null, i32** %14, align 8
  %15 = call %struct.TYPE_3__* @malloc(i32 120)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %13, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %21, i64* %6, align 8
  br label %164

22:                                               ; preds = %5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 15
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 14
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 13
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 12
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 11
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 9
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 8
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  %48 = call i32 @krb5_data_zero(i32* %47)
  %49 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = call i32 @HEIMDAL_MUTEX_init(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i64 @krb5_auth_con_init(i32 %59, i32** %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %22
  %66 = load i64, i64* %12, align 8
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = call i32 @HEIMDAL_MUTEX_destroy(i32* %69)
  %71 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %71, i64* %6, align 8
  br label %164

72:                                               ; preds = %22
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = call i64 @krb5_auth_con_init(i32 %73, i32** %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load i64, i64* %12, align 8
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @krb5_auth_con_free(i32 %82, i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = call i32 @HEIMDAL_MUTEX_destroy(i32* %88)
  %90 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %90, i64* %6, align 8
  br label %164

91:                                               ; preds = %72
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @set_addresses(i32 %92, i32* %95, i32 %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %91
  %101 = load i64, i64* %12, align 8
  %102 = load i64*, i64** %7, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @krb5_auth_con_free(i32 %103, i32* %106)
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @krb5_auth_con_free(i32 %108, i32* %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = call i32 @HEIMDAL_MUTEX_destroy(i32* %114)
  %116 = load i64, i64* @GSS_S_BAD_BINDINGS, align 8
  store i64 %116, i64* %6, align 8
  br label %164

117:                                              ; preds = %91
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @set_addresses(i32 %118, i32* %121, i32 %122)
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %117
  %127 = load i64, i64* %12, align 8
  %128 = load i64*, i64** %7, align 8
  store i64 %127, i64* %128, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @krb5_auth_con_free(i32 %129, i32* %132)
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @krb5_auth_con_free(i32 %134, i32* %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = call i32 @HEIMDAL_MUTEX_destroy(i32* %140)
  %142 = load i64, i64* @GSS_S_BAD_BINDINGS, align 8
  store i64 %142, i64* %6, align 8
  br label %164

143:                                              ; preds = %117
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_SEQUENCE, align 4
  %149 = load i32, i32* @KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @krb5_auth_con_addflags(i32 %144, i32* %147, i32 %150, i32* null)
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_SEQUENCE, align 4
  %157 = load i32, i32* @KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @krb5_auth_con_addflags(i32 %152, i32* %155, i32 %158, i32* null)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %161 = bitcast %struct.TYPE_3__* %160 to i32*
  %162 = load i32**, i32*** %8, align 8
  store i32* %161, i32** %162, align 8
  %163 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %163, i64* %6, align 8
  br label %164

164:                                              ; preds = %143, %126, %100, %79, %65, %18
  %165 = load i64, i64* %6, align 8
  ret i64 %165
}

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_init(i32*) #1

declare dso_local i64 @krb5_auth_con_init(i32, i32**) #1

declare dso_local i32 @HEIMDAL_MUTEX_destroy(i32*) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #1

declare dso_local i64 @set_addresses(i32, i32*, i32) #1

declare dso_local i32 @krb5_auth_con_addflags(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
