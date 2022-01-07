; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_krb524_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_krb524_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.krb5_krbhst_data = type { i32, i32, {}*, i32, i32 }

@KD_PLUGIN = common dso_local global i32 0, align 4
@locate_service_krb524 = common dso_local global i32 0, align 4
@KD_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"krb524_server\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Configuration exists for realm %s, wont go to DNS\00", align 1
@KRB5_KDC_UNREACH = common dso_local global i32 0, align 4
@KD_SRV_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"krb524\00", align 1
@KD_SRV_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"No kpasswd entries found for realm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)* @krb524_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb524_get_next(%struct.TYPE_9__* %0, %struct.krb5_krbhst_data* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.krb5_krbhst_data*, align 8
  %7 = alloca i32**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %9 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KD_PLUGIN, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %17 = load i32, i32* @locate_service_krb524, align 4
  %18 = call i32 @plugin_get_hosts(%struct.TYPE_9__* %15, %struct.krb5_krbhst_data* %16, i32 %17)
  %19 = load i32, i32* @KD_PLUGIN, align 4
  %20 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %21 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %25 = load i32**, i32*** %7, align 8
  %26 = call i64 @get_next(%struct.krb5_krbhst_data* %24, i32** %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %146

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %32 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @KD_CONFIG, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %40 = call i32 @config_get_hosts(%struct.TYPE_9__* %38, %struct.krb5_krbhst_data* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %42 = load i32**, i32*** %7, align 8
  %43 = call i64 @get_next(%struct.krb5_krbhst_data* %41, i32** %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %146

46:                                               ; preds = %37
  %47 = load i32, i32* @KD_CONFIG, align 4
  %48 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %49 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %30
  %53 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %54 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %62 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_krb5_debug(%struct.TYPE_9__* %60, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @KRB5_KDC_UNREACH, align 4
  store i32 %65, i32* %4, align 4
  br label %146

66:                                               ; preds = %52
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %66
  %72 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %73 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @KD_SRV_UDP, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %81 = call i32 @srv_get_hosts(%struct.TYPE_9__* %79, %struct.krb5_krbhst_data* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @KD_SRV_UDP, align 4
  %83 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %84 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %88 = load i32**, i32*** %7, align 8
  %89 = call i64 @get_next(%struct.krb5_krbhst_data* %87, i32** %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %146

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %95 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @KD_SRV_TCP, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %103 = call i32 @srv_get_hosts(%struct.TYPE_9__* %101, %struct.krb5_krbhst_data* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @KD_SRV_TCP, align 4
  %105 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %106 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %110 = load i32**, i32*** %7, align 8
  %111 = call i64 @get_next(%struct.krb5_krbhst_data* %109, i32** %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %146

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %66
  %117 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %118 = call i64 @krbhst_empty(%struct.krb5_krbhst_data* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %122 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %124 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %127 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %129 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %128, i32 0, i32 2
  %130 = bitcast {}** %129 to i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)**
  store i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)* @kdc_get_next, i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)** %130, align 8
  %131 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %132 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %131, i32 0, i32 2
  %133 = bitcast {}** %132 to i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)**
  %134 = load i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)*, i32 (%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**)** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %137 = load i32**, i32*** %7, align 8
  %138 = call i32 %134(%struct.TYPE_9__* %135, %struct.krb5_krbhst_data* %136, i32** %137)
  store i32 %138, i32* %4, align 4
  br label %146

139:                                              ; preds = %116
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %142 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @_krb5_debug(%struct.TYPE_9__* %140, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @KRB5_KDC_UNREACH, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %139, %120, %113, %91, %59, %45, %28
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @plugin_get_hosts(%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32) #1

declare dso_local i64 @get_next(%struct.krb5_krbhst_data*, i32**) #1

declare dso_local i32 @config_get_hosts(%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i8*) #1

declare dso_local i32 @_krb5_debug(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @srv_get_hosts(%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i8*, i8*) #1

declare dso_local i64 @krbhst_empty(%struct.krb5_krbhst_data*) #1

declare dso_local i32 @kdc_get_next(%struct.TYPE_9__*, %struct.krb5_krbhst_data*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
