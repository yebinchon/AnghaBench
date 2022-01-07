; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_do_check_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_do_check_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32 (i8*, i32, i8*, i64, i32)*, i32, i8*, i64, i8**)* @do_check_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_check_string(%struct.TYPE_4__* %0, i32 %1, i32 (i8*, i32, i8*, i64, i32)* %2, i32 %3, i8* %4, i64 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*, i32, i8*, i64, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 (i8*, i32, i8*, i64, i32)* %2, i32 (i8*, i32, i8*, i64, i32)** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %7
  store i32 0, i32* %8, align 4
  br label %117

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %117

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @V_ASN1_IA5STRING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32 (i8*, i32, i8*, i64, i32)*, i32 (i8*, i32, i8*, i64, i32)** %11, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 %44(i8* %47, i32 %50, i8* %51, i64 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  br label %72

55:                                               ; preds = %39
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @memcmp(i8* %65, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %70, %62, %55
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %16, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i8**, i8*** %15, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @OPENSSL_strndup(i8* %81, i32 %84)
  %86 = load i8**, i8*** %15, align 8
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %78, %75, %72
  br label %115

88:                                               ; preds = %29
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = call i32 @ASN1_STRING_to_UTF8(i8** %18, %struct.TYPE_4__* %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 -1, i32* %8, align 4
  br label %117

94:                                               ; preds = %88
  %95 = load i32 (i8*, i32, i8*, i64, i32)*, i32 (i8*, i32, i8*, i64, i32)** %11, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 %95(i8* %96, i32 %97, i8* %98, i64 %99, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load i8**, i8*** %15, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8*, i8** %18, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i8* @OPENSSL_strndup(i8* %108, i32 %109)
  %111 = load i8**, i8*** %15, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %104, %94
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @OPENSSL_free(i8* %113)
  br label %115

115:                                              ; preds = %112, %87
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %115, %93, %38, %28
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @OPENSSL_strndup(i8*, i32) #1

declare dso_local i32 @ASN1_STRING_to_UTF8(i8**, %struct.TYPE_4__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
