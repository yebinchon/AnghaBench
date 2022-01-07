; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ed25519.c_ssh_ed25519_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ed25519.c_ssh_ed25519_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }
%struct.sshbuf = type { i32 }

@KEY_ED25519 = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@crypto_sign_ed25519_BYTES = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ssh-ed25519\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_ed25519_sign(%struct.sshkey* %0, i32** %1, i64* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sshbuf*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %20, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i64*, i64** %10, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i32**, i32*** %9, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32**, i32*** %9, align 8
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %32 = icmp eq %struct.sshkey* %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %35 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @sshkey_type_plain(i32 %36)
  %38 = load i64, i64* @KEY_ED25519, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %42 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @INT_MAX, align 8
  %48 = load i64, i64* @crypto_sign_ed25519_BYTES, align 8
  %49 = sub i64 %47, %48
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %40, %33, %30
  %52 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %52, i32* %7, align 4
  br label %134

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @crypto_sign_ed25519_BYTES, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %15, align 8
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i32* @malloc(i64 %57)
  store i32* %58, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %61, i32* %7, align 4
  br label %134

62:                                               ; preds = %53
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %67 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @crypto_sign_ed25519(i32* %63, i64* %17, i32* %64, i64 %65, i32* %68)
  store i32 %69, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %62
  %76 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %76, i32* %18, align 4
  br label %121

77:                                               ; preds = %71
  %78 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %78, %struct.sshbuf** %20, align 8
  %79 = icmp eq %struct.sshbuf* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %81, i32* %18, align 4
  br label %121

82:                                               ; preds = %77
  %83 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %84 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %12, align 8
  %91 = sub i64 %89, %90
  %92 = call i32 @sshbuf_put_string(%struct.sshbuf* %87, i32* %88, i64 %91)
  store i32 %92, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86, %82
  br label %121

95:                                               ; preds = %86
  %96 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %97 = call i64 @sshbuf_len(%struct.sshbuf* %96)
  store i64 %97, i64* %16, align 8
  %98 = load i32**, i32*** %9, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i64, i64* %16, align 8
  %102 = call i32* @malloc(i64 %101)
  %103 = load i32**, i32*** %9, align 8
  store i32* %102, i32** %103, align 8
  %104 = icmp eq i32* %102, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %106, i32* %18, align 4
  br label %121

107:                                              ; preds = %100
  %108 = load i32**, i32*** %9, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %111 = call i32 @sshbuf_ptr(%struct.sshbuf* %110)
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @memcpy(i32* %109, i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %107, %95
  %115 = load i64*, i64** %10, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %16, align 8
  %119 = load i64*, i64** %10, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %120, %105, %94, %80, %75
  %122 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %123 = call i32 @sshbuf_free(%struct.sshbuf* %122)
  %124 = load i32*, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32*, i32** %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @explicit_bzero(i32* %127, i64 %128)
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @free(i32* %130)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %132, %60, %51
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i64 @sshkey_type_plain(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @crypto_sign_ed25519(i32*, i64*, i32*, i64, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
