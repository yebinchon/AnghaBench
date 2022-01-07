; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_TS_TST_INFO_print_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_TS_TST_INFO_print_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i64, i32*, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Policy OID: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Serial number: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Time stamp: \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Accuracy: \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Ordering: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Nonce: \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"TSA: \00", align 1
@CONF_VALUE = common dso_local global i32 0, align 4
@nval = common dso_local global i32 0, align 4
@X509V3_conf_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_TST_INFO_print_bio(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ASN1_INTEGER_get(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TS_OBJ_print_bio(i32* %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @TS_MSG_IMPRINT_print_bio(i32* %25, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %10
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %45

39:                                               ; preds = %10
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @TS_ASN1_INTEGER_print_bio(i32* %40, i32* %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @BIO_write(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @BIO_write(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %72

66:                                               ; preds = %45
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ts_ACCURACY_print_bio(i32* %67, i32* %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @BIO_write(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %82 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %72
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %98

92:                                               ; preds = %72
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @TS_ASN1_INTEGER_print_bio(i32* %93, i32* %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @BIO_write(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %128

110:                                              ; preds = %98
  %111 = load i32, i32* @CONF_VALUE, align 4
  %112 = call i32 @STACK_OF(i32 %111)
  %113 = load i32, i32* @nval, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @i2v_GENERAL_NAME(i32* null, i32* %117, i32* null)
  store i32 %118, i32* @nval, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @nval, align 4
  %123 = call i32 @X509V3_EXT_val_prn(i32* %121, i32 %122, i32 0, i32 0)
  br label %124

124:                                              ; preds = %120, %110
  %125 = load i32, i32* @nval, align 4
  %126 = load i32, i32* @X509V3_conf_free, align 4
  %127 = call i32 @sk_CONF_VALUE_pop_free(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %107
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @BIO_write(i32* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @TS_ext_print_bio(i32* %131, i32 %134)
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %128, %9
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ASN1_INTEGER_get(i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @TS_OBJ_print_bio(i32*, i32) #1

declare dso_local i32 @TS_MSG_IMPRINT_print_bio(i32*, i32) #1

declare dso_local i32 @TS_ASN1_INTEGER_print_bio(i32*, i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, i32) #1

declare dso_local i32 @ts_ACCURACY_print_bio(i32*, i32*) #1

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @i2v_GENERAL_NAME(i32*, i32*, i32*) #1

declare dso_local i32 @X509V3_EXT_val_prn(i32*, i32, i32, i32) #1

declare dso_local i32 @sk_CONF_VALUE_pop_free(i32, i32) #1

declare dso_local i32 @TS_ext_print_bio(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
