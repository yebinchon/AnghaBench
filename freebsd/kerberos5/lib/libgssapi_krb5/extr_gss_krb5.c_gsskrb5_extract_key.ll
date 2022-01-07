; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gsskrb5_extract_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gsskrb5_extract_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@GSS_C_NO_BUFFER_SET = common dso_local global %struct.TYPE_7__* null, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i8* null, align 8
@GSS_S_FAILURE = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@GSS_S_COMPLETE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64, i32, i32**)* @gsskrb5_extract_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gsskrb5_extract_key(i8** %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GSS_C_NO_BUFFER_SET, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** @EINVAL, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %21, i8** %5, align 8
  br label %119

22:                                               ; preds = %4
  %23 = call i8* @krb5_init_context(i32** %13)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8**, i8*** %6, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %29, i8** %5, align 8
  br label %119

30:                                               ; preds = %22
  %31 = load i8**, i8*** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @gss_inquire_sec_context_by_oid(i8** %31, i64 %32, i32 %33, %struct.TYPE_7__** %11)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %5, align 8
  br label %119

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GSS_C_NO_BUFFER_SET, align 8
  %42 = icmp eq %struct.TYPE_7__* %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %39
  %49 = load i8**, i8*** %6, align 8
  %50 = call i32 @gss_release_buffer_set(i8** %49, %struct.TYPE_7__** %11)
  %51 = load i8*, i8** @EINVAL, align 8
  %52 = load i8**, i8*** %6, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %53, i8** %5, align 8
  br label %119

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @krb5_storage_from_mem(i32 %60, i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i8*, i8** @ENOMEM, align 8
  store i8* %71, i8** %10, align 8
  br label %84

72:                                               ; preds = %54
  %73 = call i32* @calloc(i32 1, i32 4)
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32**, i32*** %9, align 8
  %76 = icmp eq i32** %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8*, i8** @ENOMEM, align 8
  store i8* %78, i8** %10, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %14, align 8
  %81 = load i32**, i32*** %9, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @krb5_ret_keyblock(i32* %80, i32* %82)
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %79, %77, %70
  %85 = load i8**, i8*** %6, align 8
  %86 = call i32 @gss_release_buffer_set(i8** %85, %struct.TYPE_7__** %11)
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @krb5_storage_free(i32* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32**, i32*** %9, align 8
  %97 = icmp ne i32** %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32*, i32** %13, align 8
  %100 = load i32**, i32*** %9, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @krb5_free_keyblock(i32* %99, i32* %101)
  %103 = load i32**, i32*** %9, align 8
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %98, %95, %92
  %105 = load i32*, i32** %13, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @krb5_free_context(i32* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %10, align 8
  %112 = load i8**, i8*** %6, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %116, i8** %5, align 8
  br label %119

117:                                              ; preds = %110
  %118 = load i8*, i8** @GSS_S_COMPLETE, align 8
  store i8* %118, i8** %5, align 8
  br label %119

119:                                              ; preds = %117, %115, %48, %37, %26, %19
  %120 = load i8*, i8** %5, align 8
  ret i8* %120
}

declare dso_local i8* @krb5_init_context(i32**) #1

declare dso_local i8* @gss_inquire_sec_context_by_oid(i8**, i64, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @gss_release_buffer_set(i8**, %struct.TYPE_7__**) #1

declare dso_local i32* @krb5_storage_from_mem(i32, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @krb5_ret_keyblock(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_free_keyblock(i32*, i32*) #1

declare dso_local i32 @krb5_free_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
