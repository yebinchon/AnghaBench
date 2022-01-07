; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_asn1pars.c_do_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_asn1pars.c_do_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"asn1\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't find 'asn1' in '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_4__*)* @do_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_generate(i8* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @app_load_config(i8* %15)
  store i32* %16, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %64

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @NCONF_get_string(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @bio_err, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @BIO_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %64

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @ASN1_generate_nconf(i8* %34, i32* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @NCONF_free(i32* %37)
  store i32* null, i32** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %69

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @i2d_ASN1_TYPE(i32* %43, i8** null)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %64

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BUF_MEM_grow(%struct.TYPE_4__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %64

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @i2d_ASN1_TYPE(i32* %59, i8** %10)
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @ASN1_TYPE_free(i32* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %53, %47, %28, %18
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @NCONF_free(i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ASN1_TYPE_free(i32* %67)
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %54, %41
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @app_load_config(i8*) #1

declare dso_local i8* @NCONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32* @ASN1_generate_nconf(i8*, i32*) #1

declare dso_local i32 @NCONF_free(i32*) #1

declare dso_local i32 @i2d_ASN1_TYPE(i32*, i8**) #1

declare dso_local i32 @BUF_MEM_grow(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
