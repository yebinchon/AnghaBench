; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_rrstr_get_rr_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_rrstr_get_rr_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"error parsing local-data at %d: '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrstr_get_rr_content(i8* %0, i32** %1, i32* %2, i32* %3, i64* %4, i32* %5, i64 %6, i32** %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32** %7, i32*** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64 0, i64* %20, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = call i32 @sldns_str2wire_rr_buf(i8* %22, i32* %23, i64* %17, i64* %20, i32 3600, i32* null, i32 0, i32* null, i32 0)
  store i32 %24, i32* %21, align 4
  %25 = load i32, i32* %21, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %9
  %28 = load i32, i32* %21, align 4
  %29 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %21, align 4
  %32 = call i32 @sldns_get_errorstr_parse(i32 %31)
  %33 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30, i32 %32)
  store i32 0, i32* %10, align 4
  br label %72

34:                                               ; preds = %9
  %35 = load i32*, i32** %16, align 8
  %36 = load i64, i64* %20, align 8
  %37 = call i32* @memdup(i32* %35, i64 %36)
  %38 = load i32**, i32*** %12, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %12, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %72

44:                                               ; preds = %34
  %45 = load i32*, i32** %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call i32 @sldns_wirerr_get_class(i32* %45, i64 %46, i64 %47)
  %49 = load i32*, i32** %14, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %20, align 8
  %53 = call i32 @sldns_wirerr_get_type(i32* %50, i64 %51, i64 %52)
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %20, align 8
  %58 = call i64 @sldns_wirerr_get_ttl(i32* %55, i64 %56, i64 %57)
  %59 = load i64*, i64** %15, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %20, align 8
  %63 = call i32* @sldns_wirerr_get_rdatawl(i32* %60, i64 %61, i64 %62)
  %64 = load i32**, i32*** %18, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @sldns_wirerr_get_rdatalen(i32* %65, i64 %66, i64 %67)
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %19, align 8
  store i64 %70, i64* %71, align 8
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %44, %42, %27
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #1

declare dso_local i32 @sldns_get_errorstr_parse(i32) #1

declare dso_local i32* @memdup(i32*, i64) #1

declare dso_local i32 @sldns_wirerr_get_class(i32*, i64, i64) #1

declare dso_local i32 @sldns_wirerr_get_type(i32*, i64, i64) #1

declare dso_local i64 @sldns_wirerr_get_ttl(i32*, i64, i64) #1

declare dso_local i32* @sldns_wirerr_get_rdatawl(i32*, i64, i64) #1

declare dso_local i32 @sldns_wirerr_get_rdatalen(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
