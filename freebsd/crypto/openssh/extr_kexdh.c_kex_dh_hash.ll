; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdh.c_kex_dh_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdh.c_kex_dh_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_dh_hash(i32 %0, i8* %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i32* %10, i32* %11, i32* %12, i64* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca %struct.sshbuf*, align 8
  %31 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i32* %3, i32** %19, align 8
  store i64 %4, i64* %20, align 8
  store i32* %5, i32** %21, align 8
  store i64 %6, i64* %22, align 8
  store i32* %7, i32** %23, align 8
  store i64 %8, i64* %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i64* %13, i64** %29, align 8
  %32 = load i64*, i64** %29, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i64 @ssh_digest_bytes(i32 %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %38, i32* %15, align 4
  br label %131

39:                                               ; preds = %14
  %40 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %40, %struct.sshbuf** %30, align 8
  %41 = icmp eq %struct.sshbuf* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %43, i32* %15, align 4
  br label %131

44:                                               ; preds = %39
  %45 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %45, i8* %46)
  store i32 %47, i32* %31, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %109, label %49

49:                                               ; preds = %44
  %50 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %50, i8* %51)
  store i32 %52, i32* %31, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %49
  %55 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %56 = load i64, i64* %20, align 8
  %57 = add i64 %56, 1
  %58 = call i32 @sshbuf_put_u32(%struct.sshbuf* %55, i64 %57)
  store i32 %58, i32* %31, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %109, label %60

60:                                               ; preds = %54
  %61 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %62 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %63 = call i32 @sshbuf_put_u8(%struct.sshbuf* %61, i32 %62)
  store i32 %63, i32* %31, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %109, label %65

65:                                               ; preds = %60
  %66 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = load i64, i64* %20, align 8
  %69 = call i32 @sshbuf_put(%struct.sshbuf* %66, i32* %67, i64 %68)
  store i32 %69, i32* %31, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %109, label %71

71:                                               ; preds = %65
  %72 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %73 = load i64, i64* %22, align 8
  %74 = add i64 %73, 1
  %75 = call i32 @sshbuf_put_u32(%struct.sshbuf* %72, i64 %74)
  store i32 %75, i32* %31, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %109, label %77

77:                                               ; preds = %71
  %78 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %79 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %80 = call i32 @sshbuf_put_u8(%struct.sshbuf* %78, i32 %79)
  store i32 %80, i32* %31, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %109, label %82

82:                                               ; preds = %77
  %83 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %84 = load i32*, i32** %21, align 8
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @sshbuf_put(%struct.sshbuf* %83, i32* %84, i64 %85)
  store i32 %86, i32* %31, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %82
  %89 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %90 = load i32*, i32** %23, align 8
  %91 = load i64, i64* %24, align 8
  %92 = call i32 @sshbuf_put_string(%struct.sshbuf* %89, i32* %90, i64 %91)
  store i32 %92, i32* %31, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %88
  %95 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %96 = load i32*, i32** %25, align 8
  %97 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %95, i32* %96)
  store i32 %97, i32* %31, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %101 = load i32*, i32** %26, align 8
  %102 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %100, i32* %101)
  store i32 %102, i32* %31, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %106 = load i32*, i32** %27, align 8
  %107 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %105, i32* %106)
  store i32 %107, i32* %31, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %99, %94, %88, %82, %77, %71, %65, %60, %54, %49, %44
  %110 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %111 = call i32 @sshbuf_free(%struct.sshbuf* %110)
  %112 = load i32, i32* %31, align 4
  store i32 %112, i32* %15, align 4
  br label %131

113:                                              ; preds = %104
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %116 = load i32*, i32** %28, align 8
  %117 = load i64*, i64** %29, align 8
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @ssh_digest_buffer(i32 %114, %struct.sshbuf* %115, i32* %116, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %123 = call i32 @sshbuf_free(%struct.sshbuf* %122)
  %124 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %124, i32* %15, align 4
  br label %131

125:                                              ; preds = %113
  %126 = load %struct.sshbuf*, %struct.sshbuf** %30, align 8
  %127 = call i32 @sshbuf_free(%struct.sshbuf* %126)
  %128 = load i32, i32* %16, align 4
  %129 = call i64 @ssh_digest_bytes(i32 %128)
  %130 = load i64*, i64** %29, align 8
  store i64 %129, i64* %130, align 8
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %125, %121, %109, %42, %37
  %132 = load i32, i32* %15, align 4
  ret i32 %132
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i64 @ssh_digest_buffer(i32, %struct.sshbuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
