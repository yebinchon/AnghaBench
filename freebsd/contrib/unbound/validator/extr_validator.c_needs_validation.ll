; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_needs_validation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_needs_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"not validating response, is valrec(validation recursion lookup)\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot validate non-answer, rcode %s\00", align 1
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot validate RRSIG, no sigs on sigs.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32, %struct.dns_msg*)* @needs_validation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_validation(%struct.module_qstate* %0, i32 %1, %struct.dns_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dns_msg* %2, %struct.dns_msg** %7, align 8
  %10 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %11 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @VERB_ALGO, align 8
  %16 = call i32 (i64, i8*, ...) @verbose(i64 %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %23 = icmp ne %struct.dns_msg* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %8, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %28 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @FLAGS_GET_RCODE(i32 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* @verbosity, align 8
  %44 = load i64, i64* @VERB_ALGO, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %47, align 16
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %50 = call i32 @sldns_wire2str_rcode_buf(i32 %48, i8* %49, i32 16)
  %51 = load i64, i64* @VERB_ALGO, align 8
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %53 = call i32 (i64, i8*, ...) @verbose(i64 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %46, %42
  store i32 0, i32* %4, align 4
  br label %80

55:                                               ; preds = %38, %34
  %56 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %68 = icmp ne %struct.dns_msg* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %71 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i64, i64* @VERB_ALGO, align 8
  %78 = call i32 (i64, i8*, ...) @verbose(i64 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

79:                                               ; preds = %69, %66, %62, %55
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %54, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @sldns_wire2str_rcode_buf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
