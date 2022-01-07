; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@FT_general = common dso_local global i32 0, align 4
@FT_md = common dso_local global i32 0, align 4
@list_md_fn = common dso_local global i32 0, align 4
@bio_out = common dso_local global i32 0, align 4
@FT_cipher = common dso_local global i32 0, align 4
@list_cipher_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* @list_options, align 4
  %13 = call i8* @opt_init(i32 %10, i8** %11, i32 %12)
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %59, %2
  %15 = call i32 (...) @opt_next()
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 135
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %59 [
    i32 135, label %19
    i32 134, label %19
    i32 133, label %24
    i32 131, label %27
    i32 139, label %28
    i32 137, label %32
    i32 138, label %36
    i32 140, label %40
    i32 141, label %44
    i32 129, label %48
    i32 128, label %50
    i32 136, label %52
    i32 132, label %54
    i32 130, label %56
  ]

19:                                               ; preds = %17, %17
  br label %20

20:                                               ; preds = %69, %63, %19
  %21 = load i32, i32* @bio_err, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i32, i8*, ...) @BIO_printf(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %71

24:                                               ; preds = %17
  %25 = load i32, i32* @list_options, align 4
  %26 = call i32 @opt_help(i32 %25)
  br label %59

27:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %59

28:                                               ; preds = %17
  %29 = load i32, i32* @FT_general, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @list_type(i32 %29, i32 %30)
  br label %59

32:                                               ; preds = %17
  %33 = load i32, i32* @FT_md, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @list_type(i32 %33, i32 %34)
  br label %59

36:                                               ; preds = %17
  %37 = load i32, i32* @list_md_fn, align 4
  %38 = load i32, i32* @bio_out, align 4
  %39 = call i32 @EVP_MD_do_all_sorted(i32 %37, i32 %38)
  br label %59

40:                                               ; preds = %17
  %41 = load i32, i32* @FT_cipher, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @list_type(i32 %41, i32 %42)
  br label %59

44:                                               ; preds = %17
  %45 = load i32, i32* @list_cipher_fn, align 4
  %46 = load i32, i32* @bio_out, align 4
  %47 = call i32 @EVP_CIPHER_do_all_sorted(i32 %45, i32 %46)
  br label %59

48:                                               ; preds = %17
  %49 = call i32 (...) @list_pkey()
  br label %59

50:                                               ; preds = %17
  %51 = call i32 (...) @list_pkey_meth()
  br label %59

52:                                               ; preds = %17
  %53 = call i32 (...) @list_disabled()
  br label %59

54:                                               ; preds = %17
  %55 = call i32 (...) @list_missing_help()
  br label %59

56:                                               ; preds = %17
  %57 = call i32 (...) @opt_arg()
  %58 = call i32 @list_options_for_command(i32 %57)
  br label %59

59:                                               ; preds = %17, %56, %54, %52, %50, %48, %44, %40, %36, %32, %28, %27, %24
  store i32 1, i32* %9, align 4
  br label %14

60:                                               ; preds = %14
  %61 = call i64 (...) @opt_num_rest()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @bio_err, align 4
  %65 = call i32 (i32, i8*, ...) @BIO_printf(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %20

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %20

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @list_type(i32, i32) #1

declare dso_local i32 @EVP_MD_do_all_sorted(i32, i32) #1

declare dso_local i32 @EVP_CIPHER_do_all_sorted(i32, i32) #1

declare dso_local i32 @list_pkey(...) #1

declare dso_local i32 @list_pkey_meth(...) #1

declare dso_local i32 @list_disabled(...) #1

declare dso_local i32 @list_missing_help(...) #1

declare dso_local i32 @list_options_for_command(i32) #1

declare dso_local i32 @opt_arg(...) #1

declare dso_local i64 @opt_num_rest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
