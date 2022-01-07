; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_handle_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_handle_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32 }
%struct.dns_ctx = type { i8*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"handle_lookup(%s,%#x)\0A\00", align 1
@ai_fam_pref = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@Z_AI_NUMERICSERV = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@response_tv = common dso_local global i32 0, align 4
@AUTHENTICATION = common dso_local global i32 0, align 4
@OPT_VALUE_AUTHENTICATION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"%s: Authentication with keyID %d requested, but no matching keyID found in <%s>!\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@KEYFILE = common dso_local global i32 0, align 4
@n_pending_dns = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@sntp_name_resolved = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 4
  %6 = alloca %struct.dns_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @TRACE(i32 1, i8* %13)
  %15 = bitcast %struct.addrinfo* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @ZERO(i64 %17, i64 %19)
  %21 = load i32, i32* @ai_fam_pref, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @AI_CANONNAME, align 4
  %24 = load i32, i32* @Z_AI_NUMERICSERV, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @IPPROTO_UDP, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 32, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call %struct.dns_ctx* @emalloc_zero(i64 %37)
  store %struct.dns_ctx* %38, %struct.dns_ctx** %6, align 8
  %39 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %39, i64 1
  %41 = bitcast %struct.dns_ctx* %40 to i8*
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @response_tv, align 4
  %53 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @AUTHENTICATION, align 4
  %58 = call i64 @ENABLED_OPT(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %2
  %61 = load i32, i32* @OPT_VALUE_AUTHENTICATION, align 4
  %62 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %67, i32 0, i32 3
  %69 = call i32 @get_key(i32 %66, i32** %68)
  %70 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* null, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** @progname, align 8
  %77 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @KEYFILE, align 4
  %81 = call i8* @OPT_ARG(i32 %80)
  %82 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %79, i8* %81)
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %60
  br label %88

85:                                               ; preds = %2
  %86 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %86, i32 0, i32 2
  store i32 -1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i32, i32* @n_pending_dns, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @n_pending_dns, align 4
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.dns_ctx*, %struct.dns_ctx** %6, align 8
  %93 = call i32 @getaddrinfo_sometime(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.addrinfo* %5, i32 0, i32* @sntp_name_resolved, %struct.dns_ctx* %92)
  ret void
}

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @ZERO(i64, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dns_ctx* @emalloc_zero(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ENABLED_OPT(i32) #1

declare dso_local i32 @get_key(i32, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @OPT_ARG(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getaddrinfo_sometime(i8*, i8*, %struct.addrinfo*, i32, i32*, %struct.dns_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
