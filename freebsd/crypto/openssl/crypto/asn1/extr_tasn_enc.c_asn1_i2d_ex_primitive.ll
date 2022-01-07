; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_enc.c_asn1_i2d_ex_primitive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_enc.c_asn1_i2d_ex_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_SET = common dso_local global i32 0, align 4
@V_ASN1_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, %struct.TYPE_4__*, i32, i32)* @asn1_i2d_ex_primitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_i2d_ex_primitive(i32** %0, i8** %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32**, i32*** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = call i32 @asn1_ex_i2c(i32** %19, i8* null, i32* %13, %struct.TYPE_4__* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @V_ASN1_SET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @V_ASN1_OTHER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %5
  store i32 0, i32* %14, align 4
  br label %35

34:                                               ; preds = %29
  store i32 1, i32* %14, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %89

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, -2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 2, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ASN1_put_object(i8** %55, i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32**, i32*** %7, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = call i32 @asn1_ex_i2c(i32** %62, i8* %64, i32* %13, %struct.TYPE_4__* %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i8**, i8*** %8, align 8
  %71 = call i32 @ASN1_put_eoc(i8** %70)
  br label %78

72:                                               ; preds = %61
  %73 = load i32, i32* %12, align 4
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %74, align 8
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %48
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ASN1_object_size(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %82, %38
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @asn1_ex_i2c(i32**, i8*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ASN1_put_object(i8**, i32, i32, i32, i32) #1

declare dso_local i32 @ASN1_put_eoc(i8**) #1

declare dso_local i32 @ASN1_object_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
