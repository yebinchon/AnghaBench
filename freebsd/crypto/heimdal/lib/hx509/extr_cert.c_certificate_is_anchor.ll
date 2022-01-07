; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_certificate_is_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_certificate_is_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@HX509_QUERY_MATCH_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @certificate_is_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @certificate_is_anchor(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = call i32 @_hx509_query_clear(%struct.TYPE_4__* %8)
  %16 = load i32, i32* @HX509_QUERY_MATCH_CERTIFICATE, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @_hx509_get_cert(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @hx509_certs_find(i32 %21, i32* %22, %struct.TYPE_4__* %8, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @hx509_cert_free(i32 %27)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_4__*) #1

declare dso_local i32 @_hx509_get_cert(i32) #1

declare dso_local i32 @hx509_certs_find(i32, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @hx509_cert_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
