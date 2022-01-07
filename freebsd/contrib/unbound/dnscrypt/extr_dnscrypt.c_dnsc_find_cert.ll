; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_find_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_find_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.dnsc_env = type { i64, %struct.TYPE_3__* }
%struct.sldns_buffer = type { i32 }
%struct.dnscrypt_query_header = type { i32 }

@DNSCRYPT_QUERY_HEADER_SIZE = common dso_local global i64 0, align 8
@DNSCRYPT_MAGIC_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.dnsc_env*, %struct.sldns_buffer*)* @dnsc_find_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @dnsc_find_cert(%struct.dnsc_env* %0, %struct.sldns_buffer* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.dnsc_env*, align 8
  %5 = alloca %struct.sldns_buffer*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.dnscrypt_query_header*, align 8
  %8 = alloca i64, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %4, align 8
  store %struct.sldns_buffer* %1, %struct.sldns_buffer** %5, align 8
  %9 = load %struct.dnsc_env*, %struct.dnsc_env** %4, align 8
  %10 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.sldns_buffer*, %struct.sldns_buffer** %5, align 8
  %13 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %12)
  %14 = load i64, i64* @DNSCRYPT_QUERY_HEADER_SIZE, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.sldns_buffer*, %struct.sldns_buffer** %5, align 8
  %19 = call i64 @sldns_buffer_begin(%struct.sldns_buffer* %18)
  %20 = inttoptr i64 %19 to %struct.dnscrypt_query_header*
  store %struct.dnscrypt_query_header* %20, %struct.dnscrypt_query_header** %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %44, %17
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.dnsc_env*, %struct.dnsc_env** %4, align 8
  %24 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %7, align 8
  %34 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DNSCRYPT_MAGIC_HEADER_LEN, align 4
  %37 = call i64 @memcmp(i32 %32, i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %3, align 8
  br label %48

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %21

47:                                               ; preds = %21
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %48

48:                                               ; preds = %47, %39, %16
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %49
}

declare dso_local i64 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i64 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
