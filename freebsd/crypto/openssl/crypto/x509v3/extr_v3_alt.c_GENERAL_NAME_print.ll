; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_GENERAL_NAME_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_GENERAL_NAME_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"othername:<unsupported>\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"X400Name:<unsupported>\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EdiPartyName:<unsupported>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"email:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"DirName:\00", align 1
@XN_FLAG_ONELINE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"IP Address:%d.%d.%d.%d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IP Address\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c":%X\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"IP Address:<invalid>\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Registered ID:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GENERAL_NAME_print(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %138 [
    i32 131, label %10
    i32 128, label %13
    i32 134, label %16
    i32 133, label %19
    i32 135, label %28
    i32 129, label %37
    i32 136, label %46
    i32 132, label %56
    i32 130, label %129
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %138

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %138

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %138

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ASN1_STRING_print(i32* %22, i32 %26)
  br label %138

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ASN1_STRING_print(i32* %31, i32 %35)
  br label %138

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ASN1_STRING_print(i32* %40, i32 %44)
  br label %138

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @XN_FLAG_ONELINE, align 4
  %55 = call i32 @X509_NAME_print_ex(i32* %49, i32 %53, i32 0, i32 %54)
  br label %138

56:                                               ; preds = %2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %5, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %89

70:                                               ; preds = %56
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %75, i32 %79, i32 %83, i32 %87)
  br label %128

89:                                               ; preds = %56
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %97, label %124

97:                                               ; preds = %89
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %118, %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i32*, i32** %3, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl i32 %108, 8
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %109, %113
  %115 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @BIO_puts(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %127

124:                                              ; preds = %89
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %138

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %70
  br label %138

129:                                              ; preds = %2
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %132 = load i32*, i32** %3, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @i2a_ASN1_OBJECT(i32* %132, i32 %136)
  br label %138

138:                                              ; preds = %2, %129, %128, %124, %46, %37, %28, %19, %16, %13, %10
  ret i32 1
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @ASN1_STRING_print(i32*, i32) #1

declare dso_local i32 @X509_NAME_print_ex(i32*, i32, i32, i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @i2a_ASN1_OBJECT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
