; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_allowed_enctypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_allowed_enctypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64* }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64*, %struct.TYPE_5__*)* @allowed_enctypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allowed_enctypes(i64* %0, i32 %1, i64* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i64* null, i64** %14, align 8
  store i32* null, i32** %15, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %4
  %26 = load i64*, i64** %6, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %27, i64* %5, align 8
  br label %126

28:                                               ; preds = %20
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %16, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i64*, i64** %6, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %39, i64* %10, align 8
  br label %112

40:                                               ; preds = %28
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  %48 = mul i64 %47, 4
  %49 = call i64* @malloc(i64 %48)
  store i64* %49, i64** %14, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i64, i64* @ENOMEM, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %55, i64* %10, align 8
  br label %112

56:                                               ; preds = %40
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @krb5_storage_from_mem(i32 %59, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i64, i64* @ENOMEM, align 8
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %69, i64* %10, align 8
  br label %112

70:                                               ; preds = %56
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32*, i32** %15, align 8
  %77 = call i64 @krb5_ret_uint32(i32* %76, i64* %17)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i64, i64* %11, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %83, i64* %10, align 8
  br label %112

84:                                               ; preds = %75
  %85 = load i64, i64* %17, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %13, align 8
  br label %71

92:                                               ; preds = %71
  %93 = load i64*, i64** %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @free(i64* %103)
  br label %105

105:                                              ; preds = %100, %92
  %106 = load i64*, i64** %14, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i64* %106, i64** %108, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @krb5_storage_free(i32* %109)
  %111 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %111, i64* %5, align 8
  br label %126

112:                                              ; preds = %80, %66, %52, %37
  %113 = load i32*, i32** %15, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @krb5_storage_free(i32* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64*, i64** %14, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64*, i64** %14, align 8
  %123 = call i32 @free(i64* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %124, %105, %25
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32* @krb5_storage_from_mem(i32, i32) #1

declare dso_local i64 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
