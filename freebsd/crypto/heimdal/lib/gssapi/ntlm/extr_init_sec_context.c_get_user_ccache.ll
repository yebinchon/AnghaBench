; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_init_sec_context.c_get_user_ccache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_init_sec_context.c_get_user_ccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ntlm_buf = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@KRB5_PRINCIPAL_UNPARSE_NO_REALM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ntlm-key-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, %struct.ntlm_buf*)* @get_user_ccache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_user_ccache(%struct.TYPE_7__* %0, i8** %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  %15 = call i32 @krb5_data_zero(%struct.TYPE_8__* %13)
  %16 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %17 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = call i32 @krb5_init_context(i32** %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %106

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @krb5_cc_default(i32* %26, i32** %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %94

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @krb5_cc_get_principal(i32* %32, i32* %33, i32* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %94

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = call i32 @krb5_unparse_name_flags(i32* %39, i32 %40, i32 %41, i8** %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @krb5_free_principal(i32* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %94

50:                                               ; preds = %38
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @krb5_clear_error_message(i32* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %11, align 4
  br label %94

61:                                               ; preds = %50
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @krb5_cc_get_config(i32* %62, i32* %63, i32* null, i8* %64, %struct.TYPE_8__* %13)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %94

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @malloc(i32 %71)
  %73 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %74 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %76 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %11, align 4
  br label %94

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %85 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %87 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(i32* %88, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %81, %79, %68, %57, %49, %37, %30
  %95 = call i32 @krb5_data_free(%struct.TYPE_8__* %13)
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @krb5_cc_close(i32* %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @krb5_free_context(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %23
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @krb5_init_context(i32**) #1

declare dso_local i32 @krb5_cc_default(i32*, i32**) #1

declare dso_local i32 @krb5_cc_get_principal(i32*, i32*, i32*) #1

declare dso_local i32 @krb5_unparse_name_flags(i32*, i32, i32, i8**) #1

declare dso_local i32 @krb5_free_principal(i32*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32*) #1

declare dso_local i32 @krb5_cc_get_config(i32*, i32*, i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_8__*) #1

declare dso_local i32 @krb5_cc_close(i32*, i32*) #1

declare dso_local i32 @krb5_free_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
