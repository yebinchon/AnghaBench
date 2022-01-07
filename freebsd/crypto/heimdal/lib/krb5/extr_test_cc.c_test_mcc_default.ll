; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_mcc_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_mcc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"krb5_init_context\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MEMORY:foo\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"krb5_cc_set_default_name\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"krb5_cc_default\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"krb5_cc_close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mcc_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mcc_default() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %67, %0
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %70

9:                                                ; preds = %6
  %10 = call i32 @krb5_init_context(i32* %1)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @krb5_err(i32 %14, i32 1, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @krb5_cc_set_default_name(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @krb5_err(i32 %23, i32 1, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @krb5_cc_default(i32 %27, i32* %3)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @krb5_err(i32 %32, i32 1, i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @krb5_cc_default(i32 %36, i32* %4)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @krb5_err(i32 %41, i32 1, i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @krb5_cc_close(i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @krb5_err(i32 %51, i32 1, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @krb5_cc_close(i32 %55, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @krb5_err(i32 %61, i32 1, i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @krb5_free_context(i32 %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %6

70:                                               ; preds = %6
  ret void
}

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_cc_set_default_name(i32, i8*) #1

declare dso_local i32 @krb5_cc_default(i32, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
