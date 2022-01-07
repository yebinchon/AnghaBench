; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROOT_ANCHOR_FILE = common dso_local global i8* null, align 8
@ROOT_CERT_FILE = common dso_local global i8* null, align 8
@URLNAME = common dso_local global i8* null, align 8
@XMLNAME = common dso_local global i8* null, align 8
@P7SNAME = common dso_local global i8* null, align 8
@P7SIGNER = common dso_local global i8* null, align 8
@HTTPS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"46C:FRP:a:c:f:hln:r:s:u:vx:\00", align 1
@optarg = common dso_local global i8* null, align 8
@verb = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i8*, i8** @ROOT_ANCHOR_FILE, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** @ROOT_CERT_FILE, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** @URLNAME, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** @XMLNAME, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** @P7SNAME, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** @P7SIGNER, align 8
  store i8* %27, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* @HTTPS_PORT, align 4
  store i32 %28, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %68, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %66 [
    i32 108, label %36
    i32 52, label %37
    i32 54, label %38
    i32 97, label %39
    i32 99, label %41
    i32 117, label %43
    i32 120, label %45
    i32 115, label %47
    i32 110, label %49
    i32 102, label %51
    i32 114, label %53
    i32 82, label %55
    i32 67, label %56
    i32 70, label %58
    i32 80, label %59
    i32 118, label %62
    i32 63, label %65
    i32 104, label %65
  ]

36:                                               ; preds = %34
  store i32 1, i32* %16, align 4
  br label %68

37:                                               ; preds = %34
  store i32 1, i32* %17, align 4
  br label %68

38:                                               ; preds = %34
  store i32 1, i32* %18, align 4
  br label %68

39:                                               ; preds = %34
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %7, align 8
  br label %68

41:                                               ; preds = %34
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %8, align 8
  br label %68

43:                                               ; preds = %34
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** %9, align 8
  br label %68

45:                                               ; preds = %34
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %10, align 8
  br label %68

47:                                               ; preds = %34
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** %11, align 8
  br label %68

49:                                               ; preds = %34
  %50 = load i8*, i8** @optarg, align 8
  store i8* %50, i8** %12, align 8
  br label %68

51:                                               ; preds = %34
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** %13, align 8
  br label %68

53:                                               ; preds = %34
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %14, align 8
  br label %68

55:                                               ; preds = %34
  store i32 1, i32* %21, align 4
  br label %68

56:                                               ; preds = %34
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** %15, align 8
  br label %68

58:                                               ; preds = %34
  store i32 1, i32* %19, align 4
  br label %68

59:                                               ; preds = %34
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @atoi(i8* %60)
  store i32 %61, i32* %20, align 4
  br label %68

62:                                               ; preds = %34
  %63 = load i32, i32* @verb, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @verb, align 4
  br label %68

65:                                               ; preds = %34, %34
  br label %66

66:                                               ; preds = %34, %65
  %67 = call i32 (...) @usage()
  br label %68

68:                                               ; preds = %66, %62, %59, %58, %56, %55, %53, %51, %49, %47, %45, %43, %41, %39, %38, %37, %36
  br label %29

69:                                               ; preds = %29
  %70 = load i64, i64* @optind, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %69
  %80 = call i32 (...) @ERR_load_SSL_strings()
  %81 = call i32 (...) @OpenSSL_add_all_algorithms()
  %82 = call i32 (...) @SSL_library_init()
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (...) @do_list_builtin()
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @do_root_update_work(i8* %88, i8* %89, i8* %90, i8* %91, i8* %92, i8* %93, i8* %94, i8* %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  ret i32 %102
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ERR_load_SSL_strings(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @do_list_builtin(...) #1

declare dso_local i32 @do_root_update_work(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
