; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_display_v5_ccache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_display_v5_ccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"No ticket file: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"krb5_cc_close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @display_v5_ccache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_v5_ccache(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @krb5_cc_get_principal(i32 %17, i32 %18, i32* %15)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %6
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @krb5_cc_get_name(i32 %32, i32 %33)
  %35 = call i32 @krb5_warnx(i32 %30, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  store i32 1, i32* %7, align 4
  br label %73

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @krb5_err(i32 %38, i32 1, i64 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %6
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @check_for_tgt(i32 %46, i32 %47, i32 %48, i32* null)
  store i32 %49, i32* %16, align 4
  br label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @print_tickets(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @krb5_cc_close(i32 %59, i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @krb5_err(i32 %65, i32 1, i64 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @krb5_free_principal(i32 %69, i32 %70)
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %36
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_warnx(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_cc_get_name(i32, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @check_for_tgt(i32, i32, i32, i32*) #1

declare dso_local i32 @print_tickets(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
