; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_root.c_read_root_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_root.c_read_root_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to open %s for reading: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Error reading root hints file: %s\0A\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_root_hints(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %8, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %19)
  store i32* null, i32** %2, align 8
  br label %74

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @ldns_zone_new_frm_fp_l(i32** %6, i32* %22, i32* null, i32 0, i32 0, i32* %5)
  store i64 %23, i64* %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fclose(i32* %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @LDNS_STATUS_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i8* @ldns_get_errorstr_by_id(i64 %31)
  %33 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i32* null, i32** %2, align 8
  br label %74

34:                                               ; preds = %21
  %35 = call i32* (...) @ldns_rr_list_new()
  store i32* %35, i32** %8, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %67, %34
  %37 = load i64, i64* %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ldns_zone_rrs(i32* %38)
  %40 = call i64 @ldns_rr_list_rr_count(i32 %39)
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ldns_zone_rrs(i32* %43)
  %45 = load i64, i64* %10, align 8
  %46 = call i32* @ldns_rr_list_rr(i32 %44, i64 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @ldns_rr_get_type(i32* %47)
  %49 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @ldns_rr_clone(i32* %53)
  %55 = call i32 @ldns_rr_list_push_rr(i32* %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @ldns_rr_get_type(i32* %57)
  %59 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @ldns_rr_clone(i32* %63)
  %65 = call i32 @ldns_rr_list_push_rr(i32* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @ldns_zone_deep_free(i32* %71)
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %2, align 8
  br label %74

74:                                               ; preds = %70, %29, %15
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @ldns_zone_new_frm_fp_l(i32**, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @ldns_get_errorstr_by_id(i64) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32) #1

declare dso_local i32 @ldns_zone_rrs(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32*) #1

declare dso_local i32 @ldns_zone_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
