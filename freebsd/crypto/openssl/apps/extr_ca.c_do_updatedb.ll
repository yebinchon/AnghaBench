; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_do_updatedb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_do_updatedb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"time string\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"49\00", align 1
@DB_type = common dso_local global i64 0, align 8
@DB_TYPE_VAL = common dso_local global i8 0, align 1
@DB_exp_date = common dso_local global i64 0, align 8
@DB_TYPE_EXP = common dso_local global i8 0, align 1
@bio_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s=Expired\0A\00", align 1
@DB_serial = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @do_updatedb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_updatedb(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call %struct.TYPE_10__* (...) @ASN1_UTCTIME_new()
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %153

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32* @X509_gmtime_adj(%struct.TYPE_10__* %16, i32 0)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @ASN1_UTCTIME_free(%struct.TYPE_10__* %20)
  store i32 -1, i32* %2, align 4
  br label %153

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i8* @app_malloc(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i8* %28, i32 %31, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %47

46:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %45
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %144, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sk_OPENSSL_PSTRING_num(i32 %54)
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %147

57:                                               ; preds = %48
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i8** @sk_OPENSSL_PSTRING_value(i32 %62, i32 %63)
  store i8** %64, i8*** %9, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = load i64, i64* @DB_type, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @DB_TYPE_VAL, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %143

75:                                               ; preds = %57
  %76 = load i8**, i8*** %9, align 8
  %77 = load i64, i64* @DB_exp_date, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strncmp(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i8**, i8*** %9, align 8
  %90 = load i64, i64* @DB_exp_date, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @strcmp(i8* %92, i8* %93)
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %88
  %97 = load i8, i8* @DB_TYPE_EXP, align 1
  %98 = load i8**, i8*** %9, align 8
  %99 = load i64, i64* @DB_type, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 %97, i8* %102, align 1
  %103 = load i8**, i8*** %9, align 8
  %104 = load i64, i64* @DB_type, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @bio_err, align 4
  %111 = load i8**, i8*** %9, align 8
  %112 = load i64, i64* @DB_serial, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @BIO_printf(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %96, %88
  br label %142

117:                                              ; preds = %84
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load i8, i8* @DB_TYPE_EXP, align 1
  %123 = load i8**, i8*** %9, align 8
  %124 = load i64, i64* @DB_type, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  store i8 %122, i8* %127, align 1
  %128 = load i8**, i8*** %9, align 8
  %129 = load i64, i64* @DB_type, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 0, i8* %132, align 1
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @bio_err, align 4
  %136 = load i8**, i8*** %9, align 8
  %137 = load i64, i64* @DB_serial, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @BIO_printf(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %121, %117
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %57
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %48

147:                                              ; preds = %48
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = call i32 @ASN1_UTCTIME_free(%struct.TYPE_10__* %148)
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @OPENSSL_free(i8* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %19, %14
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_10__* @ASN1_UTCTIME_new(...) #1

declare dso_local i32* @X509_gmtime_adj(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ASN1_UTCTIME_free(%struct.TYPE_10__*) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sk_OPENSSL_PSTRING_num(i32) #1

declare dso_local i8** @sk_OPENSSL_PSTRING_value(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
