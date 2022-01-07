; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_authorityInfoAccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_authorityInfoAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_status = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"\09ret = %d while decoding AuthorityInfoAccessSyntax\0A\00", align 1
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\09type: \00", align 1
@validate_vprint = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"\0A\09dirname: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cert_status*, i32, %struct.TYPE_11__*)* @check_authorityInfoAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_authorityInfoAccess(i32 %0, %struct.cert_status* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cert_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cert_status* %1, %struct.cert_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = call i32 @check_Null(i32 %15, %struct.cert_status* %16, i32 %17, %struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @decode_AuthorityInfoAccessSyntax(i32 %23, i32 %27, %struct.TYPE_12__* %10, i64* %11)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %5, align 4
  br label %69

34:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %43 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* @validate_vprint, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hx509_oid_print(i32* %48, i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @hx509_general_name_unparse(i32* %56, i8** %14)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %58, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %40
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %35

67:                                               ; preds = %35
  %68 = call i32 @free_AuthorityInfoAccessSyntax(%struct.TYPE_12__* %10)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %31
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @check_Null(i32, %struct.cert_status*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @decode_AuthorityInfoAccessSyntax(i32, i32, %struct.TYPE_12__*, i64*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @validate_print(i32, i32, i8*, ...) #1

declare dso_local i32 @hx509_oid_print(i32*, i32, i32) #1

declare dso_local i32 @hx509_general_name_unparse(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_AuthorityInfoAccessSyntax(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
