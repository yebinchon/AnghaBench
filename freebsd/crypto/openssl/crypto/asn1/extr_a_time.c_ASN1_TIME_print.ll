; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.tm = type { i64, i32, i32, i32, i32, i32 }

@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s %2d %02d:%02d:%02d%.*s %d%s\00", align 1
@_asn1_mon = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" GMT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s %2d %02d:%02d:%02d %d%s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_TIME_print(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %7, align 4
  store i8 90, i8* %10, align 1
  store i8 46, i8* %11, align 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i32 @asn1_time_to_tm(%struct.tm* %9, %struct.TYPE_4__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %126

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 90
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %35
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 15
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 14
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 14
  store i8* %54, i8** %12, align 8
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %70, %52
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 14, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @ascii_isdigit(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i1 [ false, %55 ], [ %67, %60 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %55

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %46, %41
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** @_asn1_mon, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1900
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %98 = call i64 (i32*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) @BIO_printf(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82, i32 %84, i32 %86, i32 %88, i32 %89, i8* %90, i32 %93, i8* %97)
  %99 = icmp sgt i64 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %129

101:                                              ; preds = %35
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** @_asn1_mon, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1900
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %123 = call i64 (i32*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) @BIO_printf(i32* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %118, i8* %122)
  %124 = icmp sgt i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %129

126:                                              ; preds = %17
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @BIO_write(i32* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %101, %74
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @asn1_time_to_tm(%struct.tm*, %struct.TYPE_4__*) #1

declare dso_local i64 @ascii_isdigit(i8 signext) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
