; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i8*, i64, i32 }
%struct.sshbuf = type { i32 }
%struct.ssh_digest_ctx = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i32, i64, i8*, i64, %struct.sshbuf*, i8**)* @derive_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_key(%struct.ssh* %0, i32 %1, i64 %2, i8* %3, i64 %4, %struct.sshbuf* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sshbuf*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.kex*, align 8
  %17 = alloca %struct.ssh_digest_ctx*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.sshbuf* %5, %struct.sshbuf** %14, align 8
  store i8** %6, i8*** %15, align 8
  %23 = load %struct.ssh*, %struct.ssh** %9, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 0
  %25 = load %struct.kex*, %struct.kex** %24, align 8
  store %struct.kex* %25, %struct.kex** %16, align 8
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %18, align 1
  %28 = load %struct.kex*, %struct.kex** %16, align 8
  %29 = getelementptr inbounds %struct.kex, %struct.kex* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ssh_digest_bytes(i32 %30)
  store i64 %31, i64* %20, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %34, i32* %8, align 4
  br label %139

35:                                               ; preds = %7
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %20, align 8
  %38 = call i32 @ROUNDUP(i64 %36, i64 %37)
  %39 = call i8* @calloc(i32 1, i32 %38)
  store i8* %39, i8** %21, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %42, i32* %22, align 4
  br label %133

43:                                               ; preds = %35
  %44 = load %struct.kex*, %struct.kex** %16, align 8
  %45 = getelementptr inbounds %struct.kex, %struct.kex* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.ssh_digest_ctx* @ssh_digest_start(i32 %46)
  store %struct.ssh_digest_ctx* %47, %struct.ssh_digest_ctx** %17, align 8
  %48 = icmp eq %struct.ssh_digest_ctx* %47, null
  br i1 %48, label %80, label %49

49:                                               ; preds = %43
  %50 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %51 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %52 = call i64 @ssh_digest_update_buffer(%struct.ssh_digest_ctx* %50, %struct.sshbuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @ssh_digest_update(%struct.ssh_digest_ctx* %55, i8* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %54
  %61 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %62 = call i64 @ssh_digest_update(%struct.ssh_digest_ctx* %61, i8* %18, i64 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %60
  %65 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %66 = load %struct.kex*, %struct.kex** %16, align 8
  %67 = getelementptr inbounds %struct.kex, %struct.kex* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.kex*, %struct.kex** %16, align 8
  %70 = getelementptr inbounds %struct.kex, %struct.kex* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @ssh_digest_update(%struct.ssh_digest_ctx* %65, i8* %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %76 = load i8*, i8** %21, align 8
  %77 = load i64, i64* %20, align 8
  %78 = call i64 @ssh_digest_final(%struct.ssh_digest_ctx* %75, i8* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %64, %60, %54, %49, %43
  %81 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %81, i32* %22, align 4
  br label %133

82:                                               ; preds = %74
  %83 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %84 = call i32 @ssh_digest_free(%struct.ssh_digest_ctx* %83)
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %17, align 8
  %85 = load i64, i64* %20, align 8
  store i64 %85, i64* %19, align 8
  br label %86

86:                                               ; preds = %126, %82
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %19, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %86
  %91 = load %struct.kex*, %struct.kex** %16, align 8
  %92 = getelementptr inbounds %struct.kex, %struct.kex* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.ssh_digest_ctx* @ssh_digest_start(i32 %93)
  store %struct.ssh_digest_ctx* %94, %struct.ssh_digest_ctx** %17, align 8
  %95 = icmp eq %struct.ssh_digest_ctx* %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %90
  %97 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %98 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %99 = call i64 @ssh_digest_update_buffer(%struct.ssh_digest_ctx* %97, %struct.sshbuf* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %96
  %102 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i64 @ssh_digest_update(%struct.ssh_digest_ctx* %102, i8* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %101
  %108 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = load i64, i64* %19, align 8
  %111 = call i64 @ssh_digest_update(%struct.ssh_digest_ctx* %108, i8* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %107
  %114 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = load i64, i64* %19, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i64, i64* %20, align 8
  %119 = call i64 @ssh_digest_final(%struct.ssh_digest_ctx* %114, i8* %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113, %107, %101, %96, %90
  %122 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %122, i32* %22, align 4
  br label %133

123:                                              ; preds = %113
  %124 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %125 = call i32 @ssh_digest_free(%struct.ssh_digest_ctx* %124)
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %17, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %19, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %19, align 8
  br label %86

130:                                              ; preds = %86
  %131 = load i8*, i8** %21, align 8
  %132 = load i8**, i8*** %15, align 8
  store i8* %131, i8** %132, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  br label %133

133:                                              ; preds = %130, %121, %80, %41
  %134 = load i8*, i8** %21, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %17, align 8
  %137 = call i32 @ssh_digest_free(%struct.ssh_digest_ctx* %136)
  %138 = load i32, i32* %22, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %133, %33
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ROUNDUP(i64, i64) #1

declare dso_local %struct.ssh_digest_ctx* @ssh_digest_start(i32) #1

declare dso_local i64 @ssh_digest_update_buffer(%struct.ssh_digest_ctx*, %struct.sshbuf*) #1

declare dso_local i64 @ssh_digest_update(%struct.ssh_digest_ctx*, i8*, i64) #1

declare dso_local i64 @ssh_digest_final(%struct.ssh_digest_ctx*, i8*, i64) #1

declare dso_local i32 @ssh_digest_free(%struct.ssh_digest_ctx*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
