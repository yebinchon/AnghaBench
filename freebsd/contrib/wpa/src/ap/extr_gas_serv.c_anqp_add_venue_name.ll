; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_venue_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_venue_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.hostapd_lang_string* }
%struct.hostapd_lang_string = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }

@ANQP_VENUE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*)* @anqp_add_venue_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_venue_name(%struct.hostapd_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_lang_string*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = load i32, i32* @ANQP_VENUE_NAME, align 4
  %11 = call i64 @anqp_add_override(%struct.hostapd_data* %8, %struct.wpabuf* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %18, align 8
  %20 = icmp ne %struct.hostapd_lang_string* %19, null
  br i1 %20, label %21, label %82

21:                                               ; preds = %14
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load i32, i32* @ANQP_VENUE_NAME, align 4
  %24 = call i32* @gas_anqp_add_element(%struct.wpabuf* %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %25, i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %32, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %75, %21
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %40, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %39
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %49 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hostapd_lang_string, %struct.hostapd_lang_string* %52, i64 %54
  store %struct.hostapd_lang_string* %55, %struct.hostapd_lang_string** %7, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_lang_string, %struct.hostapd_lang_string* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 3, %59
  %61 = call i32 @wpabuf_put_u8(%struct.wpabuf* %56, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %7, align 8
  %64 = getelementptr inbounds %struct.hostapd_lang_string, %struct.hostapd_lang_string* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wpabuf_put_data(%struct.wpabuf* %62, i32 %65, i32 3)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %68 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %7, align 8
  %69 = getelementptr inbounds %struct.hostapd_lang_string, %struct.hostapd_lang_string* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hostapd_lang_string*, %struct.hostapd_lang_string** %7, align 8
  %72 = getelementptr inbounds %struct.hostapd_lang_string, %struct.hostapd_lang_string* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wpabuf_put_data(%struct.wpabuf* %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %47
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %79, i32* %80)
  br label %82

82:                                               ; preds = %13, %78, %14
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
