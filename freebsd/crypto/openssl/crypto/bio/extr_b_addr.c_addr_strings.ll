; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_addr_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_addr_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@BIO_F_ADDR_STRINGS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@SYS_F_GETNAMEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8**, i8**)* @addr_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_strings(%struct.TYPE_8__* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [6 x i8], align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = call i32 (...) @BIO_sock_init()
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

14:                                               ; preds = %4
  %15 = load i8**, i8*** %8, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @inet_ntoa(i32 %21)
  %23 = call i8* @OPENSSL_strdup(i8* %22)
  %24 = load i8**, i8*** %8, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = call i32 @BIO_snprintf(i8* %29, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %37 = call i8* @OPENSSL_strdup(i8* %36)
  %38 = load i8**, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i8**, i8*** %8, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %39
  %47 = load i8**, i8*** %9, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load i8**, i8*** %9, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %49, %42
  %54 = load i8**, i8*** %8, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @OPENSSL_free(i8* %58)
  %60 = load i8**, i8*** %8, align 8
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i8**, i8*** %9, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8**, i8*** %9, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i8**, i8*** %9, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @BIO_F_ADDR_STRINGS, align 4
  %71 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %72 = call i32 @BIOerr(i32 %70, i32 %71)
  store i32 0, i32* %5, align 4
  br label %74

73:                                               ; preds = %49, %46
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %69, %13
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
