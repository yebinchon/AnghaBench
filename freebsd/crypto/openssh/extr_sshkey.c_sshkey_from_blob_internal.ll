; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_blob_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_blob_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i8*, i8*, i32*, i32, i32, i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_CERT_INVALID_SIGN_KEY = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@SSH_ERR_EC_CURVE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_EC_CURVE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_KEY_INVALID_EC_VALUE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.sshkey**, i32)* @sshkey_from_blob_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshkey_from_blob_internal(%struct.sshbuf* %0, %struct.sshkey** %1, i32 %2) #0 {
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.sshkey**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sshkey*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %16, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  store i8* null, i8** %14, align 8
  %17 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %18 = icmp ne %struct.sshkey** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  store %struct.sshkey* null, %struct.sshkey** %20, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %23 = call %struct.sshbuf* @sshbuf_fromb(%struct.sshbuf* %22)
  store %struct.sshbuf* %23, %struct.sshbuf** %15, align 8
  %24 = icmp eq %struct.sshbuf* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %104

27:                                               ; preds = %21
  %28 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %29 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %28, i8** %9, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %32, i32* %8, align 4
  br label %104

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @sshkey_type_from_name(i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @sshkey_type_is_cert(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID_SIGN_KEY, align 4
  store i32 %43, i32* %8, align 4
  br label %104

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %75 [
    i32 133, label %46
    i32 134, label %53
    i32 130, label %74
  ]

46:                                               ; preds = %44
  %47 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %48 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %47, i32* null, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %51, i32* %8, align 4
  br label %104

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %44, %52
  %54 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %55 = call i32 @sshbuf_get_string(%struct.sshbuf* %54, i8** %14, i64* %13)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %104

58:                                               ; preds = %53
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @ED25519_PK_SZ, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %63, i32* %8, align 4
  br label %104

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.sshkey* @sshkey_new(i32 %65)
  store %struct.sshkey* %66, %struct.sshkey** %12, align 8
  %67 = icmp eq %struct.sshkey* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %69, i32* %8, align 4
  br label %104

70:                                               ; preds = %64
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %73 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  store i8* null, i8** %14, align 8
  br label %77

74:                                               ; preds = %44
  br label %75

75:                                               ; preds = %44, %74
  %76 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %76, i32* %8, align 4
  br label %104

77:                                               ; preds = %70
  %78 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %79 = call i64 @sshkey_is_cert(%struct.sshkey* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %83 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %84 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %85 = call i32 @cert_parse(%struct.sshbuf* %82, %struct.sshkey* %83, %struct.sshbuf* %84)
  store i32 %85, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %104

88:                                               ; preds = %81, %77
  %89 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %90 = icmp ne %struct.sshkey* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %93 = call i64 @sshbuf_len(%struct.sshbuf* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %96, i32* %8, align 4
  br label %104

97:                                               ; preds = %91, %88
  store i32 0, i32* %8, align 4
  %98 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %99 = icmp ne %struct.sshkey** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %102 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  store %struct.sshkey* %101, %struct.sshkey** %102, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %95, %87, %75, %68, %62, %57, %50, %42, %31, %25
  %105 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %106 = call i32 @sshbuf_free(%struct.sshbuf* %105)
  %107 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %108 = call i32 @sshkey_free(%struct.sshkey* %107)
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.sshbuf* @sshbuf_fromb(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

declare dso_local i32 @sshkey_type_from_name(i8*) #1

declare dso_local i64 @sshkey_type_is_cert(i32) #1

declare dso_local i32 @sshbuf_get_string_direct(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i8**, i64*) #1

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @cert_parse(%struct.sshbuf*, %struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
