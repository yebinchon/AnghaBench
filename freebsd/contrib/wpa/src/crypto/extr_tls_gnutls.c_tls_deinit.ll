; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_global = type { %struct.tls_global*, %struct.tls_global*, i32, i64 }

@tls_gnutls_ref_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tls_global*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tls_global*
  store %struct.tls_global* %5, %struct.tls_global** %3, align 8
  %6 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %7 = icmp ne %struct.tls_global* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %10 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %15 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gnutls_certificate_free_credentials(i32 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %20 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %19, i32 0, i32 1
  %21 = load %struct.tls_global*, %struct.tls_global** %20, align 8
  %22 = call i32 @os_free(%struct.tls_global* %21)
  %23 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %24 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %23, i32 0, i32 0
  %25 = load %struct.tls_global*, %struct.tls_global** %24, align 8
  %26 = call i32 @os_free(%struct.tls_global* %25)
  %27 = load %struct.tls_global*, %struct.tls_global** %3, align 8
  %28 = call i32 @os_free(%struct.tls_global* %27)
  br label %29

29:                                               ; preds = %18, %1
  %30 = load i64, i64* @tls_gnutls_ref_count, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* @tls_gnutls_ref_count, align 8
  %32 = load i64, i64* @tls_gnutls_ref_count, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @gnutls_global_deinit()
  br label %36

36:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @gnutls_certificate_free_credentials(i32) #1

declare dso_local i32 @os_free(%struct.tls_global*) #1

declare dso_local i32 @gnutls_global_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
