; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pcert_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pcert_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_options = type { i64, i64, i32, i32 }
%struct.print_s = type { i32, i64 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ignoreing failure: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hx509_certs_init\00", align 1
@print_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcert_print(%struct.print_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.print_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.print_s, align 8
  %10 = alloca i32, align 4
  store %struct.print_options* %0, %struct.print_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %11 = getelementptr inbounds %struct.print_s, %struct.print_s* %9, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.print_options*, %struct.print_options** %4, align 8
  %13 = getelementptr inbounds %struct.print_options, %struct.print_options* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.print_s, %struct.print_s* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @context, align 4
  %17 = call i32 @hx509_lock_init(i32 %16, i32* %8)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.print_options*, %struct.print_options** %4, align 8
  %20 = getelementptr inbounds %struct.print_options, %struct.print_options* %19, i32 0, i32 2
  %21 = call i32 @lock_strings(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %56, %40, %3
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load i32, i32* @context, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @hx509_certs_init(i32 %27, i8* %30, i32 0, i32 %31, i32* %7)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.print_options*, %struct.print_options** %4, align 8
  %37 = getelementptr inbounds %struct.print_options, %struct.print_options* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %22

43:                                               ; preds = %35
  %44 = load i32, i32* @context, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @hx509_err(i32 %44, i32 1, i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.print_options*, %struct.print_options** %4, align 8
  %49 = getelementptr inbounds %struct.print_options, %struct.print_options* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @context, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @hx509_certs_info(i32 %53, i32 %54, i32* null, i32* null)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* @context, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @print_f, align 4
  %60 = call i32 @hx509_certs_iter_f(i32 %57, i32 %58, i32 %59, %struct.print_s* %9)
  %61 = call i32 @hx509_certs_free(i32* %7)
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %6, align 8
  br label %22

64:                                               ; preds = %22
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @hx509_lock_free(i32 %65)
  ret i32 0
}

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_info(i32, i32, i32*, i32*) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, %struct.print_s*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @hx509_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
