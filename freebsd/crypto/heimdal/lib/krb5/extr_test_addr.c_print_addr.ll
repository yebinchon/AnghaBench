; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"krb5_parse_address\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"too few addresses\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"len %d larger then buf %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_addr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  %7 = alloca [38 x i8], align 16
  %8 = alloca [1000 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @krb5_parse_address(i32 %11, i8* %12, %struct.TYPE_4__* %5)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %17, i32 1, i64 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %20
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = getelementptr inbounds [38 x i8], [38 x i8]* %7, i64 0, i64 0
  %41 = call i32 @krb5_print_address(i32* %39, i8* %40, i32 38, i64* %9)
  %42 = getelementptr inbounds [38 x i8], [38 x i8]* %7, i64 0, i64 0
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 38
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [38 x i8], [38 x i8]* %7, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %47, i32 1, i64 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 38)
  br label %52

52:                                               ; preds = %46, %34
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %59 = call i32 @krb5_print_address(i32* %57, i8* %58, i32 1000, i64* %9)
  %60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 1000
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %65, i32 1, i64 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 1000)
  br label %70

70:                                               ; preds = %64, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @krb5_free_addresses(i32 %75, %struct.TYPE_4__* %5)
  ret void
}

declare dso_local i64 @krb5_parse_address(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
