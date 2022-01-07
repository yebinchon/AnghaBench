; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_admin_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_admin_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.krb5_krbhst_data = type { i32, i32, i32 }

@KD_PLUGIN = common dso_local global i32 0, align 4
@locate_service_kadmin = common dso_local global i32 0, align 4
@KD_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"admin_server\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Configuration exists for realm %s, wont go to DNS\00", align 1
@KRB5_KDC_UNREACH = common dso_local global i64 0, align 8
@KD_SRV_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"kerberos-adm\00", align 1
@KD_FALLBACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"kerberos\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"No admin entries found for realm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.krb5_krbhst_data*, i32**)* @admin_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @admin_get_next(%struct.TYPE_8__* %0, %struct.krb5_krbhst_data* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.krb5_krbhst_data*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %10 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KD_PLUGIN, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %18 = load i32, i32* @locate_service_kadmin, align 4
  %19 = call i32 @plugin_get_hosts(%struct.TYPE_8__* %16, %struct.krb5_krbhst_data* %17, i32 %18)
  %20 = load i32, i32* @KD_PLUGIN, align 4
  %21 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %22 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %26 = load i32**, i32*** %7, align 8
  %27 = call i64 @get_next(%struct.krb5_krbhst_data* %25, i32** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %138

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %33 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KD_CONFIG, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %41 = call i32 @config_get_hosts(%struct.TYPE_8__* %39, %struct.krb5_krbhst_data* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @KD_CONFIG, align 4
  %43 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %44 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = call i64 @get_next(%struct.krb5_krbhst_data* %47, i32** %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %138

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %55 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %63 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_krb5_debug(%struct.TYPE_8__* %61, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  store i64 %66, i64* %4, align 8
  br label %138

67:                                               ; preds = %53
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %74 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @KD_SRV_TCP, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %82 = call i32 @srv_get_hosts(%struct.TYPE_8__* %80, %struct.krb5_krbhst_data* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @KD_SRV_TCP, align 4
  %84 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %85 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %89 = load i32**, i32*** %7, align 8
  %90 = call i64 @get_next(%struct.krb5_krbhst_data* %88, i32** %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  store i64 0, i64* %4, align 8
  br label %138

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %67
  %96 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %97 = call i64 @krbhst_empty(%struct.krb5_krbhst_data* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %101 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @KD_FALLBACK, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %99
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %109 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %110 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %113 = call i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data* %112)
  %114 = call i64 @fallback_get_hosts(%struct.TYPE_8__* %107, %struct.krb5_krbhst_data* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %113)
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %4, align 8
  br label %138

119:                                              ; preds = %106
  %120 = load i32, i32* @KD_FALLBACK, align 4
  %121 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %122 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %126 = load i32**, i32*** %7, align 8
  %127 = call i64 @get_next(%struct.krb5_krbhst_data* %125, i32** %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i64 0, i64* %4, align 8
  br label %138

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %99, %95
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %134 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @_krb5_debug(%struct.TYPE_8__* %132, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %131, %129, %117, %92, %60, %51, %29
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i32 @plugin_get_hosts(%struct.TYPE_8__*, %struct.krb5_krbhst_data*, i32) #1

declare dso_local i64 @get_next(%struct.krb5_krbhst_data*, i32**) #1

declare dso_local i32 @config_get_hosts(%struct.TYPE_8__*, %struct.krb5_krbhst_data*, i8*) #1

declare dso_local i32 @_krb5_debug(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @srv_get_hosts(%struct.TYPE_8__*, %struct.krb5_krbhst_data*, i8*, i8*) #1

declare dso_local i64 @krbhst_empty(%struct.krb5_krbhst_data*) #1

declare dso_local i64 @fallback_get_hosts(%struct.TYPE_8__*, %struct.krb5_krbhst_data*, i8*, i32, i32) #1

declare dso_local i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
