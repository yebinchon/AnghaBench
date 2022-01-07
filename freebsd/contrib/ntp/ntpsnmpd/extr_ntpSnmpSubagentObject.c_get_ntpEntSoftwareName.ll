; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_get_ntpEntSoftwareName.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_get_ntpEntSoftwareName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NTPQ_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"product\00", align 1
@ntpvalue = common dso_local global i8* null, align 8
@ASN_OCTET_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ntpEntSoftwareName(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %13 = load i32, i32* @NTPQ_BUFLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* @NTPQ_BUFLEN, align 4
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %62 [
    i32 128, label %22
  ]

22:                                               ; preds = %4
  %23 = load i8*, i8** @ntpvalue, align 8
  %24 = load i32, i32* @NTPQ_BUFLEN, align 4
  %25 = call i32 @read_ntp_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ASN_OCTET_STR, align 4
  %32 = load i8*, i8** @ntpvalue, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** @ntpvalue, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @snmp_set_var_typed_value(i32 %30, i32 %31, i32* %33, i32 %35)
  br label %61

37:                                               ; preds = %22
  %38 = load i8*, i8** @ntpvalue, align 8
  %39 = load i32, i32* @NTPQ_BUFLEN, align 4
  %40 = call i32 @read_ntp_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** @ntpvalue, align 8
  %44 = sub i64 %14, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ntpsnmpd_cut_string(i8* %43, i8* %16, i8 signext 32, i32 0, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ASN_OCTET_STR, align 4
  %51 = bitcast i8* %16 to i32*
  %52 = call i32 @strlen(i8* %16)
  %53 = call i32 @snmp_set_var_typed_value(i32 %49, i32 %50, i32* %51, i32 %52)
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ASN_OCTET_STR, align 4
  %59 = call i32 @snmp_set_var_typed_value(i32 %57, i32 %58, i32* bitcast ([4 x i8]* @.str.2 to i32*), i32 3)
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60, %27
  br label %64

62:                                               ; preds = %4
  %63 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %63, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @read_ntp_value(i8*, i8*, i32) #2

declare dso_local i32 @snmp_set_var_typed_value(i32, i32, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ntpsnmpd_cut_string(i8*, i8*, i8 signext, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
