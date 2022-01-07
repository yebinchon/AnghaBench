; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bad dname in dname_pkt_copy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dname_pkt_copy(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %10, i64** %6, align 8
  %11 = load i64, i64* %9, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %45, %19, %3
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @LABEL_IS_PTR(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @PTR_OFFSET(i64 %21, i64 %23)
  %25 = call i64* @sldns_buffer_at(i32* %20, i32 %24)
  store i64* %25, i64** %6, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %6, align 8
  %28 = load i64, i64* %26, align 8
  store i64 %28, i64* %8, align 8
  br label %12

29:                                               ; preds = %15
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @log_assert(i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i64*, i64** %5, align 8
  store i64 0, i64* %43, align 8
  %44 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

45:                                               ; preds = %29
  %46 = load i64, i64* %8, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @memmove(i64* %49, i64* %50, i64 %51)
  %53 = load i64, i64* %8, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 %53
  store i64* %55, i64** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 %56
  store i64* %58, i64** %5, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %6, align 8
  %61 = load i64, i64* %59, align 8
  store i64 %61, i64* %8, align 8
  br label %12

62:                                               ; preds = %12
  %63 = load i64*, i64** %5, align 8
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %62, %42
  ret void
}

declare dso_local i64 @LABEL_IS_PTR(i64) #1

declare dso_local i64* @sldns_buffer_at(i32*, i32) #1

declare dso_local i32 @PTR_OFFSET(i64, i64) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
