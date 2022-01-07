; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_asn1_time_from_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_asn1_time_from_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@V_ASN1_UTCTIME = common dso_local global i32 0, align 4
@V_ASN1_GENERALIZEDTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%04d%02d%02d%02d%02d%02dZ\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%02d%02d%02d%02d%02d%02dZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @asn1_time_from_tm(%struct.TYPE_7__* %0, %struct.tm* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i64 20, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @V_ASN1_UNDEF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.tm*, %struct.tm** %6, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @is_utc(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @V_ASN1_UTCTIME, align 4
  store i32 %21, i32* %7, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @V_ASN1_GENERALIZEDTIME, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %44

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @V_ASN1_UTCTIME, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.tm*, %struct.tm** %6, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @is_utc(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %123

36:                                               ; preds = %29
  br label %43

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @V_ASN1_GENERALIZEDTIME, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %123

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = icmp eq %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call %struct.TYPE_7__* (...) @ASN1_STRING_new()
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %9, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %9, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %131

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = call i32 @ASN1_STRING_set(%struct.TYPE_7__* %56, i32* null, i64 20)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %123

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @V_ASN1_GENERALIZEDTIME, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %60
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.tm*, %struct.tm** %6, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1900
  %77 = load %struct.tm*, %struct.tm** %6, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = load %struct.tm*, %struct.tm** %6, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tm*, %struct.tm** %6, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tm*, %struct.tm** %6, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tm*, %struct.tm** %6, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @BIO_snprintf(i8* %72, i64 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76, i64 %80, i32 %83, i32 %86, i32 %89, i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %121

96:                                               ; preds = %60
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.tm*, %struct.tm** %6, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = srem i32 %100, 100
  %102 = load %struct.tm*, %struct.tm** %6, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  %106 = load %struct.tm*, %struct.tm** %6, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.tm*, %struct.tm** %6, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tm*, %struct.tm** %6, align 8
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.tm*, %struct.tm** %6, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @BIO_snprintf(i8* %97, i64 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %101, i64 %105, i32 %108, i32 %111, i32 %114, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %96, %71
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %4, align 8
  br label %131

123:                                              ; preds = %59, %41, %35
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = icmp ne %struct.TYPE_7__* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = call i32 @ASN1_STRING_free(%struct.TYPE_7__* %128)
  br label %130

130:                                              ; preds = %127, %123
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %131

131:                                              ; preds = %130, %121, %54
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i64 @is_utc(i32) #1

declare dso_local %struct.TYPE_7__* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i8* @BIO_snprintf(i8*, i64, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
