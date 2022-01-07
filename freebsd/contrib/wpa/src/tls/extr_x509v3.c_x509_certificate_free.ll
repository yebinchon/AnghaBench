; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { %struct.x509_certificate*, %struct.x509_certificate*, %struct.x509_certificate*, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"X509: x509_certificate_free: cer=%p was still on a list (next=%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x509_certificate_free(%struct.x509_certificate* %0) #0 {
  %2 = alloca %struct.x509_certificate*, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %2, align 8
  %3 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %4 = icmp eq %struct.x509_certificate* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %8 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %14 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %15 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.x509_certificate* %13, i64 %16)
  br label %18

18:                                               ; preds = %11, %6
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %20 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %19, i32 0, i32 4
  %21 = call i32 @x509_free_name(i32* %20)
  %22 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %23 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %22, i32 0, i32 3
  %24 = call i32 @x509_free_name(i32* %23)
  %25 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %26 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %25, i32 0, i32 2
  %27 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %28 = call i32 @os_free(%struct.x509_certificate* %27)
  %29 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %30 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %29, i32 0, i32 1
  %31 = load %struct.x509_certificate*, %struct.x509_certificate** %30, align 8
  %32 = call i32 @os_free(%struct.x509_certificate* %31)
  %33 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %34 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %33, i32 0, i32 0
  %35 = load %struct.x509_certificate*, %struct.x509_certificate** %34, align 8
  %36 = call i32 @os_free(%struct.x509_certificate* %35)
  %37 = load %struct.x509_certificate*, %struct.x509_certificate** %2, align 8
  %38 = call i32 @os_free(%struct.x509_certificate* %37)
  br label %39

39:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.x509_certificate*, i64) #1

declare dso_local i32 @x509_free_name(i32*) #1

declare dso_local i32 @os_free(%struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
