; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"error: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"target-fetch-policy:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0 0 0 0 0\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"46DF:c:df:hrt:vy:C:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"do-ip6:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"do-ip4:\00", align 1
@optarg = common dso_local global i8* null, align 8
@ROOT_ANCHOR_FILE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@verb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"use-syslog\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"use-syslog:\00", align 1
@optind = common dso_local global i64 0, align 8
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@SECSuccess = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ub_ctx*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.ub_ctx* null, %struct.ub_ctx** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.ub_ctx* (...) @ub_ctx_create()
  store %struct.ub_ctx* %11, %struct.ub_ctx** %9, align 8
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %13 = icmp ne %struct.ub_ctx* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %2
  %19 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %20 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @check_ub_res(i32 %20)
  br label %22

22:                                               ; preds = %83, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %84

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %81 [
    i32 52, label %29
    i32 54, label %33
    i32 99, label %37
    i32 67, label %39
    i32 68, label %44
    i32 100, label %49
    i32 114, label %56
    i32 116, label %60
    i32 118, label %62
    i32 121, label %65
    i32 102, label %70
    i32 70, label %75
    i32 63, label %80
    i32 104, label %80
  ]

29:                                               ; preds = %27
  %30 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %31 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 @check_ub_res(i32 %31)
  br label %83

33:                                               ; preds = %27
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %35 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @check_ub_res(i32 %35)
  br label %83

37:                                               ; preds = %27
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %7, align 8
  br label %83

39:                                               ; preds = %27
  %40 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @ub_ctx_config(%struct.ub_ctx* %40, i8* %41)
  %43 = call i32 @check_ub_res(i32 %42)
  br label %83

44:                                               ; preds = %27
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %46 = load i8*, i8** @ROOT_ANCHOR_FILE, align 8
  %47 = call i32 @ub_ctx_add_ta_file(%struct.ub_ctx* %45, i8* %46)
  %48 = call i32 @check_ub_res(i32 %47)
  br label %83

49:                                               ; preds = %27
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 2, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %83

56:                                               ; preds = %27
  %57 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %58 = call i32 @ub_ctx_resolvconf(%struct.ub_ctx* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i32 @check_ub_res(i32 %58)
  br label %83

60:                                               ; preds = %27
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** %8, align 8
  br label %83

62:                                               ; preds = %27
  %63 = load i32, i32* @verb, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @verb, align 4
  br label %83

65:                                               ; preds = %27
  %66 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @ub_ctx_add_ta(%struct.ub_ctx* %66, i8* %67)
  %69 = call i32 @check_ub_res(i32 %68)
  br label %83

70:                                               ; preds = %27
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @ub_ctx_add_ta_file(%struct.ub_ctx* %71, i8* %72)
  %74 = call i32 @check_ub_res(i32 %73)
  br label %83

75:                                               ; preds = %27
  %76 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i32 @ub_ctx_trustedkeys(%struct.ub_ctx* %76, i8* %77)
  %79 = call i32 @check_ub_res(i32 %78)
  br label %83

80:                                               ; preds = %27, %27
  br label %81

81:                                               ; preds = %27, %80
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %81, %75, %70, %65, %62, %60, %56, %55, %44, %39, %37, %33, %29
  br label %22

84:                                               ; preds = %22
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ub_ctx_debuglevel(%struct.ub_ctx* %88, i32 %89)
  %91 = call i32 @check_ub_res(i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %94 = call i64 @ub_ctx_get_option(%struct.ub_ctx* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** @optarg)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %102 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 @check_ub_res(i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %92
  %108 = load i64, i64* @optind, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  %113 = load i64, i64* @optind, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 %113
  store i8** %115, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 (...) @usage()
  br label %120

120:                                              ; preds = %118, %107
  %121 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @lookup(%struct.ub_ctx* %121, i8* %124, i8* %125, i8* %126)
  ret i32 0
}

declare dso_local %struct.ub_ctx* @ub_ctx_create(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_ub_res(i32) #1

declare dso_local i32 @ub_ctx_set_option(%struct.ub_ctx*, i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @ub_ctx_config(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @ub_ctx_add_ta_file(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @ub_ctx_resolvconf(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @ub_ctx_add_ta(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @ub_ctx_trustedkeys(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ub_ctx_debuglevel(%struct.ub_ctx*, i32) #1

declare dso_local i64 @ub_ctx_get_option(%struct.ub_ctx*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lookup(%struct.ub_ctx*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
