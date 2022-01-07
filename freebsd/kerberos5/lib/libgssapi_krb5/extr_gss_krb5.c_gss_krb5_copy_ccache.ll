; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_copy_ccache.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_copy_ccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@GSS_C_NO_BUFFER_SET = common dso_local global %struct.TYPE_7__* null, align 8
@GSS_KRB5_COPY_CCACHE_X = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_copy_ccache(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GSS_C_NO_BUFFER_SET, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GSS_KRB5_COPY_CCACHE_X, align 4
  %18 = call i32 @gss_inquire_cred_by_oid(i32* %15, i32 %16, i32 %17, %struct.TYPE_7__** %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GSS_C_NO_BUFFER_SET, align 8
  %26 = icmp eq %struct.TYPE_7__* %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %23
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @gss_release_buffer_set(i32* %33, %struct.TYPE_7__** %8)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %37, i32* %4, align 4
  br label %102

38:                                               ; preds = %27
  %39 = call i32 @krb5_init_context(i32* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @gss_release_buffer_set(i32* %45, %struct.TYPE_7__** %8)
  %47 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %102

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @gss_release_buffer_set(i32* %64, %struct.TYPE_7__** %8)
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %48
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %71, i32* %4, align 4
  br label %102

72:                                               ; preds = %48
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @krb5_cc_resolve(i32 %73, i8* %74, i32* %11)
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @krb5_cc_copy_cache(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @krb5_cc_close(i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @krb5_free_context(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %96, %80, %68, %42, %32, %21
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @gss_inquire_cred_by_oid(i32*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @gss_release_buffer_set(i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_cc_copy_cache(i32, i32, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
