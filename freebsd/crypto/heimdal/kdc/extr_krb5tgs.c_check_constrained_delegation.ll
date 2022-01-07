; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_constrained_delegation.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_constrained_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32* }

@KRB5KDC_ERR_BADOPTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Bad request for constrained delegation\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*)* @check_constrained_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_constrained_delegation(i32 %0, i32* %1, %struct.TYPE_13__* %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @krb5_realm_compare(i32 %17, i32* %21, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* @KRB5KDC_ERR_BADOPTION, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @kdc_log(i32 %30, i32* %31, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %15, align 8
  store i64 %33, i64* %7, align 8
  br label %110

34:                                               ; preds = %6
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)*, i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)** %36, align 8
  %38 = icmp ne i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)*, i64 (i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 %42(i32 %43, %struct.TYPE_13__* %44, %struct.TYPE_11__* %45, i32* %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %110

51:                                               ; preds = %39
  br label %105

52:                                               ; preds = %34
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @krb5_principal_compare(i32 %53, i32* %57, i32* %61)
  %63 = load i64, i64* @TRUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i64 0, i64* %7, align 8
  br label %110

66:                                               ; preds = %52
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = call i64 @hdb_entry_get_ConstrainedDelegACL(%struct.TYPE_14__* %68, %struct.TYPE_12__** %14)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @krb5_clear_error_message(i32 %73)
  %75 = load i64, i64* %15, align 8
  store i64 %75, i64* %7, align 8
  br label %110

76:                                               ; preds = %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  store i64 0, i64* %16, align 8
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i64 @krb5_principal_compare(i32 %87, i32* %88, i32* %93)
  %95 = load i64, i64* @TRUE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  br label %110

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %16, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %16, align 8
  br label %80

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %76
  %104 = load i64, i64* @KRB5KDC_ERR_BADOPTION, align 8
  store i64 %104, i64* %15, align 8
  br label %105

105:                                              ; preds = %103, %51
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @kdc_log(i32 %106, i32* %107, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %109 = load i64, i64* %15, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %105, %97, %72, %65, %50, %28
  %111 = load i64, i64* %7, align 8
  ret i64 %111
}

declare dso_local i32 @krb5_realm_compare(i32, i32*, i32*) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32*, i32*) #1

declare dso_local i64 @hdb_entry_get_ConstrainedDelegACL(%struct.TYPE_14__*, %struct.TYPE_12__**) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
