; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_wrap_size_cfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_wrap_size_cfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gssapi_wrap_size_cfx(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %99

25:                                               ; preds = %7
  %26 = load i32, i32* %14, align 4
  %27 = sub nsw i32 %26, 16
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %17, align 8
  br label %34

34:                                               ; preds = %51, %30
  %35 = load i64, i64* %17, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %17, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %17, align 8
  %42 = call i64 @krb5_get_wrapped_length(i32 %37, i32 %40, i64 %41)
  store i64 %42, i64* %18, align 8
  br label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %17, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, i64* %18, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %47, %49
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %34, label %53

53:                                               ; preds = %51
  %54 = load i64, i64* %17, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %99

57:                                               ; preds = %53
  %58 = load i64, i64* %17, align 8
  %59 = icmp ult i64 %58, 16
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %99

61:                                               ; preds = %57
  %62 = load i64, i64* %17, align 8
  %63 = sub i64 %62, 16
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  br label %98

67:                                               ; preds = %25
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @krb5_crypto_get_checksum_type(i32 %68, i32 %71, i32* %19)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %8, align 4
  br label %99

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @krb5_checksumsize(i32 %78, i32 %79, i64* %20)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %8, align 4
  br label %99

85:                                               ; preds = %77
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %20, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %20, align 8
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %61
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %90, %83, %75, %60, %56, %24
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i64 @krb5_get_wrapped_length(i32, i32, i64) #1

declare dso_local i32 @krb5_crypto_get_checksum_type(i32, i32, i32*) #1

declare dso_local i32 @krb5_checksumsize(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
