; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_get_ntpEntSoftwareVersion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_get_ntpEntSoftwareVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@ntpvalue = common dso_local global i64 0, align 8
@NTPQ_BUFLEN = common dso_local global i32 0, align 4
@ASN_OCTET_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ntpEntSoftwareVersion(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %35 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load i64, i64* @ntpvalue, align 8
  %15 = load i32, i32* @NTPQ_BUFLEN, align 4
  %16 = call i32 @read_ntp_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ASN_OCTET_STR, align 4
  %23 = load i64, i64* @ntpvalue, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i64, i64* @ntpvalue, align 8
  %26 = call i32 @strlen(i64 %25)
  %27 = call i32 @snmp_set_var_typed_value(i32 %21, i32 %22, i32* %24, i32 %26)
  br label %34

28:                                               ; preds = %13
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASN_OCTET_STR, align 4
  %33 = call i32 @snmp_set_var_typed_value(i32 %31, i32 %32, i32* bitcast ([4 x i8]* @.str.1 to i32*), i32 3)
  br label %34

34:                                               ; preds = %28, %18
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @read_ntp_value(i8*, i64, i32) #1

declare dso_local i32 @snmp_set_var_typed_value(i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
