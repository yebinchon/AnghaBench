; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_check_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_check_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_certificate_check_signature(%struct.x509_certificate* %0, %struct.x509_certificate* %1) #0 {
  %3 = alloca %struct.x509_certificate*, align 8
  %4 = alloca %struct.x509_certificate*, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %3, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %4, align 8
  %5 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %6 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %7 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %6, i32 0, i32 4
  %8 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %9 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %12 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %15 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %18 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @x509_check_signature(%struct.x509_certificate* %5, i32* %7, i32 %10, i32 %13, i32 %16, i32 %19)
  ret i32 %20
}

declare dso_local i32 @x509_check_signature(%struct.x509_certificate*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
