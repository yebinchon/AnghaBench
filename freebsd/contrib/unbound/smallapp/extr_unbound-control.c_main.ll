; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIGFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"unbound-control\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"c:s:qh\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"could not exec unbound: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"stats_shm\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"no entropy, seeding openssl PRNG with time\0A\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** @CONFIGFILE, align 8
  store i8* %15, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = call i32 @log_ident_set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @log_init(i32* null, i32 0, i32* null)
  %18 = call i32 (...) @checklock_start()
  br label %19

19:                                               ; preds = %34, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %32 [
    i32 99, label %26
    i32 115, label %28
    i32 113, label %30
    i32 63, label %31
    i32 104, label %31
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %9, align 8
  br label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %10, align 8
  br label %34

30:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %34

31:                                               ; preds = %24, %24
  br label %32

32:                                               ; preds = %24, %31
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  br label %19

35:                                               ; preds = %19
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %4, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @execlp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %58, i8* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 @fatal_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %51, %48
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @print_stats_shm(i8* %76)
  store i32 0, i32* %3, align 4
  br label %122

78:                                               ; preds = %69, %66
  %79 = call i32 (...) @ERR_load_SSL_strings()
  %80 = call i32 (...) @OpenSSL_add_all_algorithms()
  %81 = call i32 (...) @SSL_library_init()
  %82 = call i32 (...) @RAND_status()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %78
  %85 = call i64 @time(i32* null)
  %86 = trunc i64 %85 to i32
  %87 = call i64 (...) @getpid()
  %88 = trunc i64 %87 to i32
  %89 = xor i32 %86, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %91

91:                                               ; preds = %106, %84
  %92 = load i64, i64* %14, align 8
  %93 = icmp ult i64 %92, 64
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %96 = load i64, i64* %14, align 8
  %97 = mul i64 %96, 4
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @memmove(i8* %98, i32* %13, i32 4)
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul i32 %100, %101
  %103 = load i64, i64* %14, align 8
  %104 = trunc i64 %103 to i32
  %105 = add i32 %102, %104
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %14, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %91

109:                                              ; preds = %91
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %111 = call i32 @RAND_seed(i8* %110, i32 256)
  %112 = call i32 @log_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %78
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = call i32 @go(i8* %114, i8* %115, i32 %116, i32 %117, i8** %118)
  store i32 %119, i32* %7, align 4
  %120 = call i32 (...) @checklock_stop()
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %113, %75
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @log_ident_set(i8*) #1

declare dso_local i32 @log_init(i32*, i32, i32*) #1

declare dso_local i32 @checklock_start(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @execlp(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fatal_exit(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @print_stats_shm(i8*) #1

declare dso_local i32 @ERR_load_SSL_strings(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @RAND_status(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @memmove(i8*, i32*, i32) #1

declare dso_local i32 @RAND_seed(i8*, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @go(i8*, i8*, i32, i32, i8**) #1

declare dso_local i32 @checklock_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
