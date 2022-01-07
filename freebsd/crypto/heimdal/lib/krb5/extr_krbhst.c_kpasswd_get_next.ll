; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_kpasswd_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_kpasswd_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.krb5_krbhst_data = type { i32, {}*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@KD_PLUGIN = common dso_local global i32 0, align 4
@locate_service_kpasswd = common dso_local global i32 0, align 4
@KD_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kpasswd_server\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Configuration exists for realm %s, wont go to DNS\00", align 1
@KRB5_KDC_UNREACH = common dso_local global i64 0, align 8
@KD_SRV_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"kpasswd\00", align 1
@KD_SRV_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"No kpasswd entries found for realm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)* @kpasswd_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kpasswd_get_next(%struct.TYPE_15__* %0, %struct.krb5_krbhst_data* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.krb5_krbhst_data*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  %9 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %10 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KD_PLUGIN, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %18 = load i32, i32* @locate_service_kpasswd, align 4
  %19 = call i32 @plugin_get_hosts(%struct.TYPE_15__* %16, %struct.krb5_krbhst_data* %17, i32 %18)
  %20 = load i32, i32* @KD_PLUGIN, align 4
  %21 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %22 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %27 = call i64 @get_next(%struct.krb5_krbhst_data* %25, %struct.TYPE_14__** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %157

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %33 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KD_CONFIG, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %41 = call i32 @config_get_hosts(%struct.TYPE_15__* %39, %struct.krb5_krbhst_data* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @KD_CONFIG, align 4
  %43 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %44 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %49 = call i64 @get_next(%struct.krb5_krbhst_data* %47, %struct.TYPE_14__** %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %157

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %55 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %63 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @_krb5_debug(%struct.TYPE_15__* %61, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  store i64 %66, i64* %4, align 8
  br label %157

67:                                               ; preds = %53
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %74 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @KD_SRV_UDP, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %82 = call i32 @srv_get_hosts(%struct.TYPE_15__* %80, %struct.krb5_krbhst_data* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @KD_SRV_UDP, align 4
  %84 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %85 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %89 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %90 = call i64 @get_next(%struct.krb5_krbhst_data* %88, %struct.TYPE_14__** %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  store i64 0, i64* %4, align 8
  br label %157

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %96 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @KD_SRV_TCP, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %104 = call i32 @srv_get_hosts(%struct.TYPE_15__* %102, %struct.krb5_krbhst_data* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @KD_SRV_TCP, align 4
  %106 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %107 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %111 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %112 = call i64 @get_next(%struct.krb5_krbhst_data* %110, %struct.TYPE_14__** %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  store i64 0, i64* %4, align 8
  br label %157

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %67
  %118 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %119 = call i64 @krbhst_empty(%struct.krb5_krbhst_data* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %117
  %122 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %123 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %125 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %128 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %130 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %129, i32 0, i32 1
  %131 = bitcast {}** %130 to i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)**
  store i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)* @admin_get_next, i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)** %131, align 8
  %132 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %133 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %132, i32 0, i32 1
  %134 = bitcast {}** %133 to i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)**
  %135 = load i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)*, i64 (%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**)** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %138 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %139 = call i64 %135(%struct.TYPE_15__* %136, %struct.krb5_krbhst_data* %137, %struct.TYPE_14__** %138)
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %121
  %143 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %144 = call i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data* %143)
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %121
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* %4, align 8
  br label %157

150:                                              ; preds = %117
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %153 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @_krb5_debug(%struct.TYPE_15__* %151, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  %156 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  store i64 %156, i64* %4, align 8
  br label %157

157:                                              ; preds = %150, %148, %114, %92, %60, %51, %29
  %158 = load i64, i64* %4, align 8
  ret i64 %158
}

declare dso_local i32 @plugin_get_hosts(%struct.TYPE_15__*, %struct.krb5_krbhst_data*, i32) #1

declare dso_local i64 @get_next(%struct.krb5_krbhst_data*, %struct.TYPE_14__**) #1

declare dso_local i32 @config_get_hosts(%struct.TYPE_15__*, %struct.krb5_krbhst_data*, i8*) #1

declare dso_local i32 @_krb5_debug(%struct.TYPE_15__*, i32, i8*, i32) #1

declare dso_local i32 @srv_get_hosts(%struct.TYPE_15__*, %struct.krb5_krbhst_data*, i8*, i8*) #1

declare dso_local i64 @krbhst_empty(%struct.krb5_krbhst_data*) #1

declare dso_local i64 @admin_get_next(%struct.TYPE_15__*, %struct.krb5_krbhst_data*, %struct.TYPE_14__**) #1

declare dso_local i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
