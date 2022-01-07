; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_ixfr_start_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_ixfr_start_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i32 }

@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IXFR has no second SOA record\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"IXFR cannot parse second SOA record\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"IXFR second record is not type SOA\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"IXFR, second SOA has short rdlength\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"IXFR second serial same as first\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"IXFR is from serial %u to %u but %u in memory, rejecting the zone transfer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_chunk*, i32, i64, i32*, i64, i64, i64, i64, i32*, i64, i64, i64)* @ixfr_start_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixfr_start_serial(%struct.auth_chunk* %0, i32 %1, i64 %2, i32* %3, i64 %4, i64 %5, i64 %6, i64 %7, i32* %8, i64 %9, i64 %10, i64 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.auth_chunk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.auth_chunk* %0, %struct.auth_chunk** %14, align 8
  store i32 %1, i32* %15, align 4
  store i64 %2, i64* %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32* %8, i32** %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i64 %11, i64* %25, align 8
  %27 = load i64, i64* %23, align 8
  %28 = call i32 @chunk_rrlist_gonext(%struct.auth_chunk** %14, i32* %15, i64* %16, i64 %27)
  %29 = load %struct.auth_chunk*, %struct.auth_chunk** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @chunk_rrlist_end(%struct.auth_chunk* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %12
  %34 = load i32, i32* @VERB_OPS, align 4
  %35 = call i32 (i32, i8*, ...) @verbose(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %84

36:                                               ; preds = %12
  %37 = load %struct.auth_chunk*, %struct.auth_chunk** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @chunk_rrlist_get_current(%struct.auth_chunk* %37, i32 %38, i64 %39, i32** %17, i64* %18, i64* %19, i64* %20, i64* %21, i32** %22, i64* %23)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @VERB_OPS, align 4
  %44 = call i32 (i32, i8*, ...) @verbose(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %84

45:                                               ; preds = %36
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @VERB_OPS, align 4
  %51 = call i32 (i32, i8*, ...) @verbose(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %84

52:                                               ; preds = %45
  %53 = load i64, i64* %21, align 8
  %54 = icmp slt i64 %53, 22
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @VERB_OPS, align 4
  %57 = call i32 (i32, i8*, ...) @verbose(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %84

58:                                               ; preds = %52
  %59 = load i32*, i32** %22, align 8
  %60 = load i64, i64* %21, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 -20
  %63 = call i64 @sldns_read_uint32(i32* %62)
  store i64 %63, i64* %26, align 8
  %64 = load i64, i64* %26, align 8
  %65 = load i64, i64* %24, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @VERB_OPS, align 4
  %69 = call i32 (i32, i8*, ...) @verbose(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %84

70:                                               ; preds = %58
  %71 = load i64, i64* %26, align 8
  %72 = load i64, i64* %25, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* @VERB_OPS, align 4
  %76 = load i64, i64* %26, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %24, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %25, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i32, i8*, ...) @verbose(i32 %75, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %79, i32 %81)
  store i32 0, i32* %13, align 4
  br label %84

83:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %83, %74, %67, %55, %49, %42, %33
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local i32 @chunk_rrlist_gonext(%struct.auth_chunk**, i32*, i64*, i64) #1

declare dso_local i64 @chunk_rrlist_end(%struct.auth_chunk*, i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @chunk_rrlist_get_current(%struct.auth_chunk*, i32, i64, i32**, i64*, i64*, i64*, i64*, i32**, i64*) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
