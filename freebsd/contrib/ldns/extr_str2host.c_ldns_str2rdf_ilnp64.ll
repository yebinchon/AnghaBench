; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_ilnp64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_ilnp64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%4x:%4x:%4x:%4x%n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@LDNS_STATUS_INVALID_ILNP64 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_ILNP64 = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_str2rdf_ilnp64(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %11)
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %11, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strpbrk(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %15, %2
  %26 = load i32, i32* @LDNS_STATUS_INVALID_ILNP64, align 4
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @htons(i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @LDNS_RDF_TYPE_ILNP64, align 4
  %41 = bitcast [4 x i32]* %10 to i32**
  %42 = call i32* @ldns_rdf_new_frm_data(i32 %40, i32 16, i32** %41)
  %43 = load i32**, i32*** %4, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %27
  %45 = load i32**, i32*** %4, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @LDNS_STATUS_OK, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strpbrk(i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
