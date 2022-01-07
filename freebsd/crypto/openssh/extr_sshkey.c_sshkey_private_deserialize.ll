; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_deserialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_deserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i64 0, align 8
@ED25519_SK_SZ = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@SSH_ERR_EC_CURVE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_private_deserialize(%struct.sshbuf* %0, %struct.sshkey** %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca %struct.sshkey**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %17, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %18 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  %19 = icmp ne %struct.sshkey** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  store %struct.sshkey* null, %struct.sshkey** %21, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %24 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %23, i8** %5, i32* null)
  store i32 %24, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %102

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @sshkey_type_from_name(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %93 [
    i32 133, label %31
    i32 132, label %63
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.sshkey* @sshkey_new_private(i32 %32)
  store %struct.sshkey* %33, %struct.sshkey** %8, align 8
  %34 = icmp eq %struct.sshkey* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %36, i32* %12, align 4
  br label %102

37:                                               ; preds = %31
  %38 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %39 = call i32 @sshbuf_get_string(%struct.sshbuf* %38, i32** %13, i64* %9)
  store i32 %39, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %43 = call i32 @sshbuf_get_string(%struct.sshbuf* %42, i32** %14, i64* %10)
  store i32 %43, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  br label %102

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @ED25519_PK_SZ, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @ED25519_SK_SZ, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %55, i32* %12, align 4
  br label %102

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %59 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %58, i32 0, i32 7
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %62 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  br label %95

63:                                               ; preds = %27
  %64 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %65 = call i32 @sshkey_froms(%struct.sshbuf* %64, %struct.sshkey** %8)
  store i32 %65, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %69 = call i32 @sshbuf_get_string(%struct.sshbuf* %68, i32** %13, i64* %9)
  store i32 %69, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %73 = call i32 @sshbuf_get_string(%struct.sshbuf* %72, i32** %14, i64* %10)
  store i32 %73, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67, %63
  br label %102

76:                                               ; preds = %71
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @ED25519_PK_SZ, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @ED25519_SK_SZ, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %85, i32* %12, align 4
  br label %102

86:                                               ; preds = %80
  %87 = load i32*, i32** %13, align 8
  %88 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %89 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %88, i32 0, i32 7
  store i32* %87, i32** %89, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %92 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  br label %95

93:                                               ; preds = %27
  %94 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %94, i32* %12, align 4
  br label %102

95:                                               ; preds = %86, %56
  store i32 0, i32* %12, align 4
  %96 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  %97 = icmp ne %struct.sshkey** %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %100 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  store %struct.sshkey* %99, %struct.sshkey** %100, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %93, %84, %75, %54, %45, %35, %26
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %108 = call i32 @sshkey_free(%struct.sshkey* %107)
  %109 = load i32*, i32** %13, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @freezero(i32* %109, i64 %110)
  %112 = load i32*, i32** %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @freezero(i32* %112, i64 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32*, i32** %15, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @freezero(i32* %117, i64 %118)
  %120 = load i32*, i32** %16, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @freezero(i32* %120, i64 %121)
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

declare dso_local i32 @sshkey_type_from_name(i8*) #1

declare dso_local %struct.sshkey* @sshkey_new_private(i32) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i32 @sshkey_froms(%struct.sshbuf*, %struct.sshkey**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @freezero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
