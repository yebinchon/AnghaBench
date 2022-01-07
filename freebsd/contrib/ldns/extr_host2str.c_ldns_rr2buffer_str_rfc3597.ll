; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr2buffer_str_rfc3597.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr2buffer_str_rfc3597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"TYPE%u\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\# 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\# %d \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ldns_rr2buffer_str_rfc3597 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_rr2buffer_str_rfc3597(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ldns_rr_get_type(i32* %10)
  %12 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @ldns_rr_rd_count(i32* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @ldns_rr_rdf(i32* %19, i64 %20)
  %22 = call i64 @ldns_rdf_size(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  br label %13

28:                                               ; preds = %13
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ldns_buffer_status(i32* %34)
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %67, %36
  %41 = load i64, i64* %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @ldns_rr_rd_count(i32* %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ldns_rr_rdf(i32* %48, i64 %49)
  %51 = call i64 @ldns_rdf_size(i32 %50)
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ldns_rr_rdf(i32* %55, i64 %56)
  %58 = call i32* @ldns_rdf_data(i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %40

70:                                               ; preds = %40
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @ldns_buffer_status(i32* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %31
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_rd_count(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i64) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
