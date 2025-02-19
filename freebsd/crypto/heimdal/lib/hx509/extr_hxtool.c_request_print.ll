; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_request_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_request_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_print_options = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request print\0A\00", align 1
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"parse_request: %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to print file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_print(%struct.request_print_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.request_print_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.request_print_options* %0, %struct.request_print_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load i32, i32* @context, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @_hx509_request_parse(i32 %16, i8* %21, i32* %9)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @context, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @hx509_err(i32 %26, i32 1, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25, %15
  %35 = load i32, i32* @context, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @_hx509_request_print(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = call i32 @hx509_request_free(i32* %9)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* @context, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @hx509_err(i32 %43, i32 1, i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %42, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %11

55:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @_hx509_request_parse(i32, i8*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @_hx509_request_print(i32, i32, i32) #1

declare dso_local i32 @hx509_request_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
