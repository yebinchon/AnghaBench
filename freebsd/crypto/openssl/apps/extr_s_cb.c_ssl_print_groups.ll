; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"groups to print\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Supported Elliptic Groups: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@TLSEXT_nid_unknown = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\0AShared Elliptic groups: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_print_groups(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @SSL_get1_groups(i32* %13, i32* null)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %120

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32* @app_malloc(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @SSL_get1_groups(i32* %24, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @BIO_puts(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %67, %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @BIO_puts(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TLSEXT_nid_unknown, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 65535
  %53 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %66

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = call i8* @EC_curve_nid2nist(i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @OBJ_nid2sn(i32 %60)
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @OPENSSL_free(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @BIO_puts(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %120

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @BIO_puts(i32* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @SSL_get_shared_group(i32* %81, i32 -1)
  store i32 %82, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %108, %78
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @BIO_puts(i32* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @SSL_get_shared_group(i32* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @EC_curve_nid2nist(i32 %97)
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @OBJ_nid2sn(i32 %102)
  store i8* %103, i8** %12, align 8
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32*, i32** %5, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @BIO_puts(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @BIO_puts(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %75, %17
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @SSL_get1_groups(i32*, i32*) #1

declare dso_local i32* @app_malloc(i32, i8*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i8* @EC_curve_nid2nist(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @SSL_get_shared_group(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
