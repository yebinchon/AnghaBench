; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_X509_cmp_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_X509_cmp_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8* }

@X509_cmp_time.utctime_length = internal constant i64 13, align 8
@X509_cmp_time.generalizedtime_length = internal constant i64 15, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_cmp_time(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %10, align 4
  store i8 90, i8* %11, align 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %29 [
    i32 128, label %15
    i32 129, label %22
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 13
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %93

21:                                               ; preds = %15
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 15
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %93

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

30:                                               ; preds = %28, %21
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @ascii_isdigit(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %93

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 90
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %93

67:                                               ; preds = %53
  %68 = load i32*, i32** %5, align 8
  %69 = call %struct.TYPE_7__* @X509_time_adj(i32* null, i32 0, i32* %68)
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = icmp eq %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %89

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = call i32 @ASN1_TIME_diff(i32* %8, i32* %9, %struct.TYPE_7__* %74, %struct.TYPE_7__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i1 [ false, %79 ], [ %84, %82 ]
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 -1, i32 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %78, %72
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = call i32 @ASN1_TIME_free(%struct.TYPE_7__* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %66, %48, %29, %27, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ascii_isdigit(i8 signext) #1

declare dso_local %struct.TYPE_7__* @X509_time_adj(i32*, i32, i32*) #1

declare dso_local i32 @ASN1_TIME_diff(i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @ASN1_TIME_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
