; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_cert_keyusage_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_cert_keyusage_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cert_keyusage_print(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @_hx509_cert_get_keyusage(i32 %12, i32 %13, i32* %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @KeyUsage2int(i32 %20)
  %22 = call i32 (...) @asn1_KeyUsage_units()
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %24 = call i32 @unparse_flags(i32 %21, i32 %22, i8* %23, i32 256)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %26 = call i8* @strdup(i8* %25)
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @hx509_set_error_string(i32 %32, i32 0, i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %31, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @_hx509_cert_get_keyusage(i32, i32, i32*) #1

declare dso_local i32 @unparse_flags(i32, i32, i8*, i32) #1

declare dso_local i32 @KeyUsage2int(i32) #1

declare dso_local i32 @asn1_KeyUsage_units(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
