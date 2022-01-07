; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_conf.c_cmd_ECDHParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_conf.c_cmd_ECDHParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@SSL_CONF_FLAG_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"+automatic\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@SSL_CONF_FLAG_CMDLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @cmd_ECDHParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_ECDHParameters(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SSL_CONF_FLAG_FILE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i32 1, i32* %3, align 4
  br label %84

24:                                               ; preds = %19, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SSL_CONF_FLAG_CMDLINE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %84

36:                                               ; preds = %31, %24
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @EC_curve_nist2nid(i8* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NID_undef, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @OBJ_sn2nid(i8* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %84

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @EC_KEY_new_by_curve_name(i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %84

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @SSL_CTX_set_tmp_ecdh(i64 %63, i32* %64)
  store i32 %65, i32* %6, align 4
  br label %78

66:                                               ; preds = %55
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @SSL_set_tmp_ecdh(i64 %74, i32* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @EC_KEY_free(i32* %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 0
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %54, %48, %35, %23
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @SSL_CTX_set_tmp_ecdh(i64, i32*) #1

declare dso_local i32 @SSL_set_tmp_ecdh(i64, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
