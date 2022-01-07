; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c_match_localkeyid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c_match_localkeyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.private_key = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }

@HX509_LOCAL_ATTRIBUTE_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No local key attribute on private key\00", align 1
@HX509_QUERY_MATCH_LOCAL_KEY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.private_key*, i32)* @match_localkeyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_localkeyid(i32 %0, %struct.private_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.private_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.private_key* %1, %struct.private_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.private_key*, %struct.private_key** %6, align 8
  %12 = getelementptr inbounds %struct.private_key, %struct.private_key* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HX509_LOCAL_ATTRIBUTE_MISSING, align 4
  %19 = call i32 @hx509_set_error_string(i32 %17, i32 0, i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @HX509_LOCAL_ATTRIBUTE_MISSING, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = call i32 @_hx509_query_clear(%struct.TYPE_6__* %9)
  %23 = load i32, i32* @HX509_QUERY_MATCH_LOCAL_KEY_ID, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = load %struct.private_key*, %struct.private_key** %6, align 8
  %28 = getelementptr inbounds %struct.private_key, %struct.private_key* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hx509_certs_find(i32 %30, i32 %31, %struct.TYPE_6__* %9, i32* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %21
  %36 = load %struct.private_key*, %struct.private_key** %6, align 8
  %37 = getelementptr inbounds %struct.private_key, %struct.private_key* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.private_key*, %struct.private_key** %6, align 8
  %43 = getelementptr inbounds %struct.private_key, %struct.private_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @_hx509_cert_assign_key(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @hx509_cert_free(i32 %47)
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @hx509_certs_find(i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @_hx509_cert_assign_key(i32, i32) #1

declare dso_local i32 @hx509_cert_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
