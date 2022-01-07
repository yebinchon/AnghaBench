; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_name_resolved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_name_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, i32, i32, i32, %struct.addrinfo* }
%struct.dns_ctx = type { i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.dns_ctx* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s lookup error %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sock4 = common dso_local global i32 0, align 4
@ipv6_works = common dso_local global i32 0, align 4
@sock6 = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"sntp_name_resolved: unexpected ai_family: %d\00", align 1
@n_pending_ntp = common dso_local global i32 0, align 4
@CTX_UCST = common dso_local global i32 0, align 4
@n_pending_dns = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sntp_name_resolved(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, %struct.addrinfo* %5, %struct.addrinfo* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.dns_ctx*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.addrinfo* %5, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %6, %struct.addrinfo** %14, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.dns_ctx*
  store %struct.dns_ctx* %24, %struct.dns_ctx** %15, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %7
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.dns_ctx*, %struct.dns_ctx** %15, align 8
  %30 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @gai_strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %33)
  br label %121

35:                                               ; preds = %7
  %36 = load %struct.dns_ctx*, %struct.dns_ctx** %15, align 8
  %37 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @TRACE(i32 3, i8* %49)
  %51 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %51, %struct.addrinfo** %17, align 8
  br label %52

52:                                               ; preds = %116, %48
  %53 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %54 = icmp ne %struct.addrinfo* %53, null
  br i1 %54, label %55, label %120

55:                                               ; preds = %52
  %56 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %57 = call i64 @check_kod(%struct.addrinfo* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %116

60:                                               ; preds = %55
  %61 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %78 [
    i32 129, label %64
    i32 128, label %69
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @sock4, align 4
  store i32 %65, i32* %18, align 4
  %66 = load i64, i64* %19, align 8
  store i64 %66, i64* %21, align 8
  %67 = load i64, i64* %19, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %19, align 8
  br label %85

69:                                               ; preds = %60
  %70 = load i32, i32* @ipv6_works, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %116

73:                                               ; preds = %69
  %74 = load i32, i32* @sock6, align 4
  store i32 %74, i32* %18, align 4
  %75 = load i64, i64* %20, align 8
  store i64 %75, i64* %21, align 8
  %76 = load i64, i64* %20, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %20, align 8
  br label %85

78:                                               ; preds = %60
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @msyslog(i32 %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %73, %64
  %86 = load i32, i32* @n_pending_ntp, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @n_pending_ntp, align 4
  %88 = load %struct.dns_ctx*, %struct.dns_ctx** %15, align 8
  %89 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CTX_UCST, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %85
  %95 = call %struct.TYPE_4__* @emalloc_zero(i32 16)
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %16, align 8
  %96 = load %struct.dns_ctx*, %struct.dns_ctx** %15, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store %struct.dns_ctx* %96, %struct.dns_ctx** %98, align 8
  %99 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @min(i32 %101, i32 4)
  store i64 %102, i64* %22, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %22, align 8
  %109 = call i32 @memcpy(i32* %104, i32 %107, i64 %108)
  %110 = load i32, i32* %18, align 4
  %111 = load %struct.dns_ctx*, %struct.dns_ctx** %15, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %113 = load i64, i64* %21, align 8
  %114 = call i32 @queue_xmt(i32 %110, %struct.dns_ctx* %111, %struct.TYPE_4__* %112, i64 %113)
  br label %115

115:                                              ; preds = %94, %85
  br label %116

116:                                              ; preds = %115, %72, %59
  %117 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 4
  %119 = load %struct.addrinfo*, %struct.addrinfo** %118, align 8
  store %struct.addrinfo* %119, %struct.addrinfo** %17, align 8
  br label %52

120:                                              ; preds = %52
  br label %121

121:                                              ; preds = %120, %27
  %122 = load i32, i32* @n_pending_dns, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* @n_pending_dns, align 4
  %124 = call i32 (...) @check_exit_conditions()
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i64 @check_kod(%struct.addrinfo*) #1

declare dso_local i32 @msyslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_4__* @emalloc_zero(i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @queue_xmt(i32, %struct.dns_ctx*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @check_exit_conditions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
