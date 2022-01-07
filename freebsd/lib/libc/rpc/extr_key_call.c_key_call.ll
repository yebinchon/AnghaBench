; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@KEY_ENCRYPT_PK = common dso_local global i32 0, align 4
@KEY_DECRYPT_PK = common dso_local global i32 0, align 4
@KEY_GEN = common dso_local global i32 0, align 4
@KEY_NET_GET = common dso_local global i32 0, align 4
@KEY_NET_PUT = common dso_local global i32 0, align 4
@KEY_GET_CONV = common dso_local global i32 0, align 4
@TOTAL_TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i8*)* @key_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_call(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @KEY_ENCRYPT_PK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  br i1 true, label %21, label %29

21:                                               ; preds = %20
  %22 = call i32 (...) @geteuid()
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @__key_encryptsession_pk_LOCAL(i32 %22, i8* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %6, align 4
  br label %99

29:                                               ; preds = %20, %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @KEY_DECRYPT_PK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  br i1 true, label %34, label %42

34:                                               ; preds = %33
  %35 = call i32 (...) @geteuid()
  %36 = load i8*, i8** %9, align 8
  %37 = call i32* @__key_decryptsession_pk_LOCAL(i32 %35, i8* %36)
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 4
  store i32 1, i32* %6, align 4
  br label %99

42:                                               ; preds = %33, %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @KEY_GEN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  br i1 true, label %47, label %54

47:                                               ; preds = %46
  %48 = call i32 (...) @geteuid()
  %49 = call i32* @__key_gendes_LOCAL(i32 %48, i32 0)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to i32*
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %6, align 4
  br label %99

54:                                               ; preds = %46, %42
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @KEY_ENCRYPT_PK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @KEY_DECRYPT_PK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @KEY_NET_GET, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @KEY_NET_PUT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @KEY_GET_CONV, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68, %64, %60, %56
  %77 = call i32* @getkeyserv_handle(i32 2)
  store i32* %77, i32** %12, align 8
  br label %80

78:                                               ; preds = %72
  %79 = call i32* @getkeyserv_handle(i32 1)
  store i32* %79, i32** %12, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i32*, i32** %12, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %99

84:                                               ; preds = %80
  %85 = load i32, i32* @TOTAL_TIMEOUT, align 4
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = call i64 @clnt_call(i32* %88, i32 %89, i32 %90, i8* %91, i32 %92, i8* %93, %struct.timeval* byval(%struct.timeval) align 8 %13)
  %95 = load i64, i64* @RPC_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %99

98:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %97, %83, %47, %34, %21
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32* @__key_encryptsession_pk_LOCAL(i32, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32* @__key_decryptsession_pk_LOCAL(i32, i8*) #1

declare dso_local i32* @__key_gendes_LOCAL(i32, i32) #1

declare dso_local i32* @getkeyserv_handle(i32) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
