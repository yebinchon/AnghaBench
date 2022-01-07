; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_nai_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_nai_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_nai_realm_data* }
%struct.hostapd_nai_realm_data = type { i8, i64* }
%struct.wpabuf = type { i32 }

@ANQP_NAI_REALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*, i32*, i64, i32, i32)* @anqp_add_nai_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_nai_realm(%struct.hostapd_data* %0, %struct.wpabuf* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hostapd_nai_realm_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = load i32, i32* @ANQP_NAI_REALM, align 4
  %28 = call i64 @anqp_add_override(%struct.hostapd_data* %25, %struct.wpabuf* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %150

31:                                               ; preds = %24, %21, %6
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %130

34:                                               ; preds = %31
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %38, align 8
  %40 = icmp ne %struct.hostapd_nai_realm_data* %39, null
  br i1 %40, label %41, label %130

41:                                               ; preds = %34
  %42 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %43 = load i32, i32* @ANQP_NAI_REALM, align 4
  %44 = call i32* @gas_anqp_add_element(%struct.wpabuf* %42, i32 %43)
  store i32* %44, i32** %13, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @wpabuf_put_le16(%struct.wpabuf* %45, i32 %50)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %123, %41
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %55 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %126

60:                                               ; preds = %52
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %65, i64 %67
  store %struct.hostapd_nai_realm_data* %68, %struct.hostapd_nai_realm_data** %18, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %70 = call i32* @wpabuf_put(%struct.wpabuf* %69, i32 2)
  store i32* %70, i32** %16, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %72 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %73 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 8
  %75 = call i32 @wpabuf_put_u8(%struct.wpabuf* %71, i8 signext %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %77 = call i32* @wpabuf_put(%struct.wpabuf* %76, i32 1)
  store i32* %77, i32** %17, align 8
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %103, %60
  %79 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %80 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %78
  %88 = load i32, i32* %15, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %92 = call i32 @wpabuf_put_u8(%struct.wpabuf* %91, i8 signext 59)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %95 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %96 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @wpabuf_put_str(%struct.wpabuf* %94, i64 %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %78

106:                                              ; preds = %78
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %108 = call i32* @wpabuf_put(%struct.wpabuf* %107, i32 0)
  %109 = load i32*, i32** %17, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = sub nsw i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = load i32*, i32** %17, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %118 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %119 = call i32 @anqp_add_nai_realm_eap(%struct.wpabuf* %117, %struct.hostapd_nai_realm_data* %118)
  %120 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %120, i32* %121)
  br label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %52

126:                                              ; preds = %52
  %127 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %127, i32* %128)
  br label %150

130:                                              ; preds = %34, %31
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %135 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %137, align 8
  %139 = icmp ne %struct.hostapd_nai_realm_data* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load i32*, i32** %9, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %145 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @hs20_add_nai_home_realm_matches(%struct.hostapd_data* %144, %struct.wpabuf* %145, i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %143, %140, %133, %130
  br label %150

150:                                              ; preds = %30, %149, %126
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i64) #1

declare dso_local i32 @anqp_add_nai_realm_eap(%struct.wpabuf*, %struct.hostapd_nai_realm_data*) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

declare dso_local i32 @hs20_add_nai_home_realm_matches(%struct.hostapd_data*, %struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
