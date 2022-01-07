; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_getcert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_getcert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"commonName\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@MBSTRING_ASC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @getcert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getcert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = call i32* (...) @getkey()
  store i32* %7, i32** %4, align 8
  %8 = call i64 @time(i32* null)
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = call i32 @tt_assert(i32 %10)
  %12 = call i32* (...) @X509_new()
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @tt_assert(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @X509_set_version(i32* %16, i32 2)
  %18 = icmp ne i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @tt_assert(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @X509_get_serialNumber(i32* %21)
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @ASN1_INTEGER_set(i32 %22, i64 %23)
  %25 = icmp ne i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @tt_assert(i32 %26)
  %28 = call i32* (...) @X509_NAME_new()
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @tt_assert(i32 %30)
  %32 = call i32 @OBJ_txt2nid(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @NID_undef, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @tt_assert(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MBSTRING_ASC, align 4
  %41 = call i64 @X509_NAME_add_entry_by_NID(i32* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1, i32 0)
  %42 = icmp ne i64 0, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @tt_assert(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @X509_set_subject_name(i32* %45, i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @X509_set_issuer_name(i32* %48, i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @X509_get_notBefore(i32* %51)
  %53 = call i32 @X509_time_adj(i32 %52, i32 0, i64* %6)
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, 3600
  store i64 %55, i64* %6, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @X509_get_notAfter(i32* %56)
  %58 = call i32 @X509_time_adj(i32 %57, i32 0, i64* %6)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @X509_set_pubkey(i32* %59, i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (...) @EVP_sha1()
  %65 = call i64 @X509_sign(i32* %62, i32* %63, i32 %64)
  %66 = icmp ne i64 0, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @tt_assert(i32 %67)
  %69 = load i32*, i32** %2, align 8
  store i32* %69, i32** %1, align 8
  br label %73

70:                                               ; No predecessors!
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @X509_free(i32* %71)
  store i32* null, i32** %1, align 8
  br label %73

73:                                               ; preds = %70, %0
  %74 = load i32*, i32** %1, align 8
  ret i32* %74
}

declare dso_local i32* @getkey(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32* @X509_new(...) #1

declare dso_local i64 @X509_set_version(i32*, i32) #1

declare dso_local i64 @ASN1_INTEGER_set(i32, i64) #1

declare dso_local i32 @X509_get_serialNumber(i32*) #1

declare dso_local i32* @X509_NAME_new(...) #1

declare dso_local i32 @OBJ_txt2nid(i8*) #1

declare dso_local i64 @X509_NAME_add_entry_by_NID(i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @X509_set_subject_name(i32*, i32*) #1

declare dso_local i32 @X509_set_issuer_name(i32*, i32*) #1

declare dso_local i32 @X509_time_adj(i32, i32, i64*) #1

declare dso_local i32 @X509_get_notBefore(i32*) #1

declare dso_local i32 @X509_get_notAfter(i32*) #1

declare dso_local i32 @X509_set_pubkey(i32*, i32*) #1

declare dso_local i64 @X509_sign(i32*, i32*, i32) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
