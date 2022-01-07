; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_get_subject.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_get_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, %struct.x509_certificate* }
%struct.x509_name = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.x509_certificate* @x509_certificate_get_subject(%struct.x509_certificate* %0, %struct.x509_name* %1) #0 {
  %3 = alloca %struct.x509_certificate*, align 8
  %4 = alloca %struct.x509_certificate*, align 8
  %5 = alloca %struct.x509_name*, align 8
  %6 = alloca %struct.x509_certificate*, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %4, align 8
  store %struct.x509_name* %1, %struct.x509_name** %5, align 8
  %7 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  store %struct.x509_certificate* %7, %struct.x509_certificate** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %10 = icmp ne %struct.x509_certificate* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %13 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %12, i32 0, i32 0
  %14 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %15 = call i64 @x509_name_compare(i32* %13, %struct.x509_name* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %18, %struct.x509_certificate** %3, align 8
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %22 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %21, i32 0, i32 1
  %23 = load %struct.x509_certificate*, %struct.x509_certificate** %22, align 8
  store %struct.x509_certificate* %23, %struct.x509_certificate** %6, align 8
  br label %8

24:                                               ; preds = %8
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  ret %struct.x509_certificate* %26
}

declare dso_local i64 @x509_name_compare(i32*, %struct.x509_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
