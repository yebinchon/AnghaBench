; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_old_entry_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_old_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@bio_err = common dso_local global i32 0, align 4
@V_ASN1_PRINTABLESTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"PRINTABLE:'\00", align 1
@V_ASN1_T61STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"T61STRING:'\00", align 1
@V_ASN1_IA5STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"IA5STRING:'\00", align 1
@V_ASN1_UNIVERSALSTRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"UNIVERSALSTRING:'\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ASN.1 %2d:'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\\0x%02X\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"^%c\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @old_entry_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_entry_print(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* @bio_err, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @i2a_ASN1_OBJECT(i32 %9, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 22, %13
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %21, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  store i8 32, i8* %19, align 1
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  br label %15

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  store i8 58, i8* %25, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 0, i8* %27, align 1
  %29 = load i32, i32* @bio_err, align 4
  %30 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %31 = call i32 @BIO_puts(i32 %29, i8* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V_ASN1_PRINTABLESTRING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @bio_err, align 4
  %39 = call i32 (i32, i8*, ...) @BIO_printf(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %76

40:                                               ; preds = %24
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V_ASN1_T61STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @bio_err, align 4
  %48 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %75

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V_ASN1_IA5STRING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %74

58:                                               ; preds = %49
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V_ASN1_UNIVERSALSTRING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @bio_err, align 4
  %66 = call i32 (i32, i8*, ...) @BIO_printf(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @bio_err, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %135, %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %138

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 32
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sle i32 %95, 126
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @bio_err, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 (i32, i8*, ...) @BIO_printf(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %132

103:                                              ; preds = %92, %87
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 128
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @bio_err, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 (i32, i8*, ...) @BIO_printf(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %131

115:                                              ; preds = %103
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 247
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @bio_err, align 4
  %122 = call i32 (i32, i8*, ...) @BIO_printf(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %130

123:                                              ; preds = %115
  %124 = load i32, i32* @bio_err, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = add nsw i32 %127, 64
  %129 = call i32 (i32, i8*, ...) @BIO_printf(i32 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %123, %120
  br label %131

131:                                              ; preds = %130, %109
  br label %132

132:                                              ; preds = %131, %97
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %8, align 4
  br label %84

138:                                              ; preds = %84
  %139 = load i32, i32* @bio_err, align 4
  %140 = call i32 (i32, i8*, ...) @BIO_printf(i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @i2a_ASN1_OBJECT(i32, i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
