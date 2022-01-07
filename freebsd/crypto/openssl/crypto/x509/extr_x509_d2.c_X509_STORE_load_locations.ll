; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_load_locations.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_load_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_PEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_load_locations(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 (...) @X509_LOOKUP_file()
  %14 = call i32* @X509_STORE_add_lookup(i32* %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %22 = call i32 @X509_LOOKUP_load_file(i32* %19, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %52

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 (...) @X509_LOOKUP_hash_dir()
  %32 = call i32* @X509_STORE_add_lookup(i32* %30, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %40 = call i32 @X509_LOOKUP_add_dir(i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %47, %44
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %42, %35, %24, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32 @X509_LOOKUP_load_file(i32*, i8*, i32) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i32 @X509_LOOKUP_add_dir(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
